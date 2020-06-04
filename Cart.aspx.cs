using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ColdSwordShop
{
    public partial class Cart : System.Web.UI.Page
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
    }
}