using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iTest2012
{
    public partial class DeleteUser : System.Web.UI.Page
    {
        MyiTestDataDataContext data = new MyiTestDataDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            int ad, id;
            id = (int)Session["idlogin"];
            ad = data.st_CheckPermission(id, "Admin");
            if (ad == 0)
            {
                Response.Redirect("PermissionErroPage.aspx");
                return;
            }
        }
        protected void btnDel_Click(object sender, EventArgs e)
        {
            int result = data.st_DelUser(ddlUserName.Text.Trim());
            if (result == 1)
                Response.Write("<script>alert('Deleted Successful !');</script>");
            else
                Response.Write("<script>alert('Can't Delete Now !');</script>");
            ddlUserName.DataBind();
        }
    }
}