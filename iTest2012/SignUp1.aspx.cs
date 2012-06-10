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
            //iSercurityQuestion isq = new iSercurityQuestion();
           
            if (chk_DongY.Checked == true)
            {
                if (txtUsername.Text.Length > 0 && txtUsername.Text.Length < 12
                    && txtPass.Text.Length > 0 && txtPass.Text.Length < 20
                    && txtReEnterPass.Text.Length > 0 && txtEmail.Text.Length > 0)
                {
                    int user = db.st_CheckAvailableUser(txtUsername.Text.Trim());
                    int email = db.st_CheckAvailableEmail(txtEmail.Text.Trim());

                    if (user == 0)
                    {
                        labUser.Text = "";
                        labRePass.Text = "";
                        labEmail.Text = "";

                        labUser.Text = "This name is exist ! Please enter other name";
                        txtUsername.Text = string.Empty;

                    }
                    else if (email == 0)
                    {
                        labUser.Text = "";
                        labRePass.Text = "";
                        labEmail.Text = "";

                        labEmail.Text = "This email is exist ! Please enter other email address";
                        txtEmail.Text = string.Empty;
                        //btnSignUp.Enabled = false;
                    }
                    else if (txtReEnterPass.Text.Trim() != txtPass.Text.Trim())
                    {
                        labUser.Text = "";
                        labRePass.Text = "";
                        labEmail.Text = "";

                        labRePass.Text = "Tài khoản bạn vừa đăng nhập không đúng, vui lòng nhập lại.";
                        txtReEnterPass.Text = string.Empty;
                    }
                    else
                    {

                        ius.iUserName = txtUsername.Text.ToString();
                        ius.iPass = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPass.Text.Trim(), "MD5");
                        ius.iEmailUser = txtEmail.Text.ToString();
                       // ius.iSQuestionAnswer = txtAnswer.Text;
                        //isq.iSQuestionContent = dropCauHoiBiMat.Text;

                        db.iUsers.InsertOnSubmit(ius);
                        //db.iSercurityQuestions.InsertOnSubmit(isq);
                        db.SubmitChanges();

                        string strScript = "<script>";
                        strScript += "alert('Created New Account');";
                        strScript += "window.location='Login.aspx';";
                        strScript += "</script>";
                        Page.RegisterClientScriptBlock("strScript", strScript);

                        Response.Redirect("~/itestproject/iTest2012/LogIn.aspx");

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

        protected void dropCauHoiBiMat_SelectedIndexChanged(object sender, EventArgs e)
        {/*
            MyiTestDataDataContext data = new MyiTestDataDataContext();
            DropDownList dd = (DropDownList)sender;
            if (dd.SelectedValue == "-1")
                return;
            int value = int.Parse(dd.SelectedValue);
            var currentChapter = (from c in data.iSercurityQuestions
                                  where c.iSQuestionID == value
                                  select c).Single();
            TextBox1.Text = currentChapter.iSQuestionContent;*/
        }
    }
}