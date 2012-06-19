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
            string url = "http://vnexpress.net/rss/gl/xa-hoi.rss";
            string url2 = "http://www.24h.com.vn/upload/rss/giaoducduhoc.rss";
            XmlTextReader reader = new XmlTextReader(url);
            XmlTextReader reader2 = new XmlTextReader(url2);
            DataSet ds = new DataSet();
            DataSet ds2 = new DataSet();
            ds.ReadXml(reader);
            ds2.ReadXml(reader2);
            rptRSSVN.DataSource = ds.Tables["item"];
            rptRSSVN.DataBind();
            rptRSS24.DataSource = ds2.Tables["item"];
            rptRSS24.DataBind();
            //Session["valid"] = "0";
        }
    }
}