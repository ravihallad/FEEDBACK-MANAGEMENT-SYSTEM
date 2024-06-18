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
    public partial class studentlogin : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\staffdata.mdf;Integrated Security=True;User Instance=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                
            }
        }

        protected void vryemail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            string regno = "select * from studentdata where registerno = '" + vryfreg.Text + "'  and  mobileno='" + vrymob.Text + "'";
            SqlCommand cmd = new SqlCommand(regno, con);
            cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Response.Write("<script>alert('Entered data is correct OTP Will be sent to your mobile number');</script>");
                  Label6.Visible = true;
                  vryfyotp.Visible = true;
                 Button2.Visible = true;
              //  sendopt();
                 Server.Transfer("selectafterlogin.aspx");
            }
            else
            {

                Response.Write("<script>alert('PLEASE ENTER CORRECT REGISTER NUMBER OR MOBILE NUMBER..!');</script>");
            }


        } 

        protected void Button2_Click(object sender, EventArgs e)
        {
          
            string otp = Session["otp"].ToString();
            if (otp == vryfyotp.Text)
            {

              
            }
           else
           {
                Response.Write("<script>alert('PLEASE ENTER CORRECT OTP WHICH IS SENT TO YOUR MOBILE NUMBER..!');</script>");
           }
      }
        public string stdno
        {
            get
            {
                return vryfreg.Text;
            }
        }
        public void sendopt()
        {
            Random random = new Random();
            int value = random.Next(1001, 9999);
            string destinationaddr = "91" + vrymob.Text;
            string message = "Your OTP Number is " + value + "( Sent By :project traning hub )";
           
            String message1 = HttpUtility.UrlEncode(message);

            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "YQEuKNrAVZ0-HDJTKpKlkVb3INwbSzouaokBMO7k8p"},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "BCAJKD"}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);
                Session["otp"] = value;
            }
        }

        protected void vrymob_TextChanged(object sender, EventArgs e)
        {
           
        }  

        protected void vryfyotp_TextChanged(object sender, EventArgs e)
        {

        }
    }
}