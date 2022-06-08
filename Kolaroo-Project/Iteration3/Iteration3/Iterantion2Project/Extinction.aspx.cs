using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Iterantion2Project
{
    public partial class Extinction : System.Web.UI.Page
    {

        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["connectionString"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();

            SqlCommand cmd = new SqlCommand();

            cmd.Connection = conn;
            cmd.CommandText = "SELECT Number FROM Total_Join";
            SqlDataReader dr1 = cmd.ExecuteReader();
            dr1.Read();
            int PreTotal = (int)dr1[0];
            dr1.Close();
            int NewTotal = PreTotal + 1;
            cmd.CommandText = "DELETE FROM Total_Join";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "INSERT INTO Total_Join(Number) VALUES( '" + NewTotal + "')";
            cmd.ExecuteNonQuery();
            conn.Close();


            if (CheckBox1.Checked == true & CheckBox2.Checked == true & CheckBox3.Checked == true)
            {
                Label1.Text = "";
                Label4.Text = "Congratulations! You are the ";
                Label2.Text = ""+ NewTotal + "th";
                Label2.ForeColor = System.Drawing.Color.FromName("#c06714");
                Label5.Text = " participant.";

                Label3.Text = "Thank you for your actions that will help protect the habitat of endangered animals!";
            }
            else
            {
                Label1.Text = "Please check all options!";
                Label2.Text = "";
                Label3.Text = "";
            }
        }
    }
}