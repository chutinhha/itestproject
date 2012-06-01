using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace iTest2012
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUsername.Focus();
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            MyiTestDataDataContext db = new MyiTestDataDataContext();
            int id = db.st_Login(txtUsername.Text.Trim(), FormsAuthentication.HashPasswordForStoringInConfigFile(txtPass.Text.Trim(), "MD5"));
            if (id > 0)
            {
                Session["idlogin"] = id;
                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Write("<script>alert('Login unsuccessful ! Please try again');</script>");
            }
        }
    }
}