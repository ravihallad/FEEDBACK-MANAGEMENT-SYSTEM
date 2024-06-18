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
   
    public partial class stdmsg : System.Web.UI.Page
    {
        
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\staffdata.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminhomepage.aspx");
        }
        public void sendmessage(string mobile)
        {

            string destinationaddr = "91" +mobile;
            string message =urtxt.Text + "( Sent By :FeedBack Manangement System Project Team)";

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
              

            }

        }
      




        
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            con.Open();
            string Get = "SELECT * FROM studentdata where year='" + down1.SelectedItem.Text + "'";
            SqlCommand cmd = new SqlCommand(Get,con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                string mobile = dr["mobileno"].ToString();
                sendmessage(mobile);
             
                Response.Write("<script>alert(' message sent');</script>");
            }
            con.Close();
        }

        protected void down1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    
    }
}