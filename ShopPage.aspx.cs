using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Security.AccessControl;

namespace ColdSwordShop
{
    public partial class ShopPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        string cmdstr;
        SqlCommand command;
        protected void Page_Load(object sender, EventArgs e)//Loaded as the first thing everytime
        {
            if (!IsPostBack)
            {
                DBGetCatagory();
                if (string.IsNullOrEmpty(InformationClass.Username) == true)
                {
                    UserLoginName.InnerText = "Login";

                }
                else
                {
                    UserLoginName.InnerText = InformationClass.Username;
                }
            }

            GetItems(">0", CatagoryList.Text);
        }
        protected void ShearchButton(object sender, EventArgs e)//Find items when the button is pressed
        {
            string temp = CostList.Text;
            string priceRange = "*";
            switch (temp)
            {
                case "ALL":
                    priceRange = ">0";
                    break;
                case "0-500":
                    priceRange = "< 500";
                    break;
                case "0-1000":
                    priceRange = "< 1000";
                    break;
                case "1000+":
                    priceRange = "> 1000";
                    break;
            }
            GetItems(priceRange, CatagoryList.Text);
        }
        private void CreateShopItem(string ItemName, string ItemPrice, string ItemDescription, int number)//Creates elements on the a main div with the price range and catagory.
        {
            HtmlGenericControl Container = new HtmlGenericControl("DIV");
            Container.ID = number.ToString();
            Container.Attributes["Class"] = "borderClass";

            HtmlGenericControl NameDiv = new HtmlGenericControl("DIV");
            NameDiv.ID = "name" + number.ToString();

            HtmlGenericControl DescriptionDiv = new HtmlGenericControl("DIV");
            NameDiv.ID = "DescriptionDiv" + number.ToString();

            HtmlGenericControl PriceDiv = new HtmlGenericControl("DIV");
            NameDiv.ID = "PriceDiv" + number.ToString();

            Label NameLabel = new Label();
            NameLabel.Text = " Name: " + ItemName;
            NameDiv.Controls.Add(NameLabel);

            Label DescriptionLabel = new Label();
            DescriptionLabel.Text = " Description: " + ItemDescription;
            DescriptionDiv.Controls.Add(DescriptionLabel);

            Label PriceLabel = new Label();
            PriceLabel.Text = " Price: " + ItemPrice + "Kr.";
            PriceDiv.Controls.Add(PriceLabel);

            Button button = new Button();
            button.ID = number + "_Button";
            button.Text = "Get this Item";
            button.Attributes.Add("OnClick", "AddToCart");
            button.Click += AddToCart;


            Container.Controls.Add(NameDiv);
            Container.Controls.Add(DescriptionDiv);
            Container.Controls.Add(PriceDiv);
            Container.Controls.Add(button);
            this.ShopMain.Controls.Add(Container);
        }
        private void AddToCart(object sender, EventArgs e)
        {
            string temp = ((Button)sender).Parent.ID;//ID of the div (ItemID nr.)

            cmdstr = "select OrdreNR from CheckOut where PersonID = " + InformationClass.LoginId;
            command = new SqlCommand(cmdstr, conn);
            DBConnetorOpen();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Depth == 0)
            {
                DBConnetorClose();
                reader.Close();
                cmdstr = string.Format("insert into CheckOut values ({0})", InformationClass.LoginId);
                command = new SqlCommand(cmdstr, conn);
                DBRunCommand();
                // Add the item selected to the Basket
                cmdstr = string.Format("insert into Basket (OrdreID, ItemID) values((select OrdreNR from CheckOut where PersonID = {1}), {0})", temp, InformationClass.LoginId);
                command = new SqlCommand(cmdstr, conn);
                DBRunCommand();

            }
            else
            {
                DBConnetorClose();
                reader.Close();
                // Add the item selected to the Basket
                cmdstr = string.Format("insert into Basket (OrdreID, ItemID) values((select OrdreNR from CheckOut where PersonID = {1}), {0})", temp, InformationClass.LoginId);
                command = new SqlCommand(cmdstr, conn);
                DBRunCommand();
            }


            /* 
            insert into CheckOut 
            values (1)
            insert into Basket (OrdreID)
            select OrdreNR from CheckOut where PersonID = 1;

             go;
             update basket
             set ItemID = 1
             where OrdreID = 1*/

            //
        }
        private void DBGetCatagory()//Gets all catagory names and adds them to a dropdown list.
        {
            DBConnetorOpen();

            cmdstr = "select CatagoryName from ItemCatagory";
            command = new SqlCommand(cmdstr, conn);
            SqlDataReader reader = command.ExecuteReader();
            if (reader != null)
            {
                CatagoryList.Items.Clear();
                CatagoryList.Items.Add("Catagory's");
                while (reader.Read())
                {
                    if (reader.GetString(0) != CatagoryList.Items.ToString())
                    {
                        CatagoryList.Items.Add(reader.GetString(0));
                    }
                }
                reader.Close();
            }
            DBConnetorClose();
        }
        private void GetItems(string price, string catagory) //finds every Item in the Database and passes the creation of the elements on.
        {
            DBConnetorOpen();
            if (CatagoryList.Text == "Catagory's")
            {
                cmdstr = "select ItemID, ItemName, ItemPrice, ItemDescription from Inventory where ItemPrice " + price + " ;";
            }
            else
            {
                cmdstr = "select ItemID, ItemName, ItemPrice, ItemDescription from Inventory where Catagory = (select CatagoryID from ItemCatagory where CatagoryName = '" + catagory + "') and ItemPrice " + price + " ;";
            }
            command = new SqlCommand(cmdstr, conn);
            try
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader != null)
                {
                    while (reader.Read())
                    {
                        int ID = Convert.ToInt32(reader["ItemID"]);
                        string name = Convert.ToString(reader["ItemName"]);
                        string Price = Convert.ToString(reader["ItemPrice"]);
                        string Description = Convert.ToString(reader["ItemDescription"]);
                        CreateShopItem(name, Price, Description, ID);
                    }
                }
                reader.Close();
            }
            catch (Exception)
            {

                throw;
            }
            DBConnetorClose();
        }
        private void DBConnetorOpen()//opens a connection to the database.
        {
            conn.ConnectionString = InformationClass.Connection;
            conn.Open();

            // use the connection after this.
        }
        private void DBRunCommand()
        {
            try
            {
                DBConnetorOpen();
                command.ExecuteNonQuery();
                DBConnetorClose();
            }
            catch (Exception)
            {

                throw;
            }
        }
        private void DBConnetorClose()//closes the connection to the database.
        {
            conn.Close();
            conn.Dispose();
        }
        private void Logout() //Reset's all the settings of the information class.
        {
            InformationClass.Username = "";
            InformationClass.LoginId = 0;
            InformationClass.IsAdmin = false;
            InformationClass.Delete = false;
            InformationClass.EditThis = false;
        }
    }
}