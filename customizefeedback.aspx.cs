using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace FEEBACK_SYSTEM
{
    public partial class customizefeedback : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\staffdata.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string st = "update feedbackcustm set tlbl1='" + TextBox1.Text + "',tlbl2='" + TextBox2.Text + "',tlbl3='" + TextBox3.Text + "',tlbl4='" + TextBox4.Text + "',tlbl5='" + TextBox5.Text + "'";
            SqlCommand cmd = new SqlCommand(st, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('FEEDBACK QUESTIONS ARE UPDATED SUCCESSFULLY THANK YOU..! ');</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminhomepage.aspx");
        }
    }
}