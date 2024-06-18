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
    public partial class updatestudent : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\staffdata.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            string st=" update studentdata set mobileno='"+newmob.Text+"' where registerno='"+TextBox1.Text+"'";
            SqlCommand cmd = new SqlCommand(st, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
           
              Response.Write("<script>alert('MOBILE NUMBER UPDATED SUCESSFULLY THANK YOU..! ');</script>");
              newmob.Text = "";
              TextBox1.Text = "";
        }

        protected void HMBTN_Click(object sender, EventArgs e)
        {
            Server.Transfer("Adminhomepage.aspx");
        }
    }
}