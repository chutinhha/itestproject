using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace iTest2012
{
    public partial class AddNewSubject : System.Web.UI.Page
    {
        MyiTestDataDataContext data = new MyiTestDataDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            int ad, id;
            id = (int)Session["idlogin"];
            ad = data.st_CheckPermission(id, "Admin");
            if (ad == 0)
            {
                Response.Redirect("PermissionErroPage.aspx");
                return;
            }
        }
        protected void btnAddNewSub_Click(object sender, EventArgs e)
        {

            iSubject sj = new iSubject();
            int resultName;
            int resultID;

            if (txtSubName.Text.Trim().Length > 0 && txtSubID.Text.Trim().Length > 0)
            {
                if (txtSubID.Text.Trim().Length == 7)
                {
                    resultID = data.st_CheckAvailableSubID(Convert.ToInt32(txtSubID.Text.Trim()));
                    resultName = data.st_CheckAvailableSubName(txtSubName.Text.Trim());

                    if (resultID != 1 && resultName != 1)
                        lbError.Text = "This Subject Had Exits";
                    else if (resultName != 1)
                        lbError.Text = "This Subject Name Had Exits";
                    else if (resultID != 1)
                        lbError.Text = "This Subject ID Had Exits";
                    else if (resultName == 1 && resultID == 1)
                    {
                        sj.iSubjectID = Convert.ToInt32(txtSubID.Text.Trim());
                        sj.iSubjectName = txtSubName.Text.Trim();
                        data.iSubjects.InsertOnSubmit(sj);
                        data.SubmitChanges();
                        Response.Write("<script>alert('Added Successful');</script>");
                    }
                }
                else
                    lbError.Text = "Incorrect Subject ID, Correct ID like [0-9][0-9][0-9][0-9][0-9][0-9][0-9]";

            }
            else
                lbError.Text = "Please Enter Full Informations";
        }
    }
}