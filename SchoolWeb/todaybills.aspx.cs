using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

namespace SchoolWeb
{
    public partial class todaybills : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.QueryString["val"];//LOGGING WITH NAME
            if (Label1.Text == "")
            {
                Response.Redirect("Default.aspx");
            }
            ImageButton1.Visible = false;
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
            }
            
            TextBox1.Enabled = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // Response.Redirect("adminpage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //TextBox1.Text = DropDownList1.Text + "-" + DropDownList2.Text + "-" + DropDownList3.Text;
            ImageButton1.Visible = true;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            //---------------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label1.Text + " Logged IN to CLASSCHANGE PAGE");
                sw.Close();
            }
            Response.Redirect("classchange.aspx?val=" + Label1.Text);//REDIRECT TO CLASSCHAGE PAGE
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            //---------------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label1.Text + " Logged IN to STAFF IN/OUT DATA PAGE");
                sw.Close();
            }
            Response.Redirect("stafflogindata.aspx?val=" + Label1.Text);//REDIRECT TO STAFF LOGIN DATA
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label1.Text + " Logged IN to OLD BILLS PAGE");
                sw.Close();
            }
            Response.Redirect("OldBill.aspx?val=" + Label1.Text);//REDIRECTING TO OLD BILL DETAILS
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            //---------------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label1.Text + " Logged IN to BILLED BETWEEN PAGE");
                sw.Close();
            }
            Response.Redirect("billedbetween.aspx?val=" + Label1.Text); //REDIRECTING TO BILLED BETWEEN
        }

        protected void Button12_Click(object sender, EventArgs e)
        {

            Response.Redirect("todaybills.aspx?val=" + Label1.Text);//REDIRECTING TO TODAY BILL DETAILS
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");//REDIRECT TO STARTING PAGE
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            //---------------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label1.Text + " Logged IN to Admin");
                sw.Close();
            }
            Response.Redirect("Adminactivities.aspx?val=" + Label1.Text);//REDIRECTING TO Admin

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //
        }

        [Obsolete]
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    //To Export all pages
                    //GridView1.AllowPaging = false;
                    //this.BindGrid();

                    GridView1.RenderControl(hw);
                    StringReader sr = new StringReader(sw.ToString());
                    Document pdfDoc = new Document(PageSize.A4.Rotate(), 10f, 10f, 10f, 0f);
                    HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                    PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                    try
                    {
                        pdfDoc.Open();
                        htmlparser.Parse(sr);
                        pdfDoc.Close();
                        string FileName = "VNPS_Bill_" + TextBox1.Text;
                        Response.ContentType = "application/pdf";
                        Response.AddHeader("content-disposition", "attachment;filename=" + FileName + ".pdf");
                        Response.Cache.SetCacheability(HttpCacheability.NoCache);
                        Response.Write(pdfDoc);
                        Response.End();
                    }
                    catch (IOException err)
                    {
                        Response.Write("<script>alert('PDF is empty !!!"+err.Source+"')</script>");
                    }
                }
            }
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            TextBox1.Text = DateTime.Now.ToString("yyyy-MM-dd");
            ImageButton1.Visible = true;
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
            Calendar1.Visible = false;
        }
    }
}
