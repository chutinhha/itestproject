using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iTest2012
{
    public partial class TrangCaNhan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MyiTestDataDataContext db = new MyiTestDataDataContext();

            //if (Session["UserName"] != null)
            {
                gdv_User.DataSource = db.st_GetUserInfo(Convert.ToInt32(Session["idlogin"]));
                gdv_User.DataBind();

                lblUserName.Text = gdv_User.Rows[0].Cells[1].Text;
                lblCreatedDate.Text = gdv_User.Rows[0].Cells[6].Text;
                lblEmail.Text = gdv_User.Rows[0].Cells[3].Text;
                lblSumTest.Text = db.st_GetSumTest(Convert.ToInt32(Session["idlogin"])).ToString();
                lblSumBuonus.Text = db.st_GetBonus(Convert.ToInt32(Session["idlogin"])).ToString();
                lblSumMark.Text = db.st_GetMark(Convert.ToInt32(Session["idlogin"])).ToString();
            }
        }
    }
}