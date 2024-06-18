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
    public partial class selectafterlogin : System.Web.UI.Page
    {
        
        SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\staffdata.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Page reg = (Page)Context.Handler;
                if (reg is studentlogin)
                {
                    regno.Text =((studentlogin)reg).stdno;
                }
                conn.Open();
                string st = "select distinct coursename from addcrs";
                SqlCommand cmd = new SqlCommand(st, conn);
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                conn.Close();
                stdcrs.DataSource = dt;
                stdcrs.DataTextField = "coursename";

                stdcrs.DataBind();
                stdcrs.Items.Insert(0, new ListItem("Select", "0"));
            }
        }
  


    public void loadsem()
{
    conn.Open();
    string str = "select * from addcrs  where coursename='" + stdcrs.SelectedItem.Text+ "'";
            SqlCommand cmmd = new SqlCommand(str, conn);
            cmmd.ExecuteNonQuery();
            DataTable dat = new DataTable();
            dat.Load(cmmd.ExecuteReader());
            conn.Close();
            stdsmstr.DataSource = dat;
            stdsmstr.DataTextField = "semester";
          
            stdsmstr.DataBind();
            stdsmstr.Items.Insert(0, new ListItem("Select", "0"));
}
    public void loadteachers()
    {
        conn.Open();
        string stt = "select * from addstaff where course='" + stdcrs.SelectedItem.Text + "' and semester='" + stdsmstr.SelectedItem.Text + "'";
        SqlCommand cdm = new SqlCommand(stt, conn);
        cdm.ExecuteNonQuery();
        DataTable dtta = new DataTable();
        dtta.Load(cdm.ExecuteReader());
        conn.Close();
        stdtchr.DataSource = dtta;
        stdtchr.DataTextField = "fullname";

        stdtchr.DataBind();
        stdtchr.Items.Insert(0, new ListItem("Select", "0"));
    }



    


        protected void stdcrs_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadsem();
        }

        protected void stdsmstr_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadteachers();
           
        }

      

        protected void Button1_Click1(object sender, EventArgs e)
        {
           
            
            Server.Transfer("finalfeedback.aspx");
        }
        public string register
        {
            get
            {
                return regno.Text;
            }
        }
        
        public string course
        {
            get
            {
                return stdcrs.SelectedItem.Text;
            }     
        }
        public string semester
        {
            get
            {
                return stdsmstr.SelectedItem.Text;
            }
        }
        public string teacher
        {
            get
            {
                return stdtchr.SelectedItem.Text;
            }
        }
        public string subject
        {
            get
            {
                return txtsubject.Text;
            }
        }
    }
}