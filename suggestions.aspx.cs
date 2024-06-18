using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

using System.IO;

namespace FEEBACK_SYSTEM
{
    public partial class suggestions : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\staffdata.mdf;Integrated Security=True;User Instance=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            lbl1.Text = Request.QueryString["crsname"];
            lbl2.Text = Request.QueryString["sem"];
            lbl3.Text = Request.QueryString["teacher"];
            if (!IsPostBack)
            {
                binddata();
            
               
                
            }
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

       

        public void binddata()
        {
            try
            {
                con.Open();
                string st = "select  finaldatabase.semester,finaldatabase.regno,studentdata.studentname, studentdata.lastname,finaldatabase.suggestion from finaldatabase inner join  studentdata on studentdata.registerno=finaldatabase.regno where finaldatabase.course='" + lbl1.Text + "'and  finaldatabase.semester='" + lbl2.Text + "'";
                SqlCommand cmd = new SqlCommand(st, con);
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                GridView2.DataSource = dt;
                GridView2.DataBind();
                con.Close();
            }

            catch (Exception )
            {
                Response.Write("No data to show");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("demo.aspx");
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
       /* public void count()
        {
            con.Open();
            string st = "select count(subject) from finaldatabase where teacher='" + + "'";
            SqlCommand cmd = new SqlCommand(st, con);
            int totalrow = (Int32)cmd.ExecuteScalar();
            con.Close();

        }*/


     
        protected void Button2_Click(object sender, EventArgs e)
        {



            Response.Redirect("generatepdf.aspx");


        }

   

      
    }
}