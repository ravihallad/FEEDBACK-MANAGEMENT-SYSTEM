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
    public partial class finalfeedback : System.Web.UI.Page
    {
        int total;
       
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\staffdata.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
         
            if (!IsPostBack)
            {
                 con.Open();
            string Get = "SELECT * FROM feedbackcustm";
            SqlCommand cmd = new SqlCommand(Get,con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                ltxtl.Text = dr["tlbl1"].ToString();
                ltxt2.Text = dr["tlbl2"].ToString();
                ltxt3.Text = dr["tlbl3"].ToString();
                ltxt4.Text = dr["tlbl4"].ToString();
                ltxt5.Text = dr["tlbl5"].ToString();
            }
            con.Close();
        
                Page sl=(Page)Context.Handler;
                if (sl is selectafterlogin)
                {
                    
                    reglbl.Text = ((selectafterlogin)sl).register;
                    
                    crslbl.Text = ((selectafterlogin)sl).course;
                    semlbl.Text = ((selectafterlogin)sl).semester;
                    teclbl.Text = ((selectafterlogin)sl).teacher;
                   
                    sublbl.Text = ((selectafterlogin)sl).subject;
                    reg.Text = reglbl.Text;
                    tec.Text = teclbl.Text;
                    loadteachers();
                    vreg.Text = reglbl.Text;
                    vcrs.Text = crslbl.Text;
                    vsem.Text = semlbl.Text;

                  
                }
                
            }
            reg.Text = reglbl.Text;
          
        }
             int syllabuscoverrate = 0;
            int example = 0;
            int tools = 0;
            int importance = 0;
            int approch = 0;
            int treat = 0;
            int conceptclear = 0;
            int behavior = 0;
            int activity = 0;
            int communication = 0;
        protected void Button1_Click(object sender, EventArgs e)
        {
      
        

            
            if (a1.Checked == true)
            {
                syllabuscoverrate = 5;
            }
            else if (a2.Checked == true) 
            {
                syllabuscoverrate = 4;
            }
            else if (a3.Checked == true)
            {
                syllabuscoverrate = 3;

            }
            else if (a4.Checked == true)
            {
                syllabuscoverrate = 2;

            }
            else
            {
                syllabuscoverrate = 1;
            }



            if (b1.Checked == true)
            {
                example = 5;
            }
            else if (b2.Checked == true)
            {
                example = 4;
            }
            else if (b3.Checked == true)
            {
                example = 3;

            }
            else if (b4.Checked == true)
            {
                example = 2;

            }
            else
            {
                example = 1;
            }

            if (c1.Checked == true)
            {
                tools = 5;
            }
            else if (c2.Checked == true)
            {
                tools = 4;
            }
            else if (c3.Checked == true)
            {
                tools = 3;

            }
            else if (c4.Checked == true)
            {
                tools = 2;

            }
            else
            {
                tools = 1;
            }



            if (d1.Checked == true)
            {
                importance = 5;
            }
            else if (d2.Checked == true)
            {
                importance = 4;
            }
            else if (d3.Checked == true)
            {
                importance = 3;

            }
            else if (d4.Checked == true)
            {
                importance = 2;

            }
            else
            {
                importance = 1;
            }



            if (e1.Checked == true)
            {
                approch = 5;
            }
            else if (e2.Checked == true)
            {
                approch = 4;
            }
            else if (e3.Checked == true)
            {
                approch = 3;

            }
            else if (e4.Checked == true)
            {
                approch = 2;

            }
            else
            {
                approch = 1;
            }



            if (f1.Checked == true)
            {
                treat = 5;
            }
            else if (f2.Checked == true)
            {
                treat = 4;
            }
            else if (f3.Checked == true)
            {
                treat = 3;

            }
            else if (f4.Checked == true)
            {
                treat = 2;

            }
            else
            {
                treat = 1;
            }


            if (g1.Checked == true)
            {
                conceptclear = 5;
            }
            else if (g2.Checked == true)
            {
                conceptclear = 4;
            }
            else if (g3.Checked == true)
            {
                conceptclear = 3;

            }
            else if (g4.Checked == true)
            {
                conceptclear = 2;

            }
            else
            {
                conceptclear = 1;
            }



            if (h1.Checked == true)
            {
                behavior = 5;
            }
            else if (h2.Checked == true)
            {
                behavior = 4;
            }
            else if (h3.Checked == true)
            {
                behavior = 3;

            }
            else if (h4.Checked == true)
            {
                behavior = 2;

            }
            else
            {
                behavior = 1;
            }




            if (i1.Checked == true)
            {
                activity = 5;
            }
            else if (i2.Checked == true)
            {
                activity = 4;
            }
            else if (i3.Checked == true)
            {
                activity = 3;

            }
            else if (i4.Checked == true)
            {
                activity = 2;

            }
            else
            {
                activity = 1;
            }


            if (j1.Checked == true)
            {
                communication = 5;
            }
            else if (j2.Checked == true)
            {
                communication = 4;
            }
            else if (j3.Checked == true)
            {
                communication = 3;

            }
            else if (j4.Checked == true)
            {
                communication = 2;

            }
            else
            {
                communication = 1;
            }

            int totalratings = syllabuscoverrate + example + tools + importance + approch + treat + conceptclear + behavior + activity + communication;
            double rateratio = Convert.ToDouble(totalratings) / 50 * 5;
            total = totalratings;
            con.Open();
            string st = "insert into finaldatabase(regno,course,semester,teacher,subject,syllabuscovered,conceptthroughexample,usedtool,importanceopportunity,teachingapproch,treat,conceptclear,behavior,extracurricularactivities,communication,totalrating,ratio,suggestion)values('" + reg.Text + "','" + crslbl.Text + "','" + semlbl.Text + "','" + tec.Text + "','" + sublbl.Text + "','" + syllabuscoverrate + "','" + example + "','" + tools + "','" + importance + "','" + approch + "','" + treat + "','" + conceptclear + "','" + behavior + "','" + activity + "','" + communication + "','" + totalratings + "','" + rateratio + "','" + sugg.Text + "')";
            SqlCommand cmd = new SqlCommand(st, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('YOUR FEEDBACK IS RECORDED SUCESSFULLY THANK YOU..!');</script>");
            tec.Text = "";
            sugg.Text = "";
            
            a1.Checked = false;
            a2.Checked = false;
            a3.Checked = false;
            a4.Checked = false;
            a5.Checked = false;

            b1.Checked = false;
            b2.Checked = false;
            b3.Checked = false;
            b4.Checked = false;
            b5.Checked = false;

            c1.Checked = false;
            c2.Checked = false;
            c3.Checked = false;
            c4.Checked = false;
            c5.Checked = false;

            d1.Checked = false;
            d2.Checked = false;
            d3.Checked = false;
            d4.Checked = false;
            d5.Checked = false;

            e1.Checked = false;
            e2.Checked = false;
            e3.Checked = false;
            e4.Checked = false;
            e5.Checked = false;

            f1.Checked = false;
            f2.Checked = false;
            f3.Checked = false;
            f4.Checked = false;
            f5.Checked = false;

            g1.Checked = false;
            g2.Checked = false;
            g3.Checked = false;
            g4.Checked = false;
            g5.Checked = false;

            h1.Checked = false;
            h2.Checked = false;
            h3.Checked = false;
            h4.Checked = false;
            h5.Checked = false;

            i1.Checked = false;
            i2.Checked = false;
            i3.Checked = false;
            i4.Checked = false;
            i5.Checked = false;

            j1.Checked = false;
            j2.Checked = false;
            j3.Checked = false;
            j4.Checked = false;
            j5.Checked = false;
            loadtec();
        }
        public void getall()
        {
            con.Open();
            string st = "select count(*) from finaldatabase";
            SqlCommand cmd = new SqlCommand(st, con);
          int totalrow = (Int32)cmd.ExecuteScalar();
            con.Close();
        }
        public void loadteachers()
        {
            con.Open();
            string stt = "select * from addstaff where course='" + crslbl.Text + "' and semester='" + semlbl.Text + "'";
            SqlCommand cdm = new SqlCommand(stt, con);
            cdm.ExecuteNonQuery();
            DataTable dtta = new DataTable();
            dtta.Load(cdm.ExecuteReader());
            con.Close();
            selectdn.DataSource = dtta;
            selectdn.DataTextField = "fullname";

            selectdn.DataBind();
            selectdn.Items.Insert(0, new ListItem("Select", "0"));
        }
    

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton13_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton8_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void a1_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Homepage.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            tec.Text = selectdn.SelectedItem.Text;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
         
        }

        protected void Button5_Click(object sender, EventArgs e)

        {
            reglbl.Text = vreg.Text;
            crslbl.Text = vcrs.Text;
            semlbl.Text = vsem.Text;
            
        }
    
        public void loadtec()
        {
            con.Open();
            string stt = "select * from addstaff where course='" + crslbl.Text + "' and semester='" + semlbl.Text + "'";
            SqlCommand cdm = new SqlCommand(stt, con);
            cdm.ExecuteNonQuery();
            DataTable dtta = new DataTable();
            dtta.Load(cdm.ExecuteReader());
            con.Close();
            vdn.DataSource = dtta;
            vdn.DataTextField = "fullname";

            vdn.DataBind();
            vdn.Items.Insert(0, new ListItem("Select", "0"));
        }
       
        public void loadratings()
       {
           con.Open();
           string retrive = "select * from finaldatabase where regno='" + reglbl.Text + "' and   teacher='" + vdn.SelectedItem.Text + "'";
           SqlCommand cmd = new SqlCommand(retrive, con);
           SqlDataReader dr = cmd.ExecuteReader();
           if (dr.Read())
           {
               rt1.Text = dr["syllabuscovered"].ToString();
               rt2.Text = dr["conceptthroughexample"].ToString();
               rt3.Text = dr["usedtool"].ToString();
               rt4.Text = dr["importanceopportunity"].ToString();
               rt5.Text = dr["teachingapproch"].ToString();
               rt6.Text = dr["treat"].ToString();
               rt7.Text = dr["conceptclear"].ToString();
               rt8.Text = dr["behavior"].ToString();
               rt9.Text = dr["extracurricularactivities"].ToString();
               rt10.Text = dr["communication"].ToString();
               
           }
           else
           {
               Response.Write("<script>alert('NO DATA TO VIEW..!');</script>");
           }
           con.Close();
        }


        

        protected void vdn_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            loadratings();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('YOUR FEEDBACK IS RECORDED SUCESSFULLY THANK YOU..!');</script>");
        }

        protected void sugg_TextChanged(object sender, EventArgs e)
        {

        }

        protected void sugg_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void Button7_Click1(object sender, EventArgs e)
        {
            Response.Redirect("finalfeedback.aspx");  
        }
      
   }


}
