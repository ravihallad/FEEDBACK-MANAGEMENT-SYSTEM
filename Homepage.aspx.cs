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
    public partial class Homepage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\staffdata.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con.Open();
                string Get = "SELECT * FROM notification";
                SqlCommand cmd = new SqlCommand(Get, con);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {

                    lbl1.Text = dr["fstheading"].ToString();
                    lbl2.Text = dr["fstpara"].ToString();
                    lbl3.Text = dr["scndheading"].ToString();
                    lbl4.Text = dr["scndpara"].ToString();
                    lbl5.Text = dr["thrdheading"].ToString();
                    lbl6.Text = dr["thrdpara"].ToString();

                }
                con.Close();
            }
        }
    }
}