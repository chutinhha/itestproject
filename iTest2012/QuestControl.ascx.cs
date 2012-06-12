using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iTest2012
{
    public partial class QuestControl : System.Web.UI.UserControl
    {
        MyiTestDataDataContext data = new MyiTestDataDataContext();
             
        protected void Page_Load(object sender, EventArgs e)
        {               
            ///lbBody.Text = data.st_LoadBodyQuestOfSub
        }
    }
}