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

                // lay dung so cau hoi can lay (=numq), dat cac id vao 1 chuoi string de truy van
                //string listquest="";
                for (int k = 0; k < numq; k++)
                {
                    arrQ.Add(gridLoadQuest.Rows[Convert.ToInt32(arr[k].ToString())].Cells[0].Text);
                    //listquest = listquest + arrQ[k] + ",";
                }    
                

                //lb10Test1.Text = listquest;
                //gridRandom.DataSource = data.st_LoadBodyQuestOfSub(Convert.ToInt32(arrQ[0]));
                //gridRandom.DataBind();  
                
                //Tao cac control dong de load cau hoi len :D                                
                //grid cau hoi
                gridRandom.DataSource = data.st_LoadList10QuestsRandom(Convert.ToInt32(arrQ[0]),
                    Convert.ToInt32(arrQ[1]), Convert.ToInt32(arrQ[2]), Convert.ToInt32(arrQ[3]),
                    Convert.ToInt32(arrQ[4]), Convert.ToInt32(arrQ[5]), Convert.ToInt32(arrQ[6]),
                    Convert.ToInt32(arrQ[7]), Convert.ToInt32(arrQ[8]), Convert.ToInt32(arrQ[9]));
                gridRandom.DataBind();

                //grid cau tra loi
                gridLoadAns.DataSource = data.st_LoadList10Ans(Convert.ToInt32(arrQ[0]),
                Convert.ToInt32(arrQ[1]), Convert.ToInt32(arrQ[2]), Convert.ToInt32(arrQ[3]),
                Convert.ToInt32(arrQ[4]), Convert.ToInt32(arrQ[5]), Convert.ToInt32(arrQ[6]),
                Convert.ToInt32(arrQ[7]), Convert.ToInt32(arrQ[8]), Convert.ToInt32(arrQ[9]));
                gridLoadAns.DataBind();

                if (numq == 10)
                {
                    panel10Test.Visible = true;
                    //load noi dung cau hoi
                    lb10Test1.Text = "<b>Câu 1 :</b> " + gridRandom.Rows[0].Cells[1].Text;
                    lb10Test2.Text = "<b>Câu 2 :</b> " + gridRandom.Rows[1].Cells[1].Text;
                    lb10Test3.Text = "<b>Câu 3 :</b> " + gridRandom.Rows[2].Cells[1].Text;
                    lb10Test4.Text = "<b>Câu 4 :</b> " + gridRandom.Rows[3].Cells[1].Text;
                    lb10Test5.Text = "<b>Câu 5 :</b> " + gridRandom.Rows[4].Cells[1].Text;
                    lb10Test6.Text = "<b>Câu 6 :</b> " + gridRandom.Rows[5].Cells[1].Text;
                    lb10Test7.Text = "<b>Câu 7 :</b> " + gridRandom.Rows[6].Cells[1].Text;
                    lb10Test8.Text = "<b>Câu 8 :</b> " + gridRandom.Rows[7].Cells[1].Text;
                    lb10Test9.Text = "<b>Câu 9 :</b> " + gridRandom.Rows[8].Cells[1].Text;
                    lb10Test10.Text = "<b>Câu 10 :</b> " + gridRandom.Rows[9].Cells[1].Text;

                    
                    //load hinh anh
                    if (System.IO.File.Exists(Server.MapPath("~/UploadFiles/" + gridRandom.Rows[0].Cells[0].Text + gridRandom.Rows[0].Cells[2].Text)))
                    {
                        img10Test1.ImageUrl = "/UploadFiles/" + gridRandom.Rows[0].Cells[0].Text+ gridRandom.Rows[0].Cells[2].Text;
                    }
                    if (System.IO.File.Exists(Server.MapPath("~/UploadFiles/" +gridRandom.Rows[1].Cells[0].Text+ gridRandom.Rows[1].Cells[2].Text)))
                    {
                        img10Test2.ImageUrl = "/UploadFiles/" +gridRandom.Rows[1].Cells[0].Text+ gridRandom.Rows[1].Cells[2].Text;
                    }
                    if (System.IO.File.Exists(Server.MapPath("~/UploadFiles/" +gridRandom.Rows[2].Cells[0].Text+ gridRandom.Rows[2].Cells[2].Text)))
                    {
                        img10Test3.ImageUrl = "/UploadFiles/" +gridRandom.Rows[2].Cells[0].Text+ gridRandom.Rows[2].Cells[2].Text;
                    }
                    if (System.IO.File.Exists(Server.MapPath("~/UploadFiles/" +gridRandom.Rows[3].Cells[0].Text+ gridRandom.Rows[3].Cells[2].Text)))
                    {
                        img10Test4.ImageUrl = "/UploadFiles/" +gridRandom.Rows[3].Cells[0].Text+ gridRandom.Rows[3].Cells[2].Text;
                    }
                    if (System.IO.File.Exists(Server.MapPath("~/UploadFiles/" +gridRandom.Rows[4].Cells[0].Text+ gridRandom.Rows[4].Cells[2].Text)))
                    {
                        img10Test5.ImageUrl = "/UploadFiles/" +gridRandom.Rows[4].Cells[0].Text+ gridRandom.Rows[4].Cells[2].Text;
                    }
                    if (System.IO.File.Exists(Server.MapPath("~/UploadFiles/" +gridRandom.Rows[5].Cells[0].Text+ gridRandom.Rows[5].Cells[2].Text)))
                    {
                        img10Test6.ImageUrl = "/UploadFiles/" +gridRandom.Rows[5].Cells[0].Text+ gridRandom.Rows[5].Cells[2].Text;
                    }
                    if (System.IO.File.Exists(Server.MapPath("~/UploadFiles/" +gridRandom.Rows[6].Cells[0].Text+ gridRandom.Rows[6].Cells[2].Text)))
                    {
                        img10Test7.ImageUrl = "/UploadFiles/" +gridRandom.Rows[6].Cells[0].Text+ gridRandom.Rows[6].Cells[2].Text;
                    }
                    if (System.IO.File.Exists(Server.MapPath("~/UploadFiles/" +gridRandom.Rows[7].Cells[0].Text+ gridRandom.Rows[7].Cells[2].Text)))
                    {
                        img10Test8.ImageUrl = "/UploadFiles/" +gridRandom.Rows[7].Cells[0].Text+ gridRandom.Rows[7].Cells[2].Text;
                    }
                    if (System.IO.File.Exists(Server.MapPath("~/UploadFiles/" +gridRandom.Rows[8].Cells[0].Text+ gridRandom.Rows[8].Cells[2].Text)))
                    {
                        img10Test9.ImageUrl = "/UploadFiles/" +gridRandom.Rows[8].Cells[0].Text+ gridRandom.Rows[8].Cells[2].Text;
                    }
                    if (System.IO.File.Exists(Server.MapPath("~/UploadFiles/" +gridRandom.Rows[9].Cells[0].Text+ gridRandom.Rows[9].Cells[2].Text)))
                    {
                        img10Test10.ImageUrl = "/UploadFiles/" +gridRandom.Rows[9].Cells[0].Text+ gridRandom.Rows[9].Cells[2].Text;
                    }

                    //load cac cau tra loi
                    int p=0;
                    for (p=0; p < 4; p++)
                    {
                        rd10Test1.Items[p].Text = gridLoadAns.Rows[p].Cells[2].Text;
                        rd10Test2.Items[p].Text = gridLoadAns.Rows[p+4].Cells[2].Text;
                        rd10Test3.Items[p].Text = gridLoadAns.Rows[p+8].Cells[2].Text;
                        rd10Test4.Items[p].Text = gridLoadAns.Rows[p+12].Cells[2].Text;
                        rd10Test5.Items[p].Text = gridLoadAns.Rows[p+16].Cells[2].Text;
                        rd10Test6.Items[p].Text = gridLoadAns.Rows[p+20].Cells[2].Text;
                        rd10Test7.Items[p].Text = gridLoadAns.Rows[p+24].Cells[2].Text;
                        rd10Test8.Items[p].Text = gridLoadAns.Rows[p+28].Cells[2].Text;
                        rd10Test9.Items[p].Text = gridLoadAns.Rows[p+32].Cells[2].Text;
                        rd10Test10.Items[p].Text = gridLoadAns.Rows[p+36].Cells[2].Text;
                    }

                    
                }
                else if (numq == 30)
                { }
                else
                { }





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