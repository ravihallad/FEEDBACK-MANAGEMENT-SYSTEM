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
    public partial class addstaff : System.Web.UI.Page

    {

        SqlConnection conn=new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\staffdata.mdf;Integrated Security=True;User Instance=True");
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
                crsdn.DataSource = dt;
                crsdn.DataTextField = "coursename";

                crsdn.DataBind();
                crsdn.Items.Insert(0, new ListItem("Select","0"));
            }
        }

        public void loadsem()
        {
            conn.Open();
            string str = "select * from addcrs  where coursename='" + crsdn.SelectedItem.Text + "'";
            SqlCommand cmmd = new SqlCommand(str, conn);
            cmmd.ExecuteNonQuery();
            DataTable dat = new DataTable();
            dat.Load(cmmd.ExecuteReader());
            conn.Close();
            smstr.DataSource = dat;
            smstr.DataTextField = "semester";
           
            smstr.DataBind();
             smstr.Items.Insert(0, new ListItem("Select","0"));
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            conn.Open();
            string str = "insert into addstaff(fullname,course,semester,subject)values('" + TextBox3.Text + "','" + crsdn.SelectedItem.Text + "','" + smstr.SelectedItem.Text + "','" + TextBox4.Text + "')";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Staff DATA SAVED');</script>");
            TextBox3.Text = "";
            TextBox4.Text = "";

            conn.Close();
        }
    
        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void smstr_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void crsdn_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadsem();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminhomepage.aspx");
        }
    }
}