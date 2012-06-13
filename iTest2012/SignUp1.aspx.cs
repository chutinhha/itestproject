using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace iTest2012
{
    public partial class SignUp1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {

            MyiTestDataDataContext db = new MyiTestDataDataContext();
            iUser ius = new iUser();

            if (chk_DongY.Checked == true)
            {
                if (txtUsername.Text.Length > 0 && txtUsername.Text.Length <= 12
                    && txtPass.Text.Length > 0 && txtPass.Text.Length <= 20
                    && txtReEnterPass.Text.Length > 0 && txtEmail.Text.Length > 0 && txtAnswer.Text.Length > 0
                    && dropCauHoiBiMat.SelectedValue != "-1")
                {
                    int user = db.st_CheckAvailableUser(txtUsername.Text.Trim());
                    int email = db.st_CheckAvailableEmail(txtEmail.Text.Trim());

                    if (user == 0)
                    {
                        labUser.Text = "";
                        labRePass.Text = "";
                        labEmail.Text = "";

                        labUser.Text = "Tên đăng nhập đã tồn tại!";
                        txtUsername.Text = string.Empty;

                    }
                    else if (email == 0)
                    {
                        labUser.Text = "";
                        labRePass.Text = "";
                        labEmail.Text = "";

                        labEmail.Text = "Email đã được sử dụng!";
                        txtEmail.Text = string.Empty;
                        //btnSignUp.Enabled = false;
                    }
                    else if (txtReEnterPass.Text.Trim() != txtPass.Text.Trim())
                    {
                        labUser.Text = "";
                        labRePass.Text = "";
                        labEmail.Text = "";

                        labRePass.Text = "Mật khẩu nhập lần 2 không trùng, vui lòng nhập lại.";
                        txtReEnterPass.Text = string.Empty;
                    }                    
                    else
                    {

                        ius.iUserName = txtUsername.Text.ToString();
                        ius.iPass = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPass.Text.Trim(), "MD5");
                        ius.iEmailUser = txtEmail.Text.ToString();
                        ius.iSID = db.st_GetSID(dropCauHoiBiMat.SelectedItem.Text);
                        ius.iSAns = txtAnswer.Text;
                        ius.iCreatedDate = DateTime.Now;

                        db.iUsers.InsertOnSubmit(ius);
                        db.SubmitChanges();

                        string strScript = "<script>";
                        strScript += "alert('Chúc mừng bạn đã tạo Tài khoản thành công !');";
                        strScript += "window.location='Login.aspx';";
                        strScript += "</script>";
                        Page.RegisterClientScriptBlock("strScript", strScript);
                    }
                }
                else
                {
                    Response.Write("<script>alert('Vui lòng điền đầy đủ thông tin. ')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Bạn phải đánh dấu vào ô để chấp nhận các điều khoản của e-iTest')</script>");
            }

        }

        protected void btnReEnter_Click(object sender, EventArgs e)
        {
            txtAnswer.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPass.Text = string.Empty;
            txtReEnterPass.Text = string.Empty;
            txtUsername.Text = string.Empty;
            dropCauHoiBiMat.SelectedValue = "-1";
            txtUsername.Focus();
        }

    }

}