using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace iTest2012
{
    public partial class AddQuestions : System.Web.UI.Page
    {
        MyiTestDataDataContext data = new MyiTestDataDataContext(); /** edit by lightmoon7 - 20/10/2011 */
        protected void Page_Load(object sender, EventArgs e)
        {

            int result, ad, id;
            id = (int)Session["idlogin"];
            ad = data.st_CheckPermission(id, "Admin");
            result = data.st_CheckPermission(id, "Add Quest");
            if (ad == 0)
            {
                if (result == 0)
                {
                    Response.Redirect("PermissionErroPage.aspx");
                    return;
                }
                return;
            }
            Panel_MutiChoices.Visible = false;
            Panel_OneChoice.Visible = false;
        }

        /** edit by lightmoon7 - 20/10/2011 */
        protected void ddlSubName_SelectedIndexChanged(object sender, EventArgs e)
        {
            //------ refresh all data in controls: ddlChapNum and TextBox1 
            while (ddlChapNum.Items.Count >= 2)
            {
                ddlChapNum.Items.RemoveAt(1); //index 0 cant remove because it's title of Dropdownlist
            }
            TextBox1.Text = "";
            //----- select sub index when user choice -----------------------------------------------------------
            MyiTestDataDataContext db = new MyiTestDataDataContext();
            int subid = db.st_LoadSubjectID(ddlSubName.Text.Trim());
            //----------------------------------------------------------------

            var query = from c in data.iChapters
                        where c.iSubjectID == subid
                        select new { c.iChapID, c.iChapterName, c.iChapterNum };
            ddlChapNum.DataSource = query;
            ddlChapNum.DataTextField = "iChapterNum";
            ddlChapNum.DataValueField = "iChapID";
            ddlChapNum.DataBind();

            //ddlChapNum.SelectedIndex = 1; //if checking index after binding
        }
        /** end edit by lightmoon7 */

        /** edit by lightmoon7 - 20/10/2011 */
        protected void ddlChapNum_SelectedIndexChanged(object sender, EventArgs e)
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
        /** end edit by lightmoon7 */

        protected void btnEnterAgain_Click(object sender, EventArgs e)
        {

            txtnoidung = string.Empty;
            txtAns1.Text = string.Empty;
            txtAns2.Text = string.Empty;
            txtAns3.Text = string.Empty;
            txtAns4.Text = string.Empty;

            txtnoidung.Focus();
        }

        protected void btnAddQuest_Click(object sender, EventArgs e)
        {
            MyiTestDataDataContext db = new MyiTestDataDataContext();
            iQuestion qs = new iQuestion();
            if (DropDownList1.SelectedValue == "2")
            {
                if (ddlSubName.SelectedValue != null && ddlChapNum.SelectedValue != null
                    && txtnoidung.Value.Length > 0
                    && txtAns1.Text.Length > 0 && txtAns2.Text.Length > 0
                    && txtAns3.Text.Length > 0 && txtAns4.Text.Length > 0)
                {
                    iAnswer ans1 = new iAnswer();
                    iAnswer ans2 = new iAnswer();
                    iAnswer ans3 = new iAnswer();
                    iAnswer ans4 = new iAnswer();

                    /////up image
                    //Check Folder exists or not
                    DirectoryInfo dInfo = new DirectoryInfo(Server.MapPath("~/UploadFiles"));
                    if (!dInfo.Exists)
                    {
                        dInfo.Create();
                    }

                    //check file browsed or not
                    if (FileUploadQuest.HasFile)
                    {
                        FileUploadQuest.PostedFile.SaveAs(Server.MapPath("~/UploadFiles/" + FileUploadQuest.FileName));

                    }

                    // image ans1
                    if (FileUploadAns1.HasFile)
                    {
                        FileUploadAns1.PostedFile.SaveAs(Server.MapPath("~/UploadFiles/" + FileUploadAns1.FileName));

                    }

                    // image ans2
                    if (FileUploadAns2.HasFile)
                    {
                        FileUploadAns2.PostedFile.SaveAs(Server.MapPath("~/UploadFiles/" + FileUploadAns2.FileName));

                    }

                    // image ans3
                    if (FileUploadAns3.HasFile)
                    {
                        FileUploadAns3.PostedFile.SaveAs(Server.MapPath("~/UploadFiles/" + FileUploadAns3.FileName));

                    }

                    // image ans4
                    if (FileUploadAns4.HasFile)
                    {
                        FileUploadAns4.PostedFile.SaveAs(Server.MapPath("~/UploadFiles/" + FileUploadAns4.FileName));

                    }


                    // add question and answers into database

                    int subid = db.st_LoadSubjectID(ddlSubName.Text.Trim());
                    int chapid = data.st_LoadChapID(TextBox1.Text.Trim(), subid);

                    qs.iChapID = chapid;//db.st_LoadChapID(ddlChapNum.Text.Trim(), subid);
                    qs.iType = "Multi-Choices";
                    qs.iLevel = ddlLevel.Text.ToString();
                    qs.iBodyQuest = txtnoidung.Value.ToString();
                    if (!FileUploadQuest.HasFile)
                        qs.iImageQName = null;
                    else
                        qs.iImageQName = FileUploadQuest.FileName.ToString();

                    db.iQuestions.InsertOnSubmit(qs);
                    db.SubmitChanges();

                    //////ans1
                    int qsid = qs.iQuestID;

                    ans1.iQuestID = qsid;
                    ans1.iBodyAns = txtAns1.Text.ToString();
                    if (!FileUploadAns1.HasFile)
                        ans1.iImageAName = null;
                    else
                        ans1.iImageAName = FileUploadAns1.FileName.ToString();

                    //////ans2
                    ans2.iQuestID = qsid;
                    ans2.iBodyAns = txtAns2.Text.ToString();
                    if (!FileUploadAns2.HasFile)
                        ans2.iImageAName = null;
                    else
                        ans2.iImageAName = FileUploadAns2.FileName.ToString();

                    /////ans3
                    ans3.iQuestID = qsid;
                    ans3.iBodyAns = txtAns3.Text.ToString();
                    if (!FileUploadAns3.HasFile)
                        ans3.iImageAName = null;
                    else
                        ans3.iImageAName = FileUploadAns3.FileName.ToString();

                    /////ans4
                    ans4.iQuestID = qsid;
                    ans4.iBodyAns = txtAns4.Text.ToString();
                    if (!FileUploadAns4.HasFile)
                        ans4.iImageAName = null;
                    else
                        ans4.iImageAName = FileUploadAns4.FileName.ToString();

                    ans1.iProperty = '1';
                    ans2.iProperty = '0';
                    ans3.iProperty = '0';
                    ans4.iProperty = '0';
                    if (cb1.Checked == true)
                    {
                        ans1.iProperty = '1';
                    }
                    else ans1.iProperty = '0';

                    if (cb2.Checked == true)
                    {
                        ans2.iProperty = '1';
                    }
                    else ans2.iProperty = '0';

                    if (cb3.Checked == true)
                    {
                        ans3.iProperty = '1';
                    }
                    else ans3.iProperty = '0';

                    if (cb4.Checked == true)
                    {
                        ans4.iProperty = '1';
                    }
                    else ans4.iProperty = '0';

                    db.iAnswers.InsertOnSubmit(ans1);
                    db.SubmitChanges();
                    db.iAnswers.InsertOnSubmit(ans2);
                    db.SubmitChanges();
                    db.iAnswers.InsertOnSubmit(ans3);
                    db.SubmitChanges();
                    db.iAnswers.InsertOnSubmit(ans4);
                    db.SubmitChanges();

                    Response.Write("<script>alert('This question was added');</script>");


                    txtnoidung.Value = string.Empty;
                    txtAns1.Text = string.Empty;
                    txtAns2.Text = string.Empty;
                    txtAns3.Text = string.Empty;
                    txtAns4.Text = string.Empty;


                    cb1.Checked = true;
                    cb2.Checked = false;
                    cb3.Checked = false;
                    cb4.Checked = false;

                    txtnoidung.Focus();
                    DropDownList1.SelectedValue = "-1";
                }
            }
            else if (DropDownList1.SelectedValue == "1")
            {
                if (ddlSubName.SelectedValue != null && ddlChapNum.SelectedValue != null
            && txtnoidung.Value.Length > 0
            && txtAns5.Text.Length > 0 && txtAns6.Text.Length > 0
            && txtAns7.Text.Length > 0 && txtAns8.Text.Length > 0)
                {
                    iAnswer ans5 = new iAnswer();
                    iAnswer ans6 = new iAnswer();
                    iAnswer ans7 = new iAnswer();
                    iAnswer ans8 = new iAnswer();

                    /////up image
                    //Check Folder exists or not
                    DirectoryInfo dInfo = new DirectoryInfo(Server.MapPath("~/UploadFiles"));
                    if (!dInfo.Exists)
                    {
                        dInfo.Create();
                    }

                    //check file browsed or not
                    if (FileUploadQuest.HasFile)
                    {
                        FileUploadQuest.PostedFile.SaveAs(Server.MapPath("~/UploadFiles/" + FileUploadQuest.FileName));

                    }

                    // image ans1
                    if (FileUploadAns5.HasFile)
                    {
                        FileUploadAns5.PostedFile.SaveAs(Server.MapPath("~/UploadFiles/" + FileUploadAns5.FileName));

                    }

                    // image ans2
                    if (FileUploadAns6.HasFile)
                    {
                        FileUploadAns6.PostedFile.SaveAs(Server.MapPath("~/UploadFiles/" + FileUploadAns6.FileName));

                    }

                    // image ans3
                    if (FileUploadAns7.HasFile)
                    {
                        FileUploadAns7.PostedFile.SaveAs(Server.MapPath("~/UploadFiles/" + FileUploadAns7.FileName));

                    }

                    // image ans4
                    if (FileUploadAns8.HasFile)
                    {
                        FileUploadAns8.PostedFile.SaveAs(Server.MapPath("~/UploadFiles/" + FileUploadAns8.FileName));

                    }


                    // add question and answers into database

                    int subid = db.st_LoadSubjectID(ddlSubName.Text.Trim());
                    int chapid = data.st_LoadChapID(TextBox1.Text.Trim(), subid);

                    qs.iChapID = chapid;//db.st_LoadChapID(ddlChapNum.Text.Trim(), subid);
                    qs.iType = "One-Choice";
                    qs.iLevel = ddlLevel.Text.ToString();
                    qs.iBodyQuest = txtnoidung.Value.ToString();
                    if (!FileUploadQuest.HasFile)
                        qs.iImageQName = null;
                    else
                        qs.iImageQName = FileUploadQuest.FileName.ToString();

                    db.iQuestions.InsertOnSubmit(qs);
                    db.SubmitChanges();

                    //////ans1
                    int qsid = qs.iQuestID;

                    ans5.iQuestID = qsid;
                    ans5.iBodyAns = txtAns5.Text.ToString();
                    if (!FileUploadAns5.HasFile)
                        ans5.iImageAName = null;
                    else
                        ans5.iImageAName = FileUploadAns5.FileName.ToString();

                    //////ans2
                    ans6.iQuestID = qsid;
                    ans6.iBodyAns = txtAns6.Text.ToString();
                    if (!FileUploadAns6.HasFile)
                        ans6.iImageAName = null;
                    else
                        ans6.iImageAName = FileUploadAns6.FileName.ToString();

                    /////ans3
                    ans7.iQuestID = qsid;
                    ans7.iBodyAns = txtAns7.Text.ToString();
                    if (!FileUploadAns7.HasFile)
                        ans7.iImageAName = null;
                    else
                        ans7.iImageAName = FileUploadAns7.FileName.ToString();

                    /////ans4
                    ans8.iQuestID = qsid;
                    ans8.iBodyAns = txtAns8.Text.ToString();
                    if (!FileUploadAns8.HasFile)
                        ans8.iImageAName = null;
                    else
                        ans8.iImageAName = FileUploadAns8.FileName.ToString();

                    ans5.iProperty = '1';
                    ans6.iProperty = '0';
                    ans7.iProperty = '0';
                    ans8.iProperty = '0';
                    if (RadioButtonListAns.SelectedValue == "0")
                    {
                        ans5.iProperty = '1';
                    }
                    else ans5.iProperty = '0';

                    if (RadioButtonListAns.SelectedValue == "1")
                    {
                        ans6.iProperty = '1';
                    }
                    else ans6.iProperty = '0';

                    if (RadioButtonListAns.SelectedValue == "2")
                    {
                        ans7.iProperty = '1';
                    }
                    else ans7.iProperty = '0';

                    if (RadioButtonListAns.SelectedValue == "3")
                    {
                        ans8.iProperty = '1';
                    }
                    else ans8.iProperty = '0';

                    db.iAnswers.InsertOnSubmit(ans5);
                    db.SubmitChanges();
                    db.iAnswers.InsertOnSubmit(ans6);
                    db.SubmitChanges();
                    db.iAnswers.InsertOnSubmit(ans7);
                    db.SubmitChanges();
                    db.iAnswers.InsertOnSubmit(ans8);
                    db.SubmitChanges();

                    Response.Write("<script>alert('This question was added');</script>");


                    txtnoidung.Value = string.Empty;
                    txtAns5.Text = string.Empty;
                    txtAns6.Text = string.Empty;
                    txtAns7.Text = string.Empty;
                    txtAns8.Text = string.Empty;


                    RadioButtonListAns.Items[0].Selected = true;
                    RadioButtonListAns.Items[1].Selected = false;
                    RadioButtonListAns.Items[2].Selected = false;
                    RadioButtonListAns.Items[3].Selected = false;

                    txtnoidung.Focus();
                    DropDownList1.SelectedValue = "-1";
                }
            }
            else
            {
                Response.Write("<script>alert('Please enter all infomation of this question');</script>");
                DropDownList1.SelectedValue = "-1";
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (DropDownList1.SelectedValue == "1")
            {
                Panel_OneChoice.Visible = true;
                Panel_MutiChoices.Visible = false;
                return;
            }
            else if (DropDownList1.SelectedValue == "2")
            {
                Panel_MutiChoices.Visible = true;
                Panel_OneChoice.Visible = false;
                return;
            }
            else
            {
                Panel_MutiChoices.Visible = false;
                Panel_OneChoice.Visible = false;
                return;
            }
        }
    }
}