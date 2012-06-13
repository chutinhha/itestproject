using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iTest2012
{
    public partial class FinalScore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbResult.Text = Session["Correct"].ToString();
            lbDate.Text = Session["Date"].ToString();
            lbScore.Text = Session["Score"].ToString();
            lbBonus.Text = Session["Bonus"].ToString();
        }
    }
}