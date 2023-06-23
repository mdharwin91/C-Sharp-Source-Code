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
    public partial class adminpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.QueryString["val"];//LOGGING WITH NAME
        }

        protected void Button1_Click(object sender, EventArgs e)
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            //---------------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label1.Text + " Logged IN to STAFF IN/OUT DATA PAGE");
                sw.Close();
            }
            Response.Redirect("stafflogindata.aspx");//REDIRECT TO STAFF LOGIN DATA
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //---------------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label1.Text + " Logged OUT to MAIN PAGE/DEFAULT");
                sw.Close();
            }
            Response.Redirect("default.aspx");//REDIRECT TO STARTING PAGE
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //---------------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label1.Text + " Logged IN to TEST PAGE");
                sw.Close();
            }
            Response.Redirect("CommonTab.aspx");//REDIRECTING TO TEST PAGE
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //---------------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label1.Text + " Logged IN to BILLED BETWEEN PAGE");
                sw.Close();
            }
            Response.Redirect("billedbetween.aspx"); //REDIRECTING TO BILLED BETWEEN
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            //---------------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label1.Text + " Logged IN to TODAY BILLS PAGE");
                sw.Close();
            }
            Response.Redirect("todaybills.aspx");//REDIRECTING TO TODAY BILL DETAILS
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label1.Text + " Logged IN to OLD BILLS PAGE");
                sw.Close();
            }
            Response.Redirect("OldBill.aspx");//REDIRECTING TO OLD BILL DETAILS
        }    
    }
}
