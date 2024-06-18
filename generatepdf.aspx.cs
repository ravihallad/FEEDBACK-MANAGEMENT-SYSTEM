using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;
namespace FEEBACK_SYSTEM
{
    public partial class generatepdf : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\staffdata.mdf;Integrated Security=True;User Instance=True");
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
                down1.DataSource = dt;
                down1.DataTextField = "coursename";

                down1.DataBind();
                down1.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Select", "0"));
            }
        }
        public void loadteachers()
        {
            con.Open();
            string stt = "select fullname from addstaff where course='" + down1.SelectedItem.Text + "' ";
            SqlCommand cdm = new SqlCommand(stt, con);
            cdm.ExecuteNonQuery();
            DataTable dtta = new DataTable();
            dtta.Load(cdm.ExecuteReader());
            con.Close();
            down2.DataSource = dtta;
            down2.DataTextField = "fullname";
            down2.DataBind();
            down2.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Select", "0"));
        }

        public void loadsub()
        {
            con.Open();
            string str = "select subject from addstaff  where fullname='" + down2.SelectedItem.Text + "'";
            SqlCommand cmmd = new SqlCommand(str, con);
            cmmd.ExecuteNonQuery();
            DataTable dat = new DataTable();
            dat.Load(cmmd.ExecuteReader());
            con.Close();
            down3.DataSource = dat;
            down3.DataTextField = "subject";

            down3.DataBind();
            down3.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Select", "0"));

        }
        protected void down1_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadteachers();
        }

        protected void down2_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadsub();
        }

        protected void down3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=FEEDBACKREPORT.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            GridView.AllowPaging = false;
            GridView.DataBind();
           GridView.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A2, 7f, 7f, 7f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }
    }
}