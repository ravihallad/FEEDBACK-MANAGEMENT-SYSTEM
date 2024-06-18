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
    public partial class reenter : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\staffdata.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();
            string st = " update logindata set password='" + cnfrmpass.Text + "'";
            SqlCommand cmd = new SqlCommand(st, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('PASSWORD UPDATED SUCESSFULLY THANK YOU..! ');</script>");
            lbl4.Visible = true;
            Txt3.Visible = true;
            Btn3.Visible = true;
            lbl3.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
         /* string otp = Session["otp"].ToString();
            if (otp == txtotp.Text)
            {*/

            lbl1.Visible = true;
            lbl2.Visible = true;


            Button1.Visible = true;

            Txt1.Visible = true;
            cnfrmpass.Visible = true;

            //  }
            //   else
            //  {
            //      Label6.Text = "Please Enter Correct OTP!";
            //  }  

       
        }
    

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void cnfrmpass_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Btn3_Click(object sender, EventArgs e)
        {
       
            con.Open();
            string st = " update logindata set mobilenumber='" + Txt3.Text + "'";
            SqlCommand cmd = new SqlCommand(st, con);
            cmd.ExecuteNonQuery();
            con.Close();
          
            Response.Write("<script>alert('MOBILE NUMBER HAS NEEN UPDATED SUCESSFULLY.. THANK YOU..! ');</script>");
            Response.Redirect("Adminlogin.aspx");
        }

        protected void Txt3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminlogin.aspx");
        }
    }
}