using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Net;
using System.Collections.Specialized;
namespace FEEBACK_SYSTEM
{
    public partial class Adminlogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\staffdata.mdf;Integrated Security=True;User Instance=True");

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string admlogin = "select * from logindata where username = '" + admusr.Text + "'  and  password='" + admpass.Text + "'";
            SqlCommand cmd = new SqlCommand(admlogin, con);
            cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.Read())
            {
                Response.Write("<script>alert('Entered data is correct ');</script>");
                Server.Transfer("adminhomepage.aspx");

            }
            else
            {
                Label5.Text = "Please Enter Correct username or password..!";
            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            admmob.Visible = true;
            Button3.Visible = true;
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
          con.Open();
            string admlog = "select * from logindata where mobilenumber = '" + admmob.Text + "'";
            SqlCommand cmd = new SqlCommand(admlog, con);
            cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Write("<script>alert('ENTERED NUMBER IS  CORRECT OTP WILL BE SENT TO YOUR NUMBER ');</script>");
         //     sendopttoo();  
                admusr.Text = "";
                admpass.Text = "";
                admmob.Text = "";
                admmob.Visible = false;
                Button3.Visible = false;
                Server.Transfer("reenter.aspx");
            }
            else
            {
                
                Response.Write("<script>alert('ENTERED NUMBER/EMAIL IS INCORRECT PLEASE ENTER CORRECT DATA ');</script>");

            }
            
        }


      public void sendopttoo()
        {
            Random random = new Random();
            int value = random.Next(1001, 9999);
            string destinationaddr = "91" + admmob.Text;
            string message = "Your OTP Number is " + value + "( Sent By :BCA DEPT: )";

            String message1 = HttpUtility.UrlEncode(message);

            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "NGM2ZjRhNTI3MDQzN2E0OTQ1NTA2YTQ4NzU2YTMyNmI="},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "BCAVJP"}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);
                Session["otp"] = value;

            }

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }
       
    }
     
}