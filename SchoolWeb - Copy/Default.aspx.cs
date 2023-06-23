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
using System.Net;
using System.Net.Sockets;
using System.Text.RegularExpressions;
using System.Net.Mail; 
namespace SchoolWeb
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            //Getting IP address of the remote Machine
            Label3.Text = Request.ServerVariables["REMOTE_ADDR"];

            //Getting Computer Name of the remote Machine
            //string[] computer_name = System.Net.Dns.GetHostEntry(Request.ServerVariables["remote_addr"]).HostName.Split(new Char[] { '.' });
            //String ecn = System.Environment.MachineName;
            Label4.Text = "";
            //computer_name[0].ToString();

            //Label4.Text = "UnKnown-PC";

           
            
            try
            {
                string externalIP;
                externalIP = (new WebClient()).DownloadString("http://checkip.dyndns.org/");
                externalIP = (new Regex(@"\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}")).Matches(externalIP)[0].ToString();
                Label5.Text = externalIP;
                string absoluteurl = HttpContext.Current.Request.Url.AbsoluteUri;
                string absolutepath = HttpContext.Current.Request.Url.AbsolutePath;
                string host = HttpContext.Current.Request.ServerVariables["REMOTE_HOST"];
                string userHost = System.Net.Dns.GetHostName();

                //---------------------------- LOGGING
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Site_Access_IP_Log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + " : Acessed from IP:" + Label5.Text + ", URL used : " + absoluteurl + ", PATH used :" + absolutepath + ", Computer Name :" + host+ ", "+Label4.Text);
                    sw.Close();
                }
                //-------------------------------------
            }catch { Label5.Text = ""; }
            //---------------------------- GETTING DATE WITH SPECIFIED FORMAT
            String filename = DateTime.Now.ToString("dd-MMM-yyyy");
            TextBox4.Text = filename;
            TextBox4.Enabled = false;
            //---------------------------- GETTING DATE WITH FORMAT
            String uscode = DateTime.Now.ToString("hhyyyyMMMdd");
            Label2.Text = uscode;
            usercode.Text = uscode;
            //---------------------------- GETTING STAFF NAME FOR USED ID
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;
            con.Open();
            cmd = new SqlCommand("select * from staffdet where userid = '" + username.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                name.Text = dr.GetString(1).ToString();
            }
            con.Close();
        }
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //---------------------------- ADDING TWO VALUES
            int a = Convert.ToInt32( TextBox2.Text) + Convert.ToInt32(username.Text);
            TextBox3.Text = Convert.ToString(a);
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            //---------------------------- STAFF LOGIN TO STUDENT DETAILS PAGE
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True";
            con.Open();
            string userid = username.Text;
            string password = TextBox2.Text;
            SqlCommand cmd = new SqlCommand("select userid,pwd from staffdet where userid='" + username.Text + "'and pwd='" + TextBox2.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
               Label1.Text = "LOGIN success !!";
               //---------------------------- LOGGING
               using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write)) 
               using (StreamWriter sw = new StreamWriter(fs))
               {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + " " +name.Text + " Logged IN to Staff Common Page");
                    sw.Close();
               }
                Response.Redirect("first.aspx?val=" + name.Text);
            }
            else
            {
                //---------------------------- IF LOGIN UNSUCCESS
                Response.Write("<script>alert('Incorrect Username or Password !!')</script>");
            }
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //---------------------------- STAFF LOGGING TO HALF BILLED DETAILS
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True";
            con.Open();
            string password = TextBox2.Text;
            SqlCommand cmd = new SqlCommand("select userid,pwd from staffdet where userid='" + username.Text + "'and pwd='" + TextBox2.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Label1.Text = "LOGIN success !!";
                //---------------------------- LOGGING
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + " " +name.Text + " Logged IN to Half Billed");
                    sw.Close();
                }
                Response.Redirect("halfbill.aspx?val=" + name.Text);
            }
            else
            {
                Response.Write("<script>alert('Incorrect Username or Password !!')</script>");
            }
            con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //---------------------------- STAFF LOGGING TO BILL PAGE
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True";
            con.Open();
            string userid = username.Text;
            string password = TextBox2.Text;
            SqlCommand cmd = new SqlCommand("select userid,pwd from staffdet where userid='" + username.Text + "'and pwd='" + TextBox2.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Label1.Text = "LOGIN success !!";
                string data1 = usercode.Text;
                string data2 = name.Text;
                Session["data2"] = name.Text;
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim +" "+ name.Text + " Logged IN to Bill");
                    sw.Close();
                }
                Response.Redirect(String.Format("Bill.aspx?val={0}&val1={1}", Server.UrlEncode(data1), Server.UrlEncode(data2)));
            }
            else
            {
                Response.Write("<script>alert('Incorrect Username or Password !!')</script>");
            }
            con.Close();
        
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
        

        protected void Button5_Click(object sender, EventArgs e)
        {
            //---------------------------- STAFF LOGGING TO DAILY DETAILS
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True";
            con.Open();
            string userid = username.Text;
            string password = TextBox2.Text;
            SqlCommand cmd = new SqlCommand("select userid,pwd from staffdet where userid='" + username.Text + "'and pwd='" + TextBox2.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Label1.Text = "LOGIN success !!";
                string data1 = usercode.Text;
                string data2 = name.Text;
                Session["data2"] = name.Text;
                //---------------------------- LOGGING
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.Txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim +" "+ name.Text + " Logged IN to Daily Details");
                    sw.Close();
                }
                Response.Redirect(String.Format("dailydet.aspx?val={0}&val1={1}", Server.UrlEncode(data1), Server.UrlEncode(data2)));
            }
            else
            {
                Response.Write("<script>alert('Incorrect Username or Password !!')</script>");
            }
            con.Close();
        }
        //---------------------------- PAGE REDIRECT TO STAFF ATTENDANCE
        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("staffattendance.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            //---------------------------- ADMIN USERS LOGGING TO ADMIN PAGE
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True";
            con.Open();
            string userid = username.Text;
            string password = TextBox2.Text;
            SqlCommand cmd = new SqlCommand("select userid,pwd from admin where userid='" + username.Text + "'and pwd='" + TextBox2.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Label1.Text = "LOGIN success !!";
                string data1 = usercode.Text;
                string data2 = name.Text;
                Session["data2"] = name.Text;
                //---------------------------- LOGGING
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + " " + name.Text + " Logged IN to Admin Page");
                    sw.Close();
                }
                Response.Redirect("classchange.aspx?val=" + name.Text);
            }
            else
            {
                Response.Write("<script>alert('Incorrect Username or Password !!')</script>");
            }
            con.Close();
        }
        //---------------------------- REDIRECT TO PAID DETAILS
        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("paiddetails.aspx");
        }
        //---------------------------- STAFF LOGIN TO STAFFPAGE(AFTER LOGIN)
        protected void Button9_Click(object sender, EventArgs e)
        {
            Image1.Visible = true;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True";
            
            string userid = username.Text;
            //Response.Redirect("first.aspx?val=" + username.Text);
            string password = TextBox2.Text;
            string data2 = name.Text;
            
            Session["data2"] = name.Text;

            con.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1 = new SqlCommand("select * from staffdet where userid = '" + username.Text + "'", con);
            SqlDataReader dr;
            dr = cmd1.ExecuteReader();
            while (dr.Read())
            {
                if (dr.GetString(7).ToString() != "Active")
                {
                    
                    Response.Redirect("Default.aspx");
                    Response.Write("<script>alert('Incorrect Username or Password !!')</script>");
                }


            }
            con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("select userid,pwd from staffdet where userid='" + username.Text + "'and pwd='" + TextBox2.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Label1.Text = "LOGIN success !!";
                //---------------------------- LOGGING
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + " " + name.Text + " Logged IN Staff Common Page");
                    sw.Close();
                }
                //Response.Redirect("afterlogin.aspx?val=" + name.Text);
                //Button12_Click(Button12, null);
                Response.Redirect("CommonTab.aspx?val=" + name.Text);
            }
            else
            {
                Response.Write("<script>alert('Incorrect Username or Password !!')</script>");
            }
            con.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UnPaid.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("test.aspx");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            //Response.Redirect("http://www.vasanthamschool.co.in/");
            Page.ClientScript.RegisterStartupScript(
    this.GetType(), "OpenWindow", "window.open('http://www.vasanthamschool.co.in/','_newtab');", true);
            


        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (RadioButton1.Checked)
            {
                Button9_Click(Button9, null);
            }
            if (RadioButton2.Checked)
            {
                Button7_Click(Button7, null);
            }
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Image1.Visible = true;
            String dattim1 = DateTime.Now.ToString("yyyy-MMM-dd hh:mm");
            string to = "dharwin.m@outlook.com"; //To address    
            string from = "vasanthamschool08@outlook.com"; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = ("<br/><br/><br/><br/>Your IP Address is : <h1><b>"+Label5.Text+"</b></h1><br/>Logged in by :"+name.Text);
            message.Subject = ("Current IP Address for DHARWIN-PC " + dattim1);
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.live.com", 587); //Outlook smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential("vasanthamschool08@outlook.com", "A@dijju15");
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
                //Response.Write("<script>alert('Sent Successfully')</script>");
            }
            catch
            {
                //Response.Write("<script>alert('Sending Failed')</script>");
            }
            //Image1.Visible = false;
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Button7_Click(Button7, null);
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("version.aspx");
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            Response.Redirect("Studentview.aspx");
        }
    }
}
