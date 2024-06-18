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
    public partial class addc : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\staffdata.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        public void check()
        {
            conn.Open();
            string st = "select * from addcrs ";
            SqlCommand cdm = new SqlCommand(st, conn);
            SqlDataReader dr = cdm.ExecuteReader();
            if (dr.Read())
            {
                Response.Write("you have re entered");

            }
            else
            {
                conn.Open();
                string str = "insert into addcrs(coursename,semester)values('" + TextBox1.Text + "','" + Down1.SelectedItem.Text + "')";
                SqlCommand cmd = new SqlCommand(str, conn);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert(' DATA SAVED');</script>");
                conn.Close();
                TextBox1.Text = "";
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            check();
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminhomepage.aspx");
        }

        protected void Down1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}