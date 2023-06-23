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
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using iTextSharp.text;
using Microsoft.Office.Interop.Word;
using System.Web.UI.MobileControls;

namespace SchoolWeb
{
    public partial class OldBill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Request.QueryString["val"];//LOGGING WITH NAME
            if (Label2.Text == "")
            {
                Response.Redirect("Default.aspx");
            }

            if (!IsPostBack)
            {
                ImageButton1.Visible = false;
            }

        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView2.Visible = false;
            GridView1.Visible = true;
            ImageButton1.Visible = false;
            TextBox1.Text = TextBox1.Text.ToString().PadLeft(4, '0');
            //--------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + " Searched" + TextBox1.Text);
                //sw.WriteLine(dattim + " --------------------------------------------------------- ");
                sw.Close();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //--------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + " Logged OUT From Admin");
                sw.WriteLine(dattim + " --------------------------------------------------------- ");
                sw.Close();
            }
            Response.Redirect("Default.aspx");
        }
        

        protected void Button13_Click(object sender, EventArgs e)
        {
            //---------------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label2.Text + " Logged IN to CLASSCHANGE PAGE");
                sw.Close();
            }
            Response.Redirect("classchange.aspx?val=" + Label2.Text);//REDIRECT TO CLASSCHAGE PAGE
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            //---------------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label2.Text + " Logged IN to STAFF IN/OUT DATA PAGE");
                sw.Close();
            }
            Response.Redirect("stafflogindata.aspx?val=" + Label2.Text);//REDIRECT TO STAFF LOGIN DATA
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label2.Text + " Logged IN to OLD BILLS PAGE");
                sw.Close();
            }
            Response.Redirect("OldBill.aspx?val=" + Label2.Text);//REDIRECTING TO OLD BILL DETAILS
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            //---------------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label2.Text + " Logged IN to BILLED BETWEEN PAGE");
                sw.Close();
            }
            Response.Redirect("billedbetween.aspx?val=" + Label2.Text); //REDIRECTING TO BILLED BETWEEN
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            //---------------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label2.Text + " Logged IN to TODAY BILLS PAGE");
                sw.Close();
            }
            Response.Redirect("todaybills.aspx?val=" + Label2.Text);//REDIRECTING TO TODAY BILL DETAILS
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
                sw.WriteLine(dattim + " " + Label2.Text + " Logged IN to Admin PAGE");
                sw.Close();
            }
            Response.Redirect("Adminactivities.aspx?val=" + Label2.Text);//REDIRECTING TO TODAY BILL DETAILS
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            GridView2.Visible = true;
            GridView1.Visible = false;
            TextBox1.Text = "";
            var now = DateTime.Now;
            var firstDayCurrentMonth = new DateTime(now.Year, now.Month, 1);

            var lastDayLastMonth = firstDayCurrentMonth.AddDays(-1);

            TextBox3.Text = lastDayLastMonth.ToString("yyyy-MM-dd");
            TextBox2.Text = DateTime.Now.AddMonths(-1).ToString("yyyy-MM-") + "01";
            ImageButton1.Visible = true;
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            GridView2.Visible = true;
            GridView1.Visible = false;
            TextBox1.Text = "";
            var now = DateTime.Now;
            var firstDayCurrentMonth = new DateTime(now.Year, now.Month, 1);

            TextBox3.Text = now.ToString("yyyy-MM-dd");
            TextBox2.Text = firstDayCurrentMonth.ToString("yyyy-MM-dd");
            ImageButton1.Visible = true;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    //To Export all pages
                    //GridView1.AllowPaging = false;
                    //this.BindGrid();

                    GridView2.RenderControl(hw);
                    StringReader sr = new StringReader(sw.ToString());
                    iTextSharp.text.Document pdfDoc = new iTextSharp.text.Document(PageSize.A4.Rotate(), 10f, 10f, 10f, 0f);
                    //xmlWorkerHelper htmlparser = new xmlWorkerHelper(pdfDoc);
                    HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                    PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                    try
                    {
                        pdfDoc.Open();
                        htmlparser.Parse(sr);
                        pdfDoc.Close();
                        string FileName = "VNPS_Bill" + TextBox2.Text + "_to_" + TextBox3.Text;
                        Response.ContentType = "application/pdf";
                        Response.AddHeader("content-disposition", "attachment;filename=" + FileName + ".pdf");
                        Response.Cache.SetCacheability(HttpCacheability.NoCache);
                        Response.Write(pdfDoc);
                        Response.End();
                    }
                    catch (IOException)
                    {
                        Response.Write("<script>alert('PDF is empty')</script>");
                    }
                }
            }
        }


        protected void Button19_Click(object sender, EventArgs e)
        {
            //--------------------- ADDING VALUE TO TEXTBOX FROM DROPDOWNLIST
            //TextBox1.Text = DropDownList3.Text + "-" + DropDownList4.Text + "-" + DropDownList5.Text;
            //TextBox2.Text = DropDownList6.Text + "-" + DropDownList7.Text + "-" + DropDownList8.Text;
            ImageButton1.Visible = true;
            GridView2.Visible = true;
            GridView1.Visible = false;
        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            var now = DateTime.Now;
            var todayDate = now.ToString("yyyy-MM-dd");


            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;
            con.Open();
            cmd = new SqlCommand("select * from bill where date = '" + todayDate + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                GridView2.DataSourceID = "";
                GridView2.DataSource = dr;
                GridView2.DataBind();
            }
            con.Close();
            ImageButton1.Visible = true;
        }
    }
}
