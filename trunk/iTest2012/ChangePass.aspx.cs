using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace iTest2012
{
    public partial class ChangePass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            MyiTestDataDataContext db = new MyiTestDataDataContext();
            int iduser = (int)(Session["idlogin"]);
            st_GetUserInfoResult user = db.st_GetUserInfo(iduser).FirstOrDefault();
            if (user != null)
            {
                txtUsername.Text = user.iUserName;
            }


        }
        protected void btnChangePass_Click(object sender, EventArgs e)
        {
            if (txtNewPass.Text.Trim() != txtReEnterNewPass.Text.Trim())
            {
                Response.Write("<script>alert('Xác nhận Mật khẩu mới không chính xác!');</script>");
                txtOldPass.Focus();
            }
            else
                if (txtNewPass.Text == "")
                {
                    Response.Write("<script>alert('Chưa nhập Mật khẩu mới!');</script>");
                    txtOldPass.Focus();
                }
                else
                {
                    MyiTestDataDataContext db = new MyiTestDataDataContext();
                    int iduser = Convert.ToInt32(Session["idlogin"]);
                    int result = db.st_ChangePassword(iduser, FormsAuthentication.HashPasswordForStoringInConfigFile(txtOldPass.Text.Trim(), "MD5"), FormsAuthentication.HashPasswordForStoringInConfigFile(txtNewPass.Text.Trim(), "MD5"));
                    if (result == -1)
                    {
                        Response.Write("<script>alert('Mật khẩu cũ không đúng, Vui lòng nhập lại !');</script>");
                        txtOldPass.Focus();
                        return;
                    }
                    if (result == 0)
                    {
                        Response.Write("<script>alert('Mật khẩu không được thay đổi, Vui lòng thử lại !');</script>");
                        txtOldPass.Focus();
                        return;
                    }
                    else
                    {
                        Response.Write("<script>alert('Đổi Mật khẩu thành công !');</script>");
                        txtOldPass.Text = string.Empty;
                        txtNewPass.Text = string.Empty;
                        txtReEnterNewPass.Text = string.Empty;
                        return;
                    }
                }

        }
    }
}