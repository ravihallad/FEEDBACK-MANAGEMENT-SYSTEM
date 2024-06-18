using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace FEEBACK_SYSTEM
{
    public partial class student_view : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\staffdata.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {



        
             
            }
        }

      
        


                  public void loadteachers()
        {
            con.Open();
            string stt = "select * from addstaff where course='" + vcrs.Text + "' and semester='" + vsem.Text + "'";
            SqlCommand cdm = new SqlCommand(stt, con);
            cdm.ExecuteNonQuery();
            DataTable dtta = new DataTable();
            dtta.Load(cdm.ExecuteReader());
            con.Close();
            vdown.DataSource = dtta;
            vdown.DataTextField = "fullname";

            vdown.DataBind();
            vdown.Items.Insert(0, new ListItem("Select", "0"));
        }
    }


}