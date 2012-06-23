using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iTest2012
{
    public partial class AddQuestion01 : System.Web.UI.Page
    {
        MyiTestDataDataContext data = new MyiTestDataDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlSub_SelectedIndexChanged(object sender, EventArgs e)
        {
            //------ refresh all data in controls: ddlChapNum and TextBox1 
            //while (ddlChap.Items.Count >= 2)
            //{
            //    ddlChap.Items.RemoveAt(1); //index 0 cant remove because it's title of Dropdownlist
            //}
            //TextBox1.Text = "";
            //----- select sub index when user choice -----------------------------------------------------------
            //MyiTestDataDataContext db = new MyiTestDataDataContext();
            int subid = data.st_LoadSubjectID(ddlSub.SelectedValue.ToString());
            //----------------------------------------------------------------

            var query = from c in data.iChapters
                        where c.iSubjectID == subid
                        select new { c.iChapID, c.iChapterName };
            ddlChap.DataSource = query;
            ddlChap.DataTextField = "iChapterName";
            ddlChap.DataValueField = "iChapID";
            ddlChap.DataBind();

            //ddlChapNum.SelectedIndex = 1; //if checking index after binding
        }

        protected void ddlChap_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if ( ddlChap.SelectedValue == "-1")
            //    return;
            //int value = int.Parse(ddlChap.SelectedValue);
            //var currentChapter = (from c in data.iChapters
            //                      where c.iChapID == value
            //                      select c).Single();
            //lbChapName.Text = currentChapter.iChapterName;
        }
    }
}