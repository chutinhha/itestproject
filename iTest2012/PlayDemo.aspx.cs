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
        DateTime timebegin = DateTime.UtcNow;
        int subid, level, numq;
        protected void Page_Load(object sender, EventArgs e)
        {
            //tao 1 bien luu thoi gian bat dau
            
            if (Session["Subject"] != null && Session["Level"] != null && Session["Num"] != null)
            {
                //load toan bo cau hoi phu hop dieu kien
                subid = data.st_LoadSubjectID(Session["Subject"].ToString());
                level = Convert.ToInt32(Session["Level"].ToString());
                numq = Convert.ToInt32(Session["Num"].ToString());                
                if (!Page.IsPostBack) // post back la grid bi thay doi ngay
                {             
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
                    { list.Add(i); }
                    for (int j = 0; j < row; j++)
                    { temp = rand.Next(list.Count); arr.Add(list[temp]); list.RemoveAt(temp); }
                    //gridRandom.DataSource = arr;
                    //gridRandom.DataBind();
                    // lay dung so cau hoi can lay (=numq), dat cac id vao 1 chuoi string de truy van
                    //string listquest="";
                    for (int k = 0; k < numq; k++)
                    { arrQ.Add(gridLoadQuest.Rows[Convert.ToInt32(arr[k].ToString())].Cells[0].Text); }
                                                 
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

                    if (numq == 10)// goi 10 cau
                    {
                        panel10Test.Visible = true; panel40Test.Visible = false; panel60Test.Visible = false;
                        //load noi dung cau hoi
                        lb10Test1.Text =gridRandom.Rows[0].Cells[1].Text;
                        lb10Test2.Text =gridRandom.Rows[1].Cells[1].Text;
                        lb10Test3.Text =gridRandom.Rows[2].Cells[1].Text;
                        lb10Test4.Text =gridRandom.Rows[3].Cells[1].Text;
                        lb10Test5.Text =gridRandom.Rows[4].Cells[1].Text;
                        lb10Test6.Text =gridRandom.Rows[5].Cells[1].Text;
                        lb10Test7.Text =gridRandom.Rows[6].Cells[1].Text;
                        lb10Test8.Text =gridRandom.Rows[7].Cells[1].Text;
                        lb10Test9.Text =gridRandom.Rows[8].Cells[1].Text;
                        lb10Test10.Text =gridRandom.Rows[9].Cells[1].Text;

                        //load hinh anh neu co
                        if (System.IO.File.Exists(Server.MapPath("~/UploadFiles/" + gridRandom.Rows[0].Cells[0].Text + gridRandom.Rows[0].Cells[2].Text)))
                        { img10Test1.ImageUrl = "/UploadFiles/" + gridRandom.Rows[0].Cells[0].Text + gridRandom.Rows[0].Cells[2].Text; }
                        if (System.IO.File.Exists(Server.MapPath("~/UploadFiles/" + gridRandom.Rows[1].Cells[0].Text + gridRandom.Rows[1].Cells[2].Text)))
                        { img10Test2.ImageUrl = "/UploadFiles/" + gridRandom.Rows[1].Cells[0].Text + gridRandom.Rows[1].Cells[2].Text; }
                        if (System.IO.File.Exists(Server.MapPath("~/UploadFiles/" + gridRandom.Rows[2].Cells[0].Text + gridRandom.Rows[2].Cells[2].Text)))
                        { img10Test3.ImageUrl = "/UploadFiles/" + gridRandom.Rows[2].Cells[0].Text + gridRandom.Rows[2].Cells[2].Text; }
                        if (System.IO.File.Exists(Server.MapPath("~/UploadFiles/" + gridRandom.Rows[3].Cells[0].Text + gridRandom.Rows[3].Cells[2].Text)))
                        { img10Test4.ImageUrl = "/UploadFiles/" + gridRandom.Rows[3].Cells[0].Text + gridRandom.Rows[3].Cells[2].Text; }
                        if (System.IO.File.Exists(Server.MapPath("~/UploadFiles/" + gridRandom.Rows[4].Cells[0].Text + gridRandom.Rows[4].Cells[2].Text)))
                        { img10Test5.ImageUrl = "/UploadFiles/" + gridRandom.Rows[4].Cells[0].Text + gridRandom.Rows[4].Cells[2].Text; }
                        if (System.IO.File.Exists(Server.MapPath("~/UploadFiles/" + gridRandom.Rows[5].Cells[0].Text + gridRandom.Rows[5].Cells[2].Text)))
                        { img10Test6.ImageUrl = "/UploadFiles/" + gridRandom.Rows[5].Cells[0].Text + gridRandom.Rows[5].Cells[2].Text; }
                        if (System.IO.File.Exists(Server.MapPath("~/UploadFiles/" + gridRandom.Rows[6].Cells[0].Text + gridRandom.Rows[6].Cells[2].Text)))
                        { img10Test7.ImageUrl = "/UploadFiles/" + gridRandom.Rows[6].Cells[0].Text + gridRandom.Rows[6].Cells[2].Text; }
                        if (System.IO.File.Exists(Server.MapPath("~/UploadFiles/" + gridRandom.Rows[7].Cells[0].Text + gridRandom.Rows[7].Cells[2].Text)))
                        { img10Test8.ImageUrl = "/UploadFiles/" + gridRandom.Rows[7].Cells[0].Text + gridRandom.Rows[7].Cells[2].Text; }
                        if (System.IO.File.Exists(Server.MapPath("~/UploadFiles/" + gridRandom.Rows[8].Cells[0].Text + gridRandom.Rows[8].Cells[2].Text)))
                        { img10Test9.ImageUrl = "/UploadFiles/" + gridRandom.Rows[8].Cells[0].Text + gridRandom.Rows[8].Cells[2].Text; }
                        if (System.IO.File.Exists(Server.MapPath("~/UploadFiles/" + gridRandom.Rows[9].Cells[0].Text + gridRandom.Rows[9].Cells[2].Text)))
                        { img10Test10.ImageUrl = "/UploadFiles/" + gridRandom.Rows[9].Cells[0].Text + gridRandom.Rows[9].Cells[2].Text; }

                        //load cau tra loi
                        //1
                        rd10Test1a.Text = gridLoadAns.Rows[0].Cells[2].Text; rd10Test1b.Text = gridLoadAns.Rows[1].Cells[2].Text;
                        rd10Test1c.Text = gridLoadAns.Rows[2].Cells[2].Text; rd10Test1d.Text = gridLoadAns.Rows[3].Cells[2].Text;
                        //2
                        rd10Test2a.Text = gridLoadAns.Rows[4].Cells[2].Text; rd10Test2b.Text = gridLoadAns.Rows[5].Cells[2].Text;
                        rd10Test2c.Text = gridLoadAns.Rows[6].Cells[2].Text; rd10Test2d.Text = gridLoadAns.Rows[7].Cells[2].Text;
                        //3
                        rd10Test3a.Text = gridLoadAns.Rows[8].Cells[2].Text; rd10Test3b.Text = gridLoadAns.Rows[9].Cells[2].Text;
                        rd10Test3c.Text = gridLoadAns.Rows[10].Cells[2].Text; rd10Test3d.Text = gridLoadAns.Rows[11].Cells[2].Text;
                        //4
                        rd10Test4a.Text = gridLoadAns.Rows[12].Cells[2].Text; rd10Test4b.Text = gridLoadAns.Rows[13].Cells[2].Text;
                        rd10Test4c.Text = gridLoadAns.Rows[14].Cells[2].Text; rd10Test4d.Text = gridLoadAns.Rows[15].Cells[2].Text;
                        //5
                        rd10Test5a.Text = gridLoadAns.Rows[16].Cells[2].Text; rd10Test5b.Text = gridLoadAns.Rows[17].Cells[2].Text;
                        rd10Test5c.Text = gridLoadAns.Rows[18].Cells[2].Text; rd10Test5d.Text = gridLoadAns.Rows[19].Cells[2].Text;
                        //6
                        rd10Test6a.Text = gridLoadAns.Rows[20].Cells[2].Text; rd10Test6b.Text = gridLoadAns.Rows[21].Cells[2].Text;
                        rd10Test6c.Text = gridLoadAns.Rows[22].Cells[2].Text; rd10Test6d.Text = gridLoadAns.Rows[23].Cells[2].Text;
                        //7
                        rd10Test7a.Text = gridLoadAns.Rows[24].Cells[2].Text; rd10Test7b.Text = gridLoadAns.Rows[25].Cells[2].Text;
                        rd10Test7c.Text = gridLoadAns.Rows[26].Cells[2].Text; rd10Test7d.Text = gridLoadAns.Rows[27].Cells[2].Text;
                        //8
                        rd10Test8a.Text = gridLoadAns.Rows[28].Cells[2].Text; rd10Test8b.Text = gridLoadAns.Rows[29].Cells[2].Text;
                        rd10Test8c.Text = gridLoadAns.Rows[30].Cells[2].Text; rd10Test8d.Text = gridLoadAns.Rows[31].Cells[2].Text;
                        //9
                        rd10Test9a.Text = gridLoadAns.Rows[32].Cells[2].Text; rd10Test9b.Text = gridLoadAns.Rows[33].Cells[2].Text;
                        rd10Test9c.Text = gridLoadAns.Rows[34].Cells[2].Text; rd10Test9d.Text = gridLoadAns.Rows[35].Cells[2].Text;
                        //10
                        rd10Test10a.Text = gridLoadAns.Rows[36].Cells[2].Text; rd10Test10b.Text = gridLoadAns.Rows[37].Cells[2].Text;
                        rd10Test10c.Text = gridLoadAns.Rows[38].Cells[2].Text; rd10Test10d.Text = gridLoadAns.Rows[39].Cells[2].Text;
                    
                        // xoá session subject, lv, de user k the hack time, session num k xoa cung dc
                        Session["Subject"] = null;
                        Session["Level"] = null;
                        //Session["Num"] = null;
 
                    }
                    else if (numq == 30)
                    { }
                    else
                    { }
                }
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
           
        protected void btn10Test_Click(object sender, EventArgs e)
        {
            //dem so radio dc check, neu thieu thi thong bao thieu            
            float score = 0; int correct = 0;
            string listAns="", listQuest="";
            //tao 1 bien luu thoi gian khi nhan vao button hoan thanh
            DateTime timeend = DateTime.UtcNow;

            //q1
            if (rd10Test1a.Checked && gridLoadAns.Rows[0].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[0].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[0].Cells[1].Text + ";";
            }
            else if (rd10Test1b.Checked && gridLoadAns.Rows[1].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[1].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[1].Cells[1].Text + ";";
            }
            else if (rd10Test1c.Checked && gridLoadAns.Rows[2].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[2].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[2].Cells[1].Text + ";";
            }
            else if (rd10Test1d.Checked && gridLoadAns.Rows[3].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[3].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[3].Cells[1].Text + ";";
            }

            //q2
            if (rd10Test2a.Checked && gridLoadAns.Rows[4].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[4].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[4].Cells[1].Text + ";";
            }
            else if (rd10Test2b.Checked && gridLoadAns.Rows[5].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[5].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[5].Cells[1].Text + ";";
            }
            else if (rd10Test2c.Checked && gridLoadAns.Rows[6].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[6].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[6].Cells[1].Text + ";";
            }
            else if (rd10Test2d.Checked && gridLoadAns.Rows[7].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[7].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[7].Cells[1].Text + ";";
            }

            //q3
            if (rd10Test3a.Checked && gridLoadAns.Rows[8].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[8].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[8].Cells[1].Text + ";";
            }
            else if (rd10Test3b.Checked && gridLoadAns.Rows[9].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[9].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[9].Cells[1].Text + ";";
            }
            else if (rd10Test3c.Checked && gridLoadAns.Rows[10].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[10].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[10].Cells[1].Text + ";";
            }
            else if (rd10Test3d.Checked && gridLoadAns.Rows[11].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[11].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[11].Cells[1].Text + ";";
            }

            //q4
            if (rd10Test4a.Checked && gridLoadAns.Rows[12].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[12].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[12].Cells[1].Text + ";";
            }
            else if (rd10Test4b.Checked && gridLoadAns.Rows[13].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[13].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[13].Cells[1].Text + ";";
            }
            else if (rd10Test4c.Checked && gridLoadAns.Rows[14].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[14].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[14].Cells[1].Text + ";";
            }
            else if (rd10Test4d.Checked && gridLoadAns.Rows[15].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[15].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[15].Cells[1].Text + ";";
            }

            //q5
            if (rd10Test5a.Checked && gridLoadAns.Rows[16].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[16].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[16].Cells[1].Text + ";";
            }
            else if (rd10Test5b.Checked && gridLoadAns.Rows[17].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[17].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[17].Cells[1].Text + ";";
            }
            else if (rd10Test5c.Checked && gridLoadAns.Rows[18].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[18].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[18].Cells[1].Text + ";";
            }
            else if (rd10Test5d.Checked && gridLoadAns.Rows[19].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[19].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[19].Cells[1].Text + ";";
            }

            //q6
            if (rd10Test6a.Checked && gridLoadAns.Rows[20].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[20].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[20].Cells[1].Text + ";";
            }
            else if (rd10Test6b.Checked && gridLoadAns.Rows[21].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[21].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[21].Cells[1].Text + ";";
            }
            else if (rd10Test6c.Checked && gridLoadAns.Rows[22].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[22].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[22].Cells[1].Text + ";";
            }
            else if (rd10Test6d.Checked && gridLoadAns.Rows[23].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[23].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[23].Cells[1].Text + ";";
            }

            //q7
            if (rd10Test7a.Checked && gridLoadAns.Rows[24].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[24].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[24].Cells[1].Text + ";";
            }
            else if (rd10Test7b.Checked && gridLoadAns.Rows[25].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[25].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[25].Cells[1].Text + ";";
            }
            else if (rd10Test7c.Checked && gridLoadAns.Rows[26].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[26].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[26].Cells[1].Text + ";";
            }
            else if (rd10Test7d.Checked && gridLoadAns.Rows[27].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[27].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[27].Cells[1].Text + ";";
            }

            //q8
            if (rd10Test8a.Checked && gridLoadAns.Rows[28].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[28].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[28].Cells[1].Text + ";";
            }
            else if (rd10Test8b.Checked && gridLoadAns.Rows[29].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[29].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[29].Cells[1].Text + ";";
            }
            else if (rd10Test8c.Checked && gridLoadAns.Rows[30].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[30].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[30].Cells[1].Text + ";";
            }
            else if (rd10Test8d.Checked && gridLoadAns.Rows[31].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[31].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[31].Cells[1].Text + ";";
            }

            //q9
            if (rd10Test9a.Checked && gridLoadAns.Rows[32].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[32].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[32].Cells[1].Text + ";";
            }
            else if (rd10Test9b.Checked && gridLoadAns.Rows[33].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[33].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[33].Cells[1].Text + ";";
            }
            else if (rd10Test9c.Checked && gridLoadAns.Rows[34].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[34].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[34].Cells[1].Text + ";";
            }
            else if (rd10Test9d.Checked && gridLoadAns.Rows[35].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[35].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[35].Cells[1].Text + ";";
            }

            //q10
            if (rd10Test10a.Checked && gridLoadAns.Rows[36].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[36].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[36].Cells[1].Text + ";";
            }
            else if (rd10Test10b.Checked && gridLoadAns.Rows[37].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[37].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[37].Cells[1].Text + ";";
            }
            else if (rd10Test10c.Checked && gridLoadAns.Rows[38].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[38].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[38].Cells[1].Text + ";";
            }
            else if (rd10Test10d.Checked && gridLoadAns.Rows[39].Cells[3].Text == "1")
            {
                score += 1; correct += 1;
                listAns = listAns + gridLoadAns.Rows[39].Cells[0].Text + ";";
                listQuest = listQuest + gridLoadAns.Rows[39].Cells[1].Text + ";";
            }

            listQuest ="";
            for (int p = 0; p < 10; p++)
            {
                listQuest = listQuest + gridLoadAns.Rows[p*4].Cells[1].Text + ";";
            }

            score = (float)Math.Round(score, 2);          
            
            DateTime date = DateTime.Now; // day la ngay lam bai test

            TimeSpan t = timeend - timebegin;

            int timetest = (int)t.TotalSeconds; // thoi gian test
            int ss = 0, mm = 0;
            if (timetest >= 60) // day la de 10 cau, max time 15p , khong can tinh ra hour, chi doi sang minute
            {
                mm = (int)(timetest / 60);
                ss = timetest - (mm * 60);
            }
            else
            {
                mm = 0;
                ss = timetest;
            }
            if (mm >= 15) // Day la goi de 10 cau, 15p. set max mm = 15
            { mm = 15; ss=0; }
            

            int rate=0;
            if (score >= 8.00 && score < 9.00) { rate = 1; }
            else if (score >= 9.00 && score < 10.00) { rate = 2; }
            else if (score == 10.00) { rate = 4; }

            int iduser = Convert.ToInt32(Session["idlogin"]);
            //Luu bai test vao database
            iTestLog log = new iTestLog();
            log.iUserID = iduser;
            log.iListQuest = listQuest;
            log.iListAns = listAns;
            log.iScore = score;
            log.iScoreRate = rate;
            log.iDateTest = date;
            log.iTime = timetest.ToString();
            data.iTestLogs.InsertOnSubmit(log);
            data.SubmitChanges();
            
            //truyen wa trang thong bao
            Session["Correct"] = correct;
            Session["Num"] = 10;
            Session["Date"] = date;
            Session["Minute"] = mm.ToString();
            Session["Second"] = ss.ToString();
            Session["Score"] = score;
            Session["Bonus"] = rate;
            Response.Redirect("FinalScore.aspx");
            
        }


    }
}