using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iTest2012
{
    public partial class AddNewChap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAgain_Click(object sender, EventArgs e)
        {
            
            txtIndex.Text = string.Empty;
            txtName.Text = string.Empty;
            txtIndex.Focus();
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            MyiTestDataDataContext db = new MyiTestDataDataContext();
            iChapter ch = new iChapter();

            if (ddlSubject.SelectedValue != "-1" && txtIndex.Text.Trim().Length > 0 && txtName.Text.Trim().Length > 0)
            {
                int subid = db.st_LoadSubjectID(ddlSubject.Text.Trim());
                int chapindex = db.st_CheckChapIndex(txtIndex.Text.Trim(), subid);
                int chapname = db.st_CheckChapName(txtName.Text.Trim(), subid);

                if (chapindex == 0)
                {
                    lbIndex.Text = "";
                    lbName.Text = "";


                    lbIndex.Text = "Mã index đã tồn tại !";
                    txtIndex.Text = string.Empty;
                    //btnSignUp.Enabled = false;
                }
                else if (chapname == 0)
                {
                    lbIndex.Text = "";
                    lbName.Text = "";

                    lbName.Text = "Tên chương đã tồn tại !";
                    txtName.Text = string.Empty;
                    //btnSignUp.Enabled = false;
                }
                else
                {
                    ch.iSubjectID = subid;
                    ch.iChapterNum = txtIndex.Text.ToString();
                    ch.iChapterName = txtName.Text.ToString();

                    db.iChapters.InsertOnSubmit(ch);
                    db.SubmitChanges();

                    Response.Write("<script>alert('Thêm chương mới thành công !')</script>");
                    txtIndex.Text = string.Empty;
                    txtName.Text = string.Empty;
                    lbIndex.Text = "";
                    lbName.Text = "";
                    txtIndex.Focus();
                }
            }
            else if (ddlSubject.SelectedValue == "-1" | txtIndex.Text.Trim().Length <= 0 | txtName.Text.Trim().Length <= 0)
            {
                Response.Write("<script>alert('Vui lòng nhập đầy đủ thông tin')</script>");
            }

        }
    }
}