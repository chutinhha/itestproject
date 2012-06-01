using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iTest2012
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        MyiTestDataDataContext data = new MyiTestDataDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            int test = (int)Session["idlogin"];
            string a = Request.ServerVariables["URL"];
            if (test == -1 && a.IndexOf("LogIn.aspx") < 0 && a.IndexOf("SignUp.aspx") < 0 && a.IndexOf("About.aspx") < 0)
            {
                Response.Redirect("LogIn.aspx");
                return;
            }

            if (test == -1)
            {
                Panel_Admin.Visible = false;
                Panel_UnLogin.Visible = true;
                Panel_UserLogin.Visible = false;
                Panel_HadLogin.Visible = false;

            }
            else
            {
                int iduser = (int)(Session["idlogin"]);
                st_GetUserInfoResult user = data.st_GetUserInfo(iduser).FirstOrDefault();
                Panel_HadLogin.Visible = true;
                Panel_UserLogin.Visible = true;
                Panel_UnLogin.Visible = false;
                if (user != null)
                {
                    lbUserName.Text = user.iUserName;
                }

                int ad = data.st_CheckPermission(test, "Admin");
                if (ad == 0)
                {
                    Panel_Admin.Visible = false;
                }
                else
                {
                    Panel_Admin.Visible = true;
                }
            }
        }
    }
}