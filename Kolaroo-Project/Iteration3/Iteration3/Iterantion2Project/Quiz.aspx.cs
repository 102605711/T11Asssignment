using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using NPOI.SS.Util;

namespace Iterantion2Project
{
    public partial class Quiz : System.Web.UI.Page
    {
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["connectionString"].ToString();

        int score = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void c2_Click(object sender, EventArgs e)
        {
            t1.Text = "";

            mlvw.SetActiveView(vw1);
        }

        protected void n2_Click(object sender, EventArgs e)
        {
            t2.Text = "";
            try
            {
                if (q1.SelectedItem.Value == "3")
                { score += 1; }
                mlvw.SetActiveView(vw3);
            }
            catch (Exception)
            { t1.Text = "Please select an option before next!"; }

        }

        protected void c3_Click(object sender, EventArgs e)
        {
            t1.Text = "";

            mlvw.SetActiveView(vw2);
        }

        protected void n3_Click(object sender, EventArgs e)
        {
            t3.Text = "";
            try
            {
                if (q2.SelectedItem.Value == "3")
                { score += 1; }
                mlvw.SetActiveView(vw4);
            }
            catch (Exception)
            { t2.Text = "Please select an option before next!"; }
        }

        protected void c4_Click(object sender, EventArgs e)
        {
            t2.Text = "";
            mlvw.SetActiveView(vw3);
        }

        protected void n4_Click(object sender, EventArgs e)
        {
            t4.Text = "";
            try
            {
                if (q3.SelectedItem.Value == "3")
                { score += 1; }
                mlvw.SetActiveView(vw5);
            }
            catch (Exception)
            { t3.Text = "Please select an option before next!"; }
        }

        protected void c5_Click(object sender, EventArgs e)
        {
            t3.Text = "";
            mlvw.SetActiveView(vw4);
        }

        protected void n5_Click(object sender, EventArgs e)
        {
            t5.Text = "";

            try
            {
                if (q4.SelectedItem.Value == "3")
                { score += 1; }
                mlvw.SetActiveView(vw6);
            }
            catch (Exception)
            { t4.Text = "Please select an option before next!"; }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Home/kolaroo");
        }

        protected void c6_Click(object sender, EventArgs e)
        {
            t4.Text = "";
            mlvw.SetActiveView(vw5);
        }


        protected void n6_Click(object sender, EventArgs e)
        {
            int[] index = (int[])Application["AnswerIndex"];


            try
            {

                t5.Text = "";

                int score = 0;



                if (q1.SelectedItem.Value == "" + index[0] + "")
                { score += 1;
                    Label41.Text = "Correct";
                }
                else { Label41.Text = "Incorrect"; }


                if (q2.SelectedItem.Value == "" + index[1] + "")
                { score += 1;
                    Label42.Text = "Correct";
                }
                else { Label42.Text = "Incorrect"; }

                if (q3.SelectedItem.Value == "" + index[2] + "")
                { score += 1; Label43.Text = "Correct";
                }
                else { Label43.Text = "Incorrect"; }

                if (q4.SelectedItem.Value == "" + index[3] + "")
                { score += 1; Label44.Text = "Correct";
                }
                else { Label44.Text = "Incorrect"; }

                if (q5.SelectedItem.Value == "" + index[4] + "")
                { score += 1; Label45.Text = "Correct";
                }
                else { Label45.Text = "Incorrect"; }

                DecimalFormat df = new DecimalFormat("0.00");
                String selfScore = df.Format((float)score /  5 * 100); 
                Result1.Text = "Your correct rate is: " + selfScore + "% Percent";

                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();
                SqlCommand cmd = new SqlCommand();


                cmd.Connection = conn;
                cmd.CommandText = "SELECT score FROM Scores";

                SqlDataReader dr1 = cmd.ExecuteReader();
                int TotalScore = 0;
                int count = 0;
                while (dr1.Read())
                {
                    TotalScore = TotalScore + (int)dr1[0];
                    count += 1;
                }
                dr1.Close();

                
                String maerialRatio = df.Format((float)TotalScore / count/5*100);

                Result2.Text = "The average correct rate is: " + maerialRatio + "% Percent";




                cmd.Connection = conn;
                cmd.CommandText = "INSERT INTO Scores(score) VALUES( '" + score + "')";
                cmd.ExecuteNonQuery();
                conn.Close();

                Label1.Text = question1.Text;
                Label2.Text = q1.Items[0].Text;
                Label3.Text = q1.Items[1].Text;
                Label4.Text = q1.Items[2].Text;
                Label5.Text = q1.Items[3].Text;



                if (q1.SelectedItem.Value == "1")
                { Label2.ForeColor = System.Drawing.Color.FromName("red"); }
                if (q1.SelectedItem.Value == "2")
                { Label3.ForeColor = System.Drawing.Color.FromName("red"); }
                if (q1.SelectedItem.Value == "3")
                { Label4.ForeColor = System.Drawing.Color.FromName("red"); }
                if (q1.SelectedItem.Value == "4")
                { Label5.ForeColor = System.Drawing.Color.FromName("red"); }

                if (index[0] == 1)
                { Label2.ForeColor = System.Drawing.Color.FromName("White"); }
                if (index[0] == 2)
                { Label3.ForeColor = System.Drawing.Color.FromName("White"); }
                if (index[0] == 3)
                { Label4.ForeColor = System.Drawing.Color.FromName("White"); }
                if (index[0] == 4)
                { Label5.ForeColor = System.Drawing.Color.FromName("White"); }

                Label8.Text = question2.Text;
                Label9.Text = q2.Items[0].Text;
                Label10.Text = q2.Items[1].Text;
                Label11.Text = q2.Items[2].Text;
                Label12.Text = q2.Items[3].Text;

                if (q2.SelectedItem.Value == "1")
                { Label9.ForeColor = System.Drawing.Color.FromName("red"); }
                if (q2.SelectedItem.Value == "2")
                { Label10.ForeColor = System.Drawing.Color.FromName("red"); }
                if (q2.SelectedItem.Value == "3")
                { Label11.ForeColor = System.Drawing.Color.FromName("red"); }
                if (q2.SelectedItem.Value == "4")
                { Label12.ForeColor = System.Drawing.Color.FromName("red"); }

                if (index[1] == 1)
                { Label9.ForeColor = System.Drawing.Color.FromName("White"); }
                if (index[1] == 2)
                { Label10.ForeColor = System.Drawing.Color.FromName("White"); }
                if (index[1] == 3)
                { Label11.ForeColor = System.Drawing.Color.FromName("White"); }
                if (index[1] == 4)
                { Label12.ForeColor = System.Drawing.Color.FromName("White"); }

                Label15.Text = question3.Text;
                Label16.Text = q3.Items[0].Text;
                Label17.Text = q3.Items[1].Text;
                Label18.Text = q3.Items[2].Text;
                Label19.Text = q3.Items[3].Text;

                if (q3.SelectedItem.Value == "1")
                { Label16.ForeColor = System.Drawing.Color.FromName("red"); }
                if (q3.SelectedItem.Value == "2")
                { Label17.ForeColor = System.Drawing.Color.FromName("red"); }
                if (q3.SelectedItem.Value == "3")
                { Label18.ForeColor = System.Drawing.Color.FromName("red"); }
                if (q3.SelectedItem.Value == "4")
                { Label19.ForeColor = System.Drawing.Color.FromName("red"); }

                if (index[2] == 1)
                { Label16.ForeColor = System.Drawing.Color.FromName("White"); }
                if (index[2] == 2)
                { Label17.ForeColor = System.Drawing.Color.FromName("White"); }
                if (index[2] == 3)
                { Label18.ForeColor = System.Drawing.Color.FromName("White"); }
                if (index[2] == 4)
                { Label19.ForeColor = System.Drawing.Color.FromName("White"); }

                Label22.Text = question4.Text;
                Label23.Text = q4.Items[0].Text;
                Label24.Text = q4.Items[1].Text;
                Label25.Text = q4.Items[2].Text;
                Label26.Text = q4.Items[3].Text;

                if (q4.SelectedItem.Value == "1")
                { Label23.ForeColor = System.Drawing.Color.FromName("red"); }
                if (q4.SelectedItem.Value == "2")
                { Label24.ForeColor = System.Drawing.Color.FromName("red"); }
                if (q4.SelectedItem.Value == "3")
                { Label25.ForeColor = System.Drawing.Color.FromName("red"); }
                if (q4.SelectedItem.Value == "4")
                { Label26.ForeColor = System.Drawing.Color.FromName("red"); }

                if (index[3] == 1)
                { Label23.ForeColor = System.Drawing.Color.FromName("White"); }
                if (index[3] == 2)
                { Label24.ForeColor = System.Drawing.Color.FromName("White"); }
                if (index[3] == 3)
                { Label25.ForeColor = System.Drawing.Color.FromName("White"); }
                if (index[3] == 4)
                { Label26.ForeColor = System.Drawing.Color.FromName("White"); }

                Label29.Text = question5.Text;
                Label30.Text = q5.Items[0].Text;
                Label31.Text = q5.Items[1].Text;
                Label32.Text = q5.Items[2].Text;
                Label33.Text = q5.Items[3].Text;

                if (q5.SelectedItem.Value == "1")
                { Label30.ForeColor = System.Drawing.Color.FromName("red"); }
                if (q5.SelectedItem.Value == "2")
                { Label31.ForeColor = System.Drawing.Color.FromName("red"); }
                if (q5.SelectedItem.Value == "3")
                { Label32.ForeColor = System.Drawing.Color.FromName("red"); }
                if (q5.SelectedItem.Value == "4")
                { Label33.ForeColor = System.Drawing.Color.FromName("red"); }

                if (index[4] == 1)
                { Label30.ForeColor = System.Drawing.Color.FromName("White"); }
                if (index[4] == 2)
                { Label31.ForeColor = System.Drawing.Color.FromName("White"); }
                if (index[4] == 3)
                { Label32.ForeColor = System.Drawing.Color.FromName("White"); }
                if (index[4] == 4)
                { Label33.ForeColor = System.Drawing.Color.FromName("White"); }



                mlvw.SetActiveView(vw7);
            }
            catch (Exception)
            {
                t5.Text = "Please select an option before next!";
            }



        }

        public int[] GenerateUniqueRandom(int minValue, int maxValue, int n)
        {

            if (n > maxValue - minValue + 1)
                n = maxValue - minValue + 1;

            int maxIndex = maxValue - minValue + 2;
            int[] indexArr = new int[maxIndex];
            for (int i = 0; i < maxIndex; i++)
            {
                indexArr[i] = minValue - 1;
                minValue++;
            }

            Random ran = new Random();
            int[] randNum = new int[n];
            int index;
            for (int j = 0; j < n; j++)
            {
                index = ran.Next(1, maxIndex - 1);


                randNum[j] = indexArr[index];


                indexArr[index] = indexArr[maxIndex - 1];
                maxIndex--;
            }
            return randNum;
        }

        protected void StartQuiz_Click(object sender, EventArgs e)
        {
            int[] a = GenerateUniqueRandom(1, 6, 5);



            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();

            SqlCommand cmd = new SqlCommand();

            cmd.Connection = conn;
            cmd.CommandText = "SELECT Questions,A,B,C,D,Answer,FeedBack,Picture,URL FROM QuizQuestion where Id = " + a[0] + "";
            SqlDataReader dr1 = cmd.ExecuteReader();
            dr1.Read();
            question1.Text = (string)dr1[0];
            q1.Items[0].Text = (string)dr1[1];
            q1.Items[1].Text = (string)dr1[2];
            q1.Items[2].Text = (string)dr1[3];
            q1.Items[3].Text = (string)dr1[4];
            int Answer1 = (int)dr1[5];
            Label7.Text = (string)dr1[6];
            string p1 = (string)dr1[7];
            Image1.ImageUrl = p1.Trim();
            string u1 = (string)dr1[8];
            HyperLink1.NavigateUrl = u1.Trim();
            dr1.Close();


            cmd.CommandText = "SELECT Questions,A,B,C,D,Answer,FeedBack,Picture,URL FROM QuizQuestion where Id = " + a[1] + "";
            SqlDataReader dr2 = cmd.ExecuteReader();
            dr2.Read();
            question2.Text = (string)dr2[0];
            q2.Items[0].Text = (string)dr2[1];
            q2.Items[1].Text = (string)dr2[2];
            q2.Items[2].Text = (string)dr2[3];
            q2.Items[3].Text = (string)dr2[4];
            int Answer2 = (int)dr2[5];
            Label14.Text = (string)dr2[6];
            string p2 = (string)dr2[7];
            Image2.ImageUrl = p2.Trim();
            string u2 = (string)dr2[8];
            HyperLink2.NavigateUrl = u2.Trim();
            dr2.Close();


            cmd.CommandText = "SELECT Questions,A,B,C,D,Answer,FeedBack,Picture,URL FROM QuizQuestion where Id = " + a[2] + "";
            SqlDataReader dr3 = cmd.ExecuteReader();
            dr3.Read();
            question3.Text = (string)dr3[0];
            q3.Items[0].Text = (string)dr3[1];
            q3.Items[1].Text = (string)dr3[2];
            q3.Items[2].Text = (string)dr3[3];
            q3.Items[3].Text = (string)dr3[4];
            int Answer3 = (int)dr3[5];
            Label21.Text = (string)dr3[6];
            string p3 = (string)dr3[7];
            Image3.ImageUrl = p3.Trim();
            string u3 = (string)dr3[8];
            HyperLink3.NavigateUrl = u3.Trim();
            dr3.Close();


            cmd.CommandText = "SELECT Questions,A,B,C,D,Answer,FeedBack,Picture,URL FROM QuizQuestion where Id = " + a[3] + "";
            SqlDataReader dr4 = cmd.ExecuteReader();
            dr4.Read();
            question4.Text = (string)dr4[0];
            q4.Items[0].Text = (string)dr4[1];
            q4.Items[1].Text = (string)dr4[2];
            q4.Items[2].Text = (string)dr4[3];
            q4.Items[3].Text = (string)dr4[4];
            int Answer4 = (int)dr4[5];
            Label28.Text = (string)dr4[6];
            string p4 = (string)dr4[7];
            Image4.ImageUrl = p4.Trim();
            string u4 = (string)dr4[8];
            HyperLink4.NavigateUrl = u4.Trim();
            dr4.Close();


            cmd.CommandText = "SELECT Questions,A,B,C,D,Answer,FeedBack,Picture,URL FROM QuizQuestion where Id = " + a[4] + "";
            SqlDataReader dr5 = cmd.ExecuteReader();
            dr5.Read();
            question5.Text = (string)dr5[0];
            q5.Items[0].Text = (string)dr5[1];
            q5.Items[1].Text = (string)dr5[2];
            q5.Items[2].Text = (string)dr5[3];
            q5.Items[3].Text = (string)dr5[4];
            int Answer5 = (int)dr5[5];
            Label35.Text = (string)dr5[6];
            string p5 = (string)dr5[7];
            Image5.ImageUrl = p5.Trim();
            string u5 = (string)dr5[8];
            HyperLink5.NavigateUrl = u5.Trim();
            dr5.Close();

            conn.Close();

            mlvw.SetActiveView(vw2);

            int[] index = { Answer1, Answer2, Answer3, Answer4, Answer5 };
            Application["AnswerIndex"] = index;

        }



        protected void Restart_Click(object sender, EventArgs e)
        {

            q1.ClearSelection();
            q2.ClearSelection();
            q3.ClearSelection();
            q4.ClearSelection();
            q5.ClearSelection();

            Label2.ForeColor = System.Drawing.Color.FromName("Black");
            Label3.ForeColor = System.Drawing.Color.FromName("Black");
            Label4.ForeColor = System.Drawing.Color.FromName("Black");
            Label5.ForeColor = System.Drawing.Color.FromName("Black");

            Label9.ForeColor = System.Drawing.Color.FromName("Black");
            Label10.ForeColor = System.Drawing.Color.FromName("Black");
            Label11.ForeColor = System.Drawing.Color.FromName("Black");
            Label12.ForeColor = System.Drawing.Color.FromName("Black");

            Label16.ForeColor = System.Drawing.Color.FromName("Black");
            Label17.ForeColor = System.Drawing.Color.FromName("Black");
            Label18.ForeColor = System.Drawing.Color.FromName("Black");
            Label19.ForeColor = System.Drawing.Color.FromName("Black");

            Label23.ForeColor = System.Drawing.Color.FromName("Black");
            Label24.ForeColor = System.Drawing.Color.FromName("Black");
            Label25.ForeColor = System.Drawing.Color.FromName("Black");
            Label26.ForeColor = System.Drawing.Color.FromName("Black");

            Label30.ForeColor = System.Drawing.Color.FromName("Black");
            Label31.ForeColor = System.Drawing.Color.FromName("Black");
            Label32.ForeColor = System.Drawing.Color.FromName("Black");
            Label33.ForeColor = System.Drawing.Color.FromName("Black");


            mlvw.SetActiveView(vw1);
            
        }
    }
}
