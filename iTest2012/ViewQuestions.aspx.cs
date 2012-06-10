using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;
using System.Data.SqlClient;

namespace iTest2012
{
    public partial class ViewQuestions : System.Web.UI.Page
    {
        MyiTestDataDataContext data = new MyiTestDataDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            int result, ad, id;
            id = (int)Session["idlogin"];
            ad = data.st_CheckPermission(id, "Admin");
            result = data.st_CheckPermission(id, "View Quest");
            if (ad == 0)
            {
                if (result == 0)
                {
                    Response.Redirect("PermissionErroPage.aspx");
                    return;
                }
                return;
            }
            panelView.Visible = false;
        }

        protected void ddlChooseSub_SelectedIndexChanged(object sender, EventArgs e)
        {
            //------ refresh all data in controls: ddlChapNum and TextBox1 
            while (ddlChapIndex.Items.Count >= 2)
            {
                ddlChapIndex.Items.RemoveAt(1); //index 0 cant remove because it's title of Dropdownlist
            }
            TextBox1.Text = "";
            //----- select sub index when user choice -----------------------------------------------------------
            MyiTestDataDataContext db = new MyiTestDataDataContext();
            int subid = db.st_LoadSubjectID(ddlChooseSub.Text.Trim());
            //----------------------------------------------------------------

            var query = from c in data.iChapters
                        where c.iSubjectID == subid
                        select new { c.iChapID, c.iChapterName, c.iChapterNum };
            ddlChapIndex.DataSource = query;
            ddlChapIndex.DataTextField = "iChapterNum";
            ddlChapIndex.DataValueField = "iChapID";
            ddlChapIndex.DataBind();

        }

        protected void ddlChapIndex_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList dd = (DropDownList)sender;
            if (dd.SelectedValue == "-1")
                return;
            int value = int.Parse(dd.SelectedValue);
            var currentChapter = (from c in data.iChapters
                                  where c.iChapID == value
                                  select c).Single();
            TextBox1.Text = currentChapter.iChapterName;
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            if (ddlLevel.Text.Trim() != "All" && ddlLevel.Text.Trim() != "All" && TextBox1.Text.Trim() != "All")// chạy mỗi cái nỳ
            {
                lbGridLoad.Text = "No Result !";
                int subid = data.st_LoadSubjectID(ddlChooseSub.Text.Trim());
                int chapid = data.st_LoadChapID(TextBox1.Text.Trim(), subid);
                GridQuestion.DataSource = data.st_SelectQuest(subid, ddlLevel.Text.Trim(), chapid);
                GridQuestion.DataBind();
                panelView.Visible = true;
                if (GridQuestion.Rows.Count == 0)
                { lbGridLoad.Text = "No Result !";
                panelView.Visible = false;
                }
                else lbGridLoad.Text = string.Empty;
            }
            
            /*   if (ddlChooseSub.Text.Trim() != "All" && ddlLevel.Text.Trim() != "All" && ddlChapIndex.Text.Trim()=="All")//không chạy
              {
              
                  int subid = data.st_LoadSubjectID(ddlChooseSub.Text.Trim());
                  GridQuestion.DataSource = data.st_SelectAllChapter(subid, ddlLevel.Text.Trim());
                  GridQuestion.DataBind();
                  if (GridQuestion.Rows.Count == 0)
                  { lbGridLoad.Text = "No Result !"; }
                  else lbGridLoad.Text = string.Empty;
              }
               if (ddlChooseSub.Text.Trim() != "All" && ddlLevel.Text.Trim() == "All" && ddlChapIndex.Text.Trim() == "All") //không chạy
              {
              
                  int subid = data.st_LoadSubjectID(ddlChooseSub.Text.Trim());
                  GridQuestion.DataSource = data.st_SelectAllQuest(subid);
                  GridQuestion.DataBind();
                  if (GridQuestion.Rows.Count == 0)
                  { lbGridLoad.Text = "No Result !"; }
                  else lbGridLoad.Text = string.Empty;
              }
               if (ddlChooseSub.Text.Trim() == "All" && ddlLevel.Text.Trim() == "All" && ddlChapIndex.Text.Trim() == "All")//không chạy
              {
              
                  GridQuestion.DataSource = data.st_ViewQuestOfAllSub();
                  GridQuestion.DataBind();
                  if (GridQuestion.Rows.Count == 0)
                  { lbGridLoad.Text = "No Result !"; }
                  else lbGridLoad.Text = string.Empty;
              }*/
        }
        protected void btnViewAll_Click(object sender, EventArgs e)
        {
            lbGridLoad.Text = "No Result !";
            GridQuestion.DataSource = data.st_ViewQuestOfAllSub();
            GridQuestion.DataBind();
            panelView.Visible = true;
            if (GridQuestion.Rows.Count == 0)
            { lbGridLoad.Text = "No Result !";
            panelView.Visible = false;
            }
            else lbGridLoad.Text = string.Empty;
        }
        private void DeleteMultipleRecords(StringCollection idCollection)
        {
            string IDs = "";
            int qid; int kq;
            foreach (string id in idCollection)
            {
                //Cắt chuỗi 1,2, --> 1,2
                IDs += id.ToString() + ",";
            }

            try
            {
                string t = IDs.Substring(0, IDs.LastIndexOf(","));
                qid = data.st_LoadQuestID(t);
                kq = data.st_DelQuest(qid);

            }
            catch (SqlException ex)
            {
                string errorMsg = "Error in Deletion";
                errorMsg += ex.Message;
                throw new Exception(errorMsg);
            }

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            //Lưu Mã của dòng muốn xóa 
            StringCollection idCollection = new StringCollection();
            string strID = string.Empty;

            //Loop through GridView rows to find checked rows 
            for (int i = 0; i < GridQuestion.Rows.Count; i++)
            {
                CheckBox chkDelete = (CheckBox)GridQuestion.Rows[i].Cells[0].FindControl("CheckBox1");
                if (chkDelete != null)
                {
                    if (chkDelete.Checked)
                    {
                        strID = GridQuestion.Rows[i].Cells[1].Text;
                        idCollection.Add(strID);
                    }
                }
            }
            if (idCollection.Count > 0)
            {
                //Gọi hàm Xóa 
                DeleteMultipleRecords(idCollection);

                //Refresh GridView
                GridQuestion.DataBind();
                Response.Write("<script>alert('Deleted Successful !');</script>");
            }
            else
            {
                Response.Write("<script>alert('Please check row(s) !');</script>");
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            /*CheckBox CheckBox1 = (CheckBox)sender;
        
            GridViewRow grdRow = (GridViewRow)CheckBox1.NamingContainer;
            TextBox txtname = (TextBox)grdRow.FindControl("Questions");
        
            if (CheckBox1.Checked)
            {
                txtname.ReadOnly = false;
          
                txtname.ForeColor = System.Drawing.Color.Black;
                txtname.BackColor = System.Drawing.Color.Yellow;
            
            }
            else
            {
                txtname.ReadOnly = true;
            
                txtname.ForeColor = System.Drawing.Color.Blue;
                txtname.BackColor = System.Drawing.Color.White;
            
            }*/
        }

        protected void GridQuestion_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridQuestion.PageIndex = e.NewPageIndex;

            GridQuestion.DataSource = data.st_ViewQuestOfAllSub();
            GridQuestion.DataBind();

        }
    }
}