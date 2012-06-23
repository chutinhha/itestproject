using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

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
            //Panel_MutiChoices.Visible = false;
            //Panel_OneChoice.Visible = true;
        }

        /** edit by lightmoon7 - 20/10/2011 */
        protected void ddlSubName_SelectedIndexChanged(object sender, EventArgs e)
        {
            //------ refresh all data in controls: ddlChapNum and TextBox1 
            while (ddlChapNum.Items.Count >= 2)
            {
                ddlChapNum.Items.RemoveAt(1); //index 0 cant remove because it's title of Dropdownlist
            }
            //TextBox1.Text = "";
            //----- select sub index when user choice -----------------------------------------------------------
            MyiTestDataDataContext db = new MyiTestDataDataContext();
            int subid = db.st_LoadSubjectID(ddlSubName.Text.Trim());
            //----------------------------------------------------------------

            var query = from c in data.iChapters
                        where c.iSubjectID == subid
                        select new { c.iChapID, c.iChapterName, c.iChapterNum };
            ddlChapNum.DataSource = query;
            ddlChapNum.DataTextField = "iChapterName";
            ddlChapNum.DataValueField = "iChapID";
            ddlChapNum.DataBind();

            //ddlChapNum.SelectedIndex = 1; //if checking index after binding
        }
        /** end edit by lightmoon7 */

        /** edit by lightmoon7 - 20/10/2011 */
        //protected void ddlChapNum_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    DropDownList dd = (DropDownList)sender;
        //    if (dd.SelectedValue == "-1")
        //        return;
        //    int value = int.Parse(dd.SelectedValue);
        //    var currentChapter = (from c in data.iChapters
        //                          where c.iChapID == value
        //                          select c).Single();
        //    //TextBox1.Text = currentChapter.iChapterName;
        //}
        /** end edit by lightmoon7 */

        protected void btnEnterAgain_Click(object sender, EventArgs e)
        {

            //edtQuest.Content = string.Empty;
            areaQuest.Value = "";
            //txtNoidung.Text = string.Empty;
            areaAns1.Value = "";
            areaAns2.Value = "";
            areaAns3.Value = "";
            areaAns4.Value = "";


            areaQuest.Focus();
        }

        protected void btnAddQuest_Click(object sender, EventArgs e)
        {
            MyiTestDataDataContext db = new MyiTestDataDataContext();
            iQuestion qs = new iQuestion();
            //if (DropDownList1.SelectedValue == "2")
            { /*
                
                if (ddlSubName.SelectedValue != null && ddlChapNum.SelectedValue != null
                    && txtnoidung.Value.Length > 0
                    && FileUploadAns1.HasFile==true)
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

                    //check question file browsed or not
                    if (FileUploadQuest.HasFile)
                    {
                        FileUploadQuest.PostedFile.SaveAs(Server.MapPath("~/UploadFiles/" + FileUploadQuest.FileName));
                    }

                    // image ans1
                    if (FileUploadAns1.HasFile)
                    {
                        FileUploadAns1.PostedFile.SaveAs(Server.MapPath("~/UploadFiles/" + FileUploadAns1.FileName));

                    }

                    // add question and answers into database

                    int subid = db.st_LoadSubjectID(ddlSubName.Text.Trim());
                    int chapid = data.st_LoadChapID(TextBox1.Text.Trim(), subid);

                    qs.iChapID = chapid;//db.st_LoadChapID(ddlChapNum.Text.Trim(), subid);
                    qs.iType = "1"; // 0 = binh thuong. 1= hinh anh
                    qs.iLevel = ddlLevel.SelectedValue;
                    //**************Level***********
                    //   0 = chua xac dinh         /  
                    //   1 = dễ                    /      
                    //   2 = binh thuong           / 
                    //   3 = kho                   /  
                    //   4= thong minh (rat kho)   /  
                    //******************************
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
                    ans1.iBodyAns = " ";
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
                    DropDownList1.SelectedValue = "-1";*/

                //}
                //else if (DropDownList1.SelectedValue == "1")
                //{
                if (ddlSubName.SelectedValue != "-1" && ddlChapNum.SelectedValue != "0"
            && /*edtQuest.Content.Length > 0*/ areaQuest.Value.Length > 0
            && areaAns1.Value.Length > 0 && areaAns2.Value.Length > 0
            && areaAns3.Value.Length > 0 && areaAns4.Value.Length > 0)
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


                    // add question and answers into database

                    int subid = db.st_LoadSubjectID(ddlSubName.Text.Trim());
                    int chapid = int.Parse(ddlChapNum.SelectedValue);

                    qs.iChapID = chapid;//db.st_LoadChapID(ddlChapNum.Text.Trim(), subid);
                    //qs.iType = Convert.ToInt32(ddlLevel.SelectedValue);
                    qs.iLevel = Convert.ToInt32(ddlLevel.SelectedValue);
                    qs.iBodyQuest = areaQuest.Value;
                    if (!FileUploadQuest.HasFile)
                        qs.iImageQName = null;
                    else
                        qs.iImageQName = FileUploadQuest.FileName.ToString();

                    db.iQuestions.InsertOnSubmit(qs);
                    db.SubmitChanges();

                    //////ans1
                    int qsid = qs.iQuestID;

                    //kiem tra xem fileupload co file hay ko, neu co thi add, + them id cau hoi phia truoc
                    if (FileUploadQuest.HasFile)
                    {
                        FileUploadQuest.PostedFile.SaveAs(Server.MapPath("~/UploadFiles/" + qsid + FileUploadQuest.FileName));
                    }
                    ans5.iQuestID = qsid;
                    ans5.iBodyAns = areaAns1.Value;

                    //////ans2
                    ans6.iQuestID = qsid;
                    ans6.iBodyAns = areaAns2.Value;

                    /////ans3
                    ans7.iQuestID = qsid;
                    ans7.iBodyAns = areaAns3.Value;

                    /////ans4
                    ans8.iQuestID = qsid;
                    ans8.iBodyAns = areaAns4.Value;

                    /// xet default dap an dung
                    ans5.iProperty = '1';
                    ans6.iProperty = '0';
                    ans7.iProperty = '0';
                    ans8.iProperty = '0';

                    /// xet dap an dung theo tuy chon cua nguoi nhap
                    if (rbA.Checked == true)
                    {
                        ans5.iProperty = '1';
                    }
                    else ans5.iProperty = '0';

                    if (rbB.Checked == true)
                    {
                        ans6.iProperty = '1';
                    }
                    else ans6.iProperty = '0';

                    if (rbC.Checked == true)
                    {
                        ans7.iProperty = '1';
                    }
                    else ans7.iProperty = '0';

                    if (rbD.Checked == true)
                    {
                        ans8.iProperty = '1';
                    }
                    else ans8.iProperty = '0';

                    // insert vao database
                    db.iAnswers.InsertOnSubmit(ans5);
                    db.SubmitChanges();
                    db.iAnswers.InsertOnSubmit(ans6);
                    db.SubmitChanges();
                    db.iAnswers.InsertOnSubmit(ans7);
                    db.SubmitChanges();
                    db.iAnswers.InsertOnSubmit(ans8);
                    db.SubmitChanges();

                    // Thong bao thanh cong
                    Response.Write("<script>alert('Thêm câu  hỏi thành công');</script>");

                    // Tra form ve gia tri mac dinh
                    areaQuest.Value="";
                    //edtQuest.Content = string.Empty;
                    areaAns1.Value="";
                    areaAns2.Value="";
                    areaAns3.Value="";
                    areaAns4.Value="";

                    rbA.Checked = true;
                    rbB.Checked = false;
                    rbC.Checked = false;
                    rbD.Checked = false;

                    areaQuest.Focus();
                    //DropDownList1.SelectedValue = "-1";
                }
                //}
                else // Chua nhap du thong tin
                {
                    Response.Write("<script>alert('Vui lòng nhập thông tin đầy đủ');</script>");
                }
            }
            /*
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
            }*/
        }

        
    }
}