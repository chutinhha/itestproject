using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iTest2012
{
    public partial class Test : System.Web.UI.Page
    {
        MyiTestDataDataContext data = new MyiTestDataDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            lbError.Text = "";
        }
        /* public int RandomNumber(int min, int max)
         {
             Random random = new Random();
             return random.Next(min, max);
         }*/
        protected void btnLetsGo_Click(object sender, EventArgs e)
        {
            if (ddlSubject.SelectedValue != "-1")
            {
                int idsub = data.st_LoadSubjectID(ddlSubject.Text.Trim());
                int num = Convert.ToInt32(ddlNumberofQuests.Text.Trim());
                int lv = Convert.ToInt32(ddlLevel.SelectedValue);
                int result;
                result = data.st_Check_aSub_aLevel_Num(idsub, lv, num);
                if (result == 1)
                {
                    lbError.Text = "";

                    Session["Subject"] = ddlSubject.SelectedItem.Text;
                    Session["Num"] = ddlNumberofQuests.SelectedValue;
                    //Session["Type"] = ddlQuestType.SelectedValue;
                    Session["Level"] = ddlLevel.SelectedValue;

                    if (Session["Question"] == null)
                    {
                        Session["Question"] = 1;
                    }

                    if (Session["Correct"] == null)
                    {
                        Session["Correct"] = 0;
                    }

                    Response.Redirect("PlayTestOne.aspx");

                }
                else
                {
                    lbError.Text = "Not Enough Questions";
                }
            }
            else
            {
                int num;
                num = Convert.ToInt32(ddlNumberofQuests.Text.Trim());
                int result = data.st_Check_AllSub_aLevel_Num(Convert.ToInt32(ddlLevel.SelectedValue), num);

                if (result == 1)
                {
                    lbError.Text = "";
                    Session["Num"] = ddlNumberofQuests.SelectedValue;
                    //Session["Type"] = ddlQuestType.SelectedValue;
                    Session["Level"] = ddlLevel.SelectedValue;
                    if (Session["Question"] == null)
                    {
                        Session["Question"] = 1;
                    }

                    if (Session["Correct"] == null)
                    {
                        Session["Correct"] = 0;
                    }

                    Response.Redirect("PlayTestOne.aspx");

                }
                else
                {

                    lbError.Text = "Not Enough Questions";
                }
            }
        }
    }
}