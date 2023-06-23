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

namespace SchoolWeb
{
    public partial class afterlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DATE VALUE
            Label3.Text = Request.QueryString["val"];
            String uscode = DateTime.Now.ToString("hhyyyyMMMdd");
            //GETTING DATE
            usercode.Text = uscode;
            String filename = DateTime.Now.ToString("dd-MMM-yyyy");
            Label3.Text = filename;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label2.Text + " Logged IN to Student Details");
                sw.Close();
            }
            Response.Redirect("first.aspx?val=" + Label2.Text);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\HalfBill\\halfbill_log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label2.Text + " Logged IN to Half Billed");
                sw.Close();
            }
            Response.Redirect("halfbill.aspx?val=" + Label2.Text);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.Txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label2.Text + " Logged IN to Daily Details");
                sw.Close();
            }
            Response.Redirect("dailydet.aspx?val1=" + Label2.Text);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //------------------ LOGGING
            string data1 = usercode.Text;
            string data2 = Label2.Text;
            Session["data2"] = Label2.Text;
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label2.Text + " Logged IN to Bill");
                sw.Close();
            }
            Response.Redirect(String.Format("Bill.aspx?val={0}&val1={1}", Server.UrlEncode(data1), Server.UrlEncode(data2)));
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            //------------------- LOGGING            
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label2.Text + " Logged OUT FROM STAFF MAIN PAGE");
                sw.Close();
            }
            Response.Write("<script>alert('You Have Been Logged Out Successfully')</script>");
            Response.Redirect("default.aspx");//REDIRECTING TO MAIN PAGE
        }
    }
}
