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
            if (Session["Correct"] != null && Session["Date"] != null && Session["Score"] != null &&
                Session["Bonus"] != null && Session["Num"] != null 
                && Session["Minute"] !=null &&  Session["Second"] != null)
            {
                lbResult.Text = Session["Correct"].ToString() + "/" + Session["Num"].ToString();
                lbDate.Text = Session["Date"].ToString();
                lbScore.Text = Session["Score"].ToString();
                lbBonus.Text = Session["Bonus"].ToString();
                lbTime.Text = Session["Minute"].ToString() + " phút " + Session["Second"].ToString() + " giây";
            }
            else
            {
                string strScript = "<script>";
                strScript += "alert('Không đủ dữ liệu khởi tạo, vui lòng thực hiện bài Test');";
                strScript += "window.location='Test.aspx';";
                strScript += "</script>";
                Page.RegisterClientScriptBlock("strScript", strScript);
            }
            //xoa session di
            Session["Correct"] = null;
            Session["Date"] = null;
            Session["Score"] = null;
            Session["Bonus"] = null;
            Session["Num"] = null;
            Session["Minute"] =null;
            Session["Second"] = null;
        }
    }
}