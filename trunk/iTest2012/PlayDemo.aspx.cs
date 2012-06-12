using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace iTest2012
{
    public partial class PlayDemo : System.Web.UI.Page
    {
        MyiTestDataDataContext data = new MyiTestDataDataContext();
       
        int subid, level, numq;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Subject"]!=null && Session["Level"]!=null && Session["Num"]!=null)
            {
                //load toan bo cau hoi phu hop dieu kien
                subid = data.st_LoadSubjectID(Session["Subject"].ToString());
                level= Convert.ToInt32(Session["Level"].ToString());
                numq = Convert.ToInt32(Session["Num"].ToString());
                gridLoadQuest.DataSource = data.st_LoadListQuestID(subid, level);
                gridLoadQuest.DataBind();

                // thuc hien load random, ket thuc dc mang arr xao tron vi tri cau hoi
                ArrayList arr = new ArrayList();
                ArrayList arrQ = new ArrayList();
                List<int> list = new List<int>();
                Random rand = new Random();
                int temp = 0;
                int row = gridLoadQuest.Rows.Count;
                for (int i = 0; i < row; i++)
                {
                    list.Add(i);
                }
                for (int j = 0; j < row; j++)
                {
                    temp = rand.Next(list.Count);
                    arr.Add(list[temp]);
                    list.RemoveAt(temp);
                }

                //gridRandom.DataSource = arr;
                //gridRandom.DataBind();

                // lay dung so cau hoi can lay (=numq)
                for (int k = 0; k < numq; k++)
                {
                    arrQ.Add(gridLoadQuest.Rows[Convert.ToInt32(arr[k].ToString())].Cells[0].Text);
                }
                //gridRandom.DataSource = arrQ;
                //gridRandom.DataBind();  
              
                //Tao cac control dong de load cau hoi len :D
                
                

            }
            else
            {
                string strScript = "<script>";
                strScript += "alert('Không đủ dữ liệu khởi tạo, vui lòng nhập lại');";
                strScript += "window.location='Test.aspx';";
                strScript += "</script>";
                Page.RegisterClientScriptBlock("strScript", strScript);
            }
        }
    }
}