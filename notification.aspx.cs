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
    public partial class notification : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\staffdata.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string admlogin = "select * from logindata where username = '" + TextBox1.Text + "'  and  password='" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(admlogin, con);
            cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.Read())
            {
                Response.Write("<script>alert('Entered data is correct ');</script>");

                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
                Label5.Visible = true;
                Label6.Visible = true;
                txt1.Visible = true;
                txt2.Visible = true;
                txt3.Visible = true;
                txt4.Visible = true;
                txt5.Visible = true;
                txt6.Visible = true;
                Button2.Visible = true;

              





            }
            else
            {
               
                Response.Write("<script>alert('Please Enter Correct username or password..! ');</script>");
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                Label5.Visible = false;
                Label6.Visible = false;
                txt1.Visible = false;
                txt2.Visible = false;
                txt3.Visible = false;
                txt4.Visible = false;
                txt5.Visible = false;
                txt6.Visible = false;
            }

  

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            string str = "update notification set fstheading='" + txt1.Text + "',fstpara='" + txt2.Text + "',scndheading='" + txt3.Text + "',scndpara='" + txt4.Text + "',thrdheading='" + txt5.Text + "',thrdpara='" + txt6.Text + "'";
            SqlCommand cmdd = new SqlCommand(str, con);
            cmdd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('YOUR NEW NOTIFICATION HAS BEEN SAVAED SUCESSFULLY THANK YOU..! ');</script>");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }
    }
}