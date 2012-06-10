using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iTest2012
{
    public partial class PlayTestOne : System.Web.UI.Page
    {
        MyiTestDataDataContext data = new MyiTestDataDataContext();
        int questid;
        int subid;
        int correct, choice1, choice2, choice3, choice4;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Subject"].ToString().Length > 0)
                subid = data.st_LoadSubjectID(Session["Subject"].ToString());
            else subid = 1;
            questid = data.st_RandomIDofSubByLevel(subid, Convert.ToInt32(Session["Level"]));

            lbNumberOfTest.Text = Session["Num"].ToString();
            lbNumber.Text = Session["Question"].ToString();
            lbCorrectAns.Text = Session["Correct"].ToString() + "/" + Session["Num"].ToString();

            if (!Page.IsPostBack)
            {
                GridViewBody.DataSource = data.st_LoadBodyQuestOfSub(questid);
                GridViewBody.DataBind();

                

                
                imgQuest.ImageUrl = "/UploadFiles/"+q;
                GridViewAnswer.DataSource = data.st_LoadBodyAnswers(questid); // visible = false de giau grid di, load du lieu vao radio list
                GridViewAnswer.DataBind();

                Panel_OneChoice.Visible = true;
                Panel_MultiChoices.Visible = false;

                rdans1.Text = GridViewAnswer.Rows[0].Cells[1].Text;
                rdans2.Text = GridViewAnswer.Rows[1].Cells[1].Text;
                rdans3.Text = GridViewAnswer.Rows[2].Cells[1].Text;
                rdans4.Text = GridViewAnswer.Rows[3].Cells[1].Text;
                /*
                if (Session["Type"].ToString() == "One-Choice")
                {
                    Panel_OneChoice.Visible = true;
                    Panel_MultiChoices.Visible = false;

                    rdans1.Text = GridViewAnswer.Rows[0].Cells[1].Text;
                    rdans2.Text = GridViewAnswer.Rows[1].Cells[1].Text;
                    rdans3.Text = GridViewAnswer.Rows[2].Cells[1].Text;
                    rdans4.Text = GridViewAnswer.Rows[3].Cells[1].Text;
                }
                else if (Session["Type"].ToString() == "Multi-Choices")
                {
                    Panel_OneChoice.Visible = false;
                    Panel_MultiChoices.Visible = true;

                    CheckBox1.Text = GridViewAnswer.Rows[0].Cells[1].Text;
                    CheckBox2.Text = GridViewAnswer.Rows[1].Cells[1].Text;
                    CheckBox3.Text = GridViewAnswer.Rows[2].Cells[1].Text;
                    CheckBox4.Text = GridViewAnswer.Rows[3].Cells[1].Text;
                }
                 * */

            }
            if (Convert.ToInt32(Session["Question"]) > Convert.ToInt32(Session["Num"]))
            {
                Response.Redirect("Result.aspx");
            }
        }
        protected void btnNext_Click(object sender, EventArgs e)
        {
            if (rdans1.Checked && data.st_Test(questid, rdans1.Text.Trim()) == 1)
            {
                Session["Question"] = (int)Session["Question"] + 1;
                Session["Correct"] = (int)Session["Correct"] + 1;
                Response.Redirect("PlayTestOne.aspx");
                //testthu.Text = data.st_Test(questid, rdans1.Text.Trim()).ToString()+" - choice 1";
                //testthu2.Text = correct.ToString();
            }
            else if (rdans2.Checked && data.st_Test(questid, rdans2.Text.Trim()) == 1)
            {
                Session["Question"] = (int)Session["Question"] + 1;
                Session["Correct"] = (int)Session["Correct"] + 1;
                Response.Redirect("PlayTestOne.aspx");
                //testthu.Text = data.st_Test(questid, rdans2.Text.Trim()).ToString()+" - choice 2";
                //testthu2.Text = correct.ToString();
            }
            else if (rdans3.Checked && data.st_Test(questid, rdans3.Text.Trim()) == 1)
            {
                Session["Question"] = (int)Session["Question"] + 1;
                Session["Correct"] = (int)Session["Correct"] + 1;
                Response.Redirect("PlayTestOne.aspx");
                //testthu.Text = data.st_Test(questid, rdans3.Text.Trim()).ToString() + " - choice 3";
                //testthu2.Text = correct.ToString();
            }
            else if (rdans4.Checked && data.st_Test(questid, rdans4.Text.Trim()) == 1)
            {
                Session["Question"] = (int)Session["Question"] + 1;
                Session["Correct"] = (int)Session["Correct"] + 1;
                Response.Redirect("PlayTestOne.aspx");
                //testthu.Text = data.st_Test(questid, rdans4.Text.Trim()).ToString() + " - choice 4";
                //testthu2.Text = correct.ToString();
            }
            else
            {
                Session["Question"] = (int)Session["Question"] + 1;
                Session["Correct"] = (int)Session["Correct"] - 10;
                Response.Redirect("PlayTestOne.aspx");
                //testthu.Text = choice4.ToString()+" -  else cuoi";

            }
        }

        protected void btnFinish_Click(object sender, EventArgs e)
        {
            Response.Redirect("Result.aspx");
        }
    }
}