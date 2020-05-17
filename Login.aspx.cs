using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Xml;

namespace ColdSwordShop
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        string cmdstr;
        SqlCommand command;
        protected void Page_Load(object sender, EventArgs e)
        {
            //DBConnetorOpen();
            //cmdstr = "Select * from Login";
            //command = new SqlCommand(cmdstr, conn);
            //SqlDataReader reader = command.ExecuteReader();
            //while (reader.Read())
            //{
            //    ChangeState((IDataRecord)reader);
            //}
            //DBConnetorClose();
        }
        protected void Clicked(object sender, EventArgs e)//Trikker on the Onclicked from Html.
        {
            DBConnetorOpen();//open the connection.
            //Gets the desired infomation from the database.
            cmdstr = "Select ID from Login where Username = '" + username.Value + "' and Pass = '" + password.Value + "'";
            command = new SqlCommand(cmdstr, conn);
            try
            {
                //convert the output to an int.
                InformationClass.LoginId = (int)command.ExecuteScalar();
            }
            catch (Exception)
            {
                //sets the id number to 0 if there is no user that can be found.
                InformationClass.LoginId = 0;
            }
            if (InformationClass.LoginId > 0)//Sends the user to the diffrent page if they exists in the database.
            {
                //funder ud af om brugen der er loget ind er en admin eller ej.
                cmdstr = "select Administrator from login where ID = " + InformationClass.LoginId;
                command = new SqlCommand(cmdstr, conn);
                SqlDataReader reader = command.ExecuteReader();
                //så længe der er noget i reader en.
                while (reader.Read())
                {
                    ChangeState((IDataRecord)reader);
                }
                try
                {
                    if (reader["Administrator"] as int? == 1)
                    {
                        InformationClass.IsAdmin = true;
                    }
                    else
                    {
                        InformationClass.IsAdmin = false;
                    }
                }
                //catch bruges til at fange de fejl der måtte opstå når jeg kalder en database, 
                //og den finder noget som ikke var for ventet.
                catch (Exception)
                {
                }
                reader.Close();//close the reader.
                DBConnetorClose();//close the connection.
                Response.Redirect("Home.aspx");
            }
            else
            {
                this.errorfield.Attributes.Add("style", "visibility: visible");
                // user doesn't exists.
            }
            DBConnetorClose();//close the connection.
        }
        protected void CreateUserButton(object sender, EventArgs e)
        {
            Response.Redirect("CreateUser.aspx");
        }
        private void ChangeState(IDataRecord record)
        {
            string temp = record[0].ToString();
            if (temp == "1")
            {
                InformationClass.IsAdmin = true;
            }
        }
        private void DBConnetorOpen()//opens a connection to the database.
        {
            conn.ConnectionString = InformationClass.Connection;
            conn.Open();

            // use the connection here
        }
        private void DBConnetorClose()//closes the connection to the database.
        {
            conn.Close();
            conn.Dispose();
        }
    }
}