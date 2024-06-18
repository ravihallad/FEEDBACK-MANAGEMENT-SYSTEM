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
    public partial class demo : System.Web.UI.Page
    {
        int totalrow;
           SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\staffdata.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con.Open();
                string st = "select distinct coursename from addcrs";
                SqlCommand cmd = new SqlCommand(st, con);
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                con.Close();
                down1.DataSource = dt;
                down1.DataTextField = "coursename";

                down1.DataBind();
                down1.Items.Insert(0, new ListItem("Select", "0"));
            }
        }

        public void loadsem()
        {
            con.Open();
            string str = "select * from addcrs  where coursename='" + down1.SelectedItem.Text + "'";
            SqlCommand cmmd = new SqlCommand(str, con);
            cmmd.ExecuteNonQuery();
            DataTable dat = new DataTable();
            dat.Load(cmmd.ExecuteReader());
            con.Close();
            down2.DataSource = dat;
            down2.DataTextField = "semester";
          
            down2.DataBind();
            down2.Items.Insert(0, new ListItem("Select", "0"));

        }

        public void loadteachers()
        {
            con.Open();
            string stt = "select fullname from addstaff where course='" + down1.SelectedItem.Text + "' and semester='" + down2.SelectedItem.Text + "'";
            SqlCommand cdm = new SqlCommand(stt, con);
            cdm.ExecuteNonQuery();
            DataTable dtta = new DataTable();
            dtta.Load(cdm.ExecuteReader());
            con.Close();
            down3.DataSource = dtta;
            down3.DataTextField = "fullname";
            down3.DataBind();
            down3.Items.Insert(0, new ListItem("Select", "0"));
        }
       
       
 

        public void countall()
        {
            con.Open();
            string st = "select count(*) from finaldatabase";
            SqlCommand cmd = new SqlCommand(st, con);
            totalrow = (Int32)cmd.ExecuteScalar();
            con.Close();
        }



        public void loadfeedback()
        {
            con.Open();

            string get = @"select      SUM(syllabuscovered) AS covered, SUM(conceptthroughexample) AS concept, SUM(usedtool) AS tool, SUM(importanceopportunity) AS important,SUM(teachingapproch) AS approch, SUM(treat) AS tret, SUM(conceptclear) AS clear, SUM(behavior) AS behav, SUM(extracurricularactivities) AS activity, SUM(communication) AS communicate,  (SELECT     COUNT(*) AS COUNT FROM           finaldatabase WHERE      (course ='" + down1.SelectedItem.Text + "') and semester='" + down2.SelectedItem.Text + "' and teacher='" + down3.SelectedItem.Text + "') AS COUNT FROM          finaldatabase AS finaldatabase WHERE     (course = '" + down1.SelectedItem.Text + "') and semester='" + down2.SelectedItem.Text + "' and teacher='" + down3.SelectedItem.Text + "'";
            SqlCommand cmd = new SqlCommand(get, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string vrr1 = dr["covered"].ToString();
                string count = dr["count"].ToString();
                int res1 = (Convert.ToInt32(vrr1) / Convert.ToInt32(count));
                vr1.Text = res1.ToString();

                string vrr2 = dr["concept"].ToString();
                string count1 = dr["count"].ToString();
                int res2 = (Convert.ToInt32(vrr2) / Convert.ToInt32(count1));
                vr2.Text = res2.ToString();

                string vrr3 = dr["tool"].ToString();
                string count2 = dr["count"].ToString();
                int res3 = (Convert.ToInt32(vrr3) / Convert.ToInt32(count));
                vr3.Text = res3.ToString();

                string vrr4 = dr["important"].ToString();
                string count3 = dr["count"].ToString();
                int res4 = (Convert.ToInt32(vrr4) / Convert.ToInt32(count1));
                vr4.Text = res4.ToString();

                string vrr5 = dr["approch"].ToString();
                string count4 = dr["count"].ToString();
                int res5 = (Convert.ToInt32(vrr5) / Convert.ToInt32(count));
                vr5.Text = res5.ToString();

                string vrr6 = dr["tret"].ToString();
                string count5 = dr["count"].ToString();
                int res6 = (Convert.ToInt32(vrr6) / Convert.ToInt32(count1));
                vr6.Text = res6.ToString();


                string vrr7 = dr["clear"].ToString();
                string count6 = dr["count"].ToString();
                int res7 = (Convert.ToInt32(vrr7) / Convert.ToInt32(count));
                vr7.Text = res7.ToString();

                string vrr8 = dr["behav"].ToString();
                string count7 = dr["count"].ToString();
                int res8 = (Convert.ToInt32(vrr8) / Convert.ToInt32(count1));
                vr8.Text = res8.ToString();

                string vrr9 = dr["activity"].ToString();
                string count8 = dr["count"].ToString();
                int res9 = (Convert.ToInt32(vrr9) / Convert.ToInt32(count));
                vr9.Text = res9.ToString();

                string vrr10 = dr["communicate"].ToString();
                string count9 = dr["count"].ToString();
                int res10 = (Convert.ToInt32(vrr10) / Convert.ToInt32(count1));
                vr10.Text = res10.ToString();



            }
            con.Close();
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/suggestions.aspx?crsname=" + down1.SelectedItem.Text + "&sem=" + down2.SelectedItem.Text + "&teacher=" + down3.SelectedItem.Text);
            countall();
            
        }

        protected void down1_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadsem();
           
        }

        protected void down2_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadteachers();
        }

        protected void down3_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadfeedback();

           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminhomepage.aspx");
        }

      
            
           
        }

       

        
    
}