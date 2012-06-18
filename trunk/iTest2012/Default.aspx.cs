using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;

namespace iTest2012
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string url = "http://kenhtuyensinh.vn/rss/tuyen-sinh.rss"; link dom?
            string url2 = "http://www.24h.com.vn/upload/rss/giaoducduhoc.rss";
            XmlTextReader reader = new XmlTextReader(url2);

            DataSet ds = new DataSet();
            ds.ReadXml(reader);

            rptRSS.DataSource = ds.Tables["item"];
            rptRSS.DataBind();
        }
    }
}