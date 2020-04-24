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

        }
        protected void NewUserButton(object sender, EventArgs e)
        {

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