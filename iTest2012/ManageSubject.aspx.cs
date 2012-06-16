using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iTest2012
{
    public partial class ManageSubject : System.Web.UI.Page
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
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
        protected void btnView_Click(object sender, EventArgs e)
        {
            Panel_View.Visible = true;

            Panel_Add.Visible = false;
            GridView1.DataBind();
        }

        protected void btnDel_Click(object sender, EventArgs e)
        {

            Panel_View.Visible = false;
            Panel_Add.Visible = false;
        }


        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Panel_Add.Visible = true;

            Panel_View.Visible = false;
        }
        protected void btnAddNewSub_Click(object sender, EventArgs e)
        {
            iSubject sj = new iSubject();
            int resultName;
            //int resultID;

            if (txtSubName.Text.Trim().Length > 0 /*&& txtSubID.Text.Trim().Length > 0*/)
            {
                //if (txtSubID.Text.Trim().Length == 7)
                {
                    //resultID = data.st_CheckAvailableSubID(Convert.ToInt32(txtSubID.Text.Trim()));
                    resultName = data.st_CheckAvailableSubName(txtSubName.Text.Trim());

                    //if (resultID != 1 && resultName != 1)
                    //    lbError.Text = "This Subject Had Exits";
                    //else 
                    if (resultName != 1)
                    {
                        lbError.Text = "Chủ đề đã tồn tại !";
                    }
                    //else if (resultID != 1)
                    //    lbError.Text = "This Subject ID Had Exits";
                    else if (resultName == 1 /*&& resultID == 1*/)
                    {
                        //sj.iSubjectID = Convert.ToInt32(txtSubID.Text.Trim());
                        sj.iSubjectName = txtSubName.Text.Trim();
                        data.iSubjects.InsertOnSubmit(sj);
                        data.SubmitChanges();
                        Response.Write("<script>alert('Thêm chủ đề thành công');</script>");
                    }
                }
                //else
                //    lbError.Text = "Incorrect Subject ID, Correct ID like [0-9][0-9][0-9][0-9][0-9][0-9][0-9]";

            }
            else
                lbError.Text = "Vui lòng nhập tên chủ đề !";
        }
    }
}