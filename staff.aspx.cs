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
    public partial class staff : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\staffdata.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                conn.Open();
                string st = "select distinct coursename from addcrs";
                SqlCommand cmd = new SqlCommand(st, conn);
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                conn.Close();
                down1.DataSource = dt;
                down1.DataTextField = "coursename";

                down1.DataBind();
                down1.Items.Insert(0, new ListItem("Select", "0"));
              
            }
        }


        public void semdown()
        {
            conn.Open();
            string str = "select * from addcrs  where coursename='" + down1.SelectedItem.Text + "'";
            SqlCommand cmmd = new SqlCommand(str, conn);
            cmmd.ExecuteNonQuery();
            DataTable dat = new DataTable();
            dat.Load(cmmd.ExecuteReader());
            conn.Close();
            down2.DataSource = dat;
            down2.DataTextField = "semester";

            down2.DataBind();
            down2.Items.Insert(0, new ListItem("Select", "0"));
        }
        public void loadteachers()
        {
            conn.Open();
            string stt = "select * from addstaff where course='" + down1.SelectedItem.Text + "' and semester='" + down2.SelectedItem.Text + "'";
            SqlCommand cdm = new SqlCommand(stt, conn);
            cdm.ExecuteNonQuery();
            DataTable dtta = new DataTable();
            dtta.Load(cdm.ExecuteReader());
            conn.Close();
            down3.DataSource = dtta;
            down3.DataTextField = "fullname";

            down3.DataBind();
            down3.Items.Insert(0, new ListItem("Select", "0"));
        }

        public void binddata()
        {
            try
            {
                conn.Open();
                string st = "select  finaldatabase.semester,finaldatabase.teacher,finaldatabase.suggestion from finaldatabase where finaldatabase.course='" + down1.SelectedItem.Text + "'and  finaldatabase.semester='" + down2.SelectedItem.Text + "' and  finaldatabase.teacher='" + down3.SelectedItem.Text + "'";
                SqlCommand cmd = new SqlCommand(st, conn);
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                conn.Close();
            }

            catch (Exception)
            {
                Response.Write("No data to show");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            binddata();
        }

        protected void down1_SelectedIndexChanged(object sender, EventArgs e)
        {
            semdown();
        }

        protected void down2_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadteachers();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }
    }
}