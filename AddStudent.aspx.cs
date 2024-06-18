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
    public partial class AddStudent : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\staffdata.mdf;Integrated Security=True;User Instance=True ");
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
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "coursename";

                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("Select", "0"));
            }
        }
        public void loadsem()
        {
            con.Open();
            string str = "select * from addcrs  where coursename='" + DropDownList1.SelectedItem.Text + "'";
            SqlCommand cmmd = new SqlCommand(str, con);
            cmmd.ExecuteNonQuery();
            DataTable dat = new DataTable();
            dat.Load(cmmd.ExecuteReader());
            con.Close();
            DropDownList2.DataSource = dat;
            DropDownList2.DataTextField = "semester";

            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem("Select", "0"));

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string str = "select * from studentdata where registerno='" + TextBox3.Text + "'";
            SqlCommand sclcmd = new SqlCommand(str, con);
            SqlDataReader dr = sclcmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Write("<script>alert('YOU HAVE RE-ENTERED STUDENT REGISTER NUMBER ..! ');</script>");
              
               
            }
            else
            {

                dr.Close();
                
                string st = "insert into studentdata(studentname,lastname,registerno,mobileno,course,semester,year)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + stdmob.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + year.Text + "' )";
                SqlCommand cmd = new SqlCommand(st, con);
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('STUDENT DATA SAVED THANK YOU..! ');</script>");
                TextBox1.Text = "";
                stdmob.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                year.Text = "";
                
               
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadsem();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminhomepage.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Adminhomepage.aspx");
        }

       
       
    }
}