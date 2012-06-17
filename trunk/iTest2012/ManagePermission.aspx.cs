using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iTest2012
{
    public partial class ManagePermission : System.Web.UI.Page
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
        protected void btnAdd_Click(object sender, EventArgs e)
        {

            int result;
            result = data.st_CheckAvailablePermission(ddlUsername.Text.Trim(), ddlFunction.Text.Trim());
            if (result != 1)
            {
                Response.Write("<script>alert('Set unsuccessful ! This user had that permission');</script>");
            }
            else
            {
                iUserPermission func = new iUserPermission();
                func.iUserID = data.st_LoadUserID(ddlUsername.Text.Trim());
                func.iFuncID = data.st_LoadFuncID(ddlFunction.SelectedValue);
                func.iPermission = 1;

                data.iUserPermissions.InsertOnSubmit(func);
                data.SubmitChanges();

                Response.Write("<script>alert('Set Successful');</script>");
            }

        }
        protected void btnRemove_Click(object sender, EventArgs e)
        {
            int result;
            result = data.st_CheckAvailablePermission(ddlUsername.Text.Trim(), ddlFunction.Text.Trim());
            if (result == 1)
            {
                Response.Write("<script>alert('Remove unsuccessful ! This user had not that permission');</script>");
                return;
            }
            else
            {
                int del;
                del = data.st_DelUserFunction(ddlUsername.Text.Trim(), ddlFunction.Text.Trim());
                if (del == 1)
                {
                    Response.Write("<script>alert('Remove Successful !');</script>");
                    return;
                }
                else
                {
                    Response.Write("<script>alert('Can't Remove !);</script>");
                    return;
                }
            }
        }
        protected void btnDel_Click(object sender, EventArgs e)
        {
            int result = data.st_DelUser(ddlUserName02.Text.Trim());
            if (result == 1)
                Response.Write("<script>alert('Deleted Successful !');</script>");
            else
                Response.Write("<script>alert('Can't Delete Now !');</script>");
            ddlUserName02.DataBind();
        }
    }
}