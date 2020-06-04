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
    public partial class MainPage : System.Web.UI.Page
    {
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
