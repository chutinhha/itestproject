using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iTest2012
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbCorrectAns.Text = Session["Correct"].ToString() + "/" + Session["Num"].ToString();
            Session["Correct"] = 0;
            Session["Question"] = 1; 
        }
    }
}