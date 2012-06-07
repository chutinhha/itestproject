using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iTest2012
{
    public partial class TrangCaNhan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MyiTestDataDataContext db = new MyiTestDataDataContext();
            iUser ius = new iUser();
           txtUsername.Text= ius.iUserName;
           txtPass.Text = ius.iPass;
           txtEmail.Text = ius.iEmailUser;
        }
    }
}