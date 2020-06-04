using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ColdSwordShop
{
    public partial class CreateUser : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand command;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(InformationClass.Username) == true)
            {
                UserLoginName.InnerText = "Login";
            }
            else
            {
                UserLoginName.InnerText = InformationClass.Username;
            }
        }
        protected void NewUserButton(object sender, EventArgs e)
        {

            string tempUser = CreateUserName.Value;
            string tempPass = CreatePassword.Value;
            try
            {
                //Creates the user with all the propaties.
                string cmdstr = "insert into Login (Username, Pass) values ('" + tempUser + "','" + tempPass + "' )";
                command = new SqlCommand(cmdstr, conn);
                DBRunMe();
                cmdstr = string.Format("insert into PersonInformation (PIID, Fname, Lname, Email, Phone, PostalCode, City, Street, StreetNR)" +
                    "values((select ID from Login where Username='{0}' and pass='{1}'), '{2}', '{3}','{4}',{5},'{6}','{7}','{8}',{9});", tempUser, tempPass, CreateFName.Value, CreateLName.Value
                    , CreateEmail.Value, CreatePhone.Value, CreatePostalCode.Value, CreateCity.Value, CreateStreet.Value, CreateStreetNR.Value);
                command = new SqlCommand(cmdstr, conn);
                DBRunMe();

            }
            catch (Exception)
            {

                throw;
            }
            InformationClass.Username = tempUser;
            Response.Redirect("Home.aspx");
        }
        private void DBRunMe()
        {
            DBConnetorOpen();//opens the database connection.
            command.ExecuteNonQuery();
            DBConnetorClose();//Closes the database connection.
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