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
using System.Data.OleDb;
using System.Drawing;
using System.Drawing.Printing;
using System.Threading;
using System.IO;
using System.Text;
using System.Diagnostics;
using System.ComponentModel;
using System.Net;
using System.Net.Mail; 
namespace SchoolWeb
{
    public partial class dailydet : System.Web.UI.Page
    {
        public static int Val_1, Val_2, Available_Stock;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            //--------------------- date returning
            String filename = DateTime.Now.ToString("yyyy-MM-dd");
            TextBox2.Text = filename;
            
            //--------------------- Login Name
            Label1.Text = Request.QueryString["val"];
            Label11.Text = Label1.Text;
            if (Label1.Text == "")
            {
                Response.Redirect("Default.aspx");
            }
            Label5.Text = Label1.Text;
            Label1.Enabled = false;
            TextBox1.Enabled = false;
            TextBox2.Enabled = false;

            //Label3.Text = Request.QueryString["val"];
            String uscode = DateTime.Now.ToString("hhyyyyMMMdd");
            Label10.Text = DateTime.Now.ToString("hhyyyyMMMdd");
            //GETTING DATE
            usercode.Text = uscode;
            //String filename = DateTime.Now.ToString("dd-MMM-yyyy");
            Label3.Text = filename;
            //--------------------- Setting Date in DB
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                TextBox1.Text = TextBox1.Text.ToString().PadLeft(6, '0');
                cmd = new SqlCommand("INSERT INTO dailydetails VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + Label1.Text + "')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Date Created ')</script>");
                con.Close();
            }
            catch
            {
                //Response.Write("<script>alert('Date Created Already')</script>");
            }
            Button4_Click(Button4, null); 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //--------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.Txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label1.Text + " Logged OUT From Daily Details");
                sw.WriteLine(dattim + " --------------------------------------------------------- ");
                sw.Close();
            }
            Response.Redirect("first.aspx?val=" + Label5.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button2.Enabled = false;
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                String str;
                int count;
                str = "select count(*) from dailydetails";//GETTING COUNT
                cmd = new SqlCommand(str, con);
                count = Convert.ToInt16(cmd.ExecuteScalar())+1;
                TextBox1.Text = count.ToString().PadLeft(6, '0');
                con.Close();
                con.Open();
                TextBox1.Text = TextBox1.Text.ToString().PadLeft(6, '0');
                if (TextBox1.Text == "000000")
                {
                    Response.Redirect("Default.aspx");
                }
                //--------------------- UPDATING THE DETAILS TO "DAILYDETAILS" DB
                cmd = new SqlCommand("UPDATE dailydetails SET refno = '" + TextBox1.Text + "',schoolfee = '" + TextBox3.Text + "',smartfee = '" + TextBox4.Text + "',bookfee = '" + TextBox5.Text + "',otherfee = '" + TextBox6.Text + "',reason = '" + TextBox7.Text + "',total = '" + TextBox8.Text + "',updateby = '" + Label1.Text + "' where date = '" + TextBox2.Text + "'", con);
                cmd.ExecuteNonQuery();
                Label2.Text = "Details Updated !!!!!!";
                //LOGGING
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.Txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + " Ref Num " + TextBox1.Text);
                    sw.WriteLine(dattim + " Added on " + TextBox2.Text);
                    sw.WriteLine(dattim + " School Fee " + TextBox3.Text);
                    sw.WriteLine(dattim + " Smart Class Fee " + TextBox4.Text);
                    sw.WriteLine(dattim + " Book Money " + TextBox5.Text);
                    sw.WriteLine(dattim + " Other Fee " + TextBox6.Text);
                    sw.WriteLine(dattim + " Comments " + TextBox7.Text);
                    sw.WriteLine(dattim + " Total Fee " + TextBox8.Text);
                    sw.WriteLine(dattim + " Saved " + TextBox1.Text);
                    sw.WriteLine(dattim + " Added By: " + Label1.Text);
                    sw.WriteLine(dattim + " --------------------------------------------------------- ");
                    sw.Close();
                }
                Response.Write("<script>alert('Today's Fee Details Updated')</script>");
                con.Close();
               //Button13_Click(Button13, null);   // SENDING TEXT SMS
                Button2.Enabled = false;
               Button12_Click(Button12, null); 
                
            }
            catch
            {
                Label2.Text = "Already Stored ";
                Response.Write("<script>alert('Details For Today Already Added')</script>");
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text == "")
            {
                TextBox3.Text = "0";
            }
            if (TextBox4.Text == "")
            {
                TextBox4.Text = "0";
            }
            if (TextBox5.Text == "")
            {
                TextBox5.Text = "0";
            }
            if (TextBox6.Text == "")
            {
                TextBox6.Text = "0";
            }
            //--------------------- ADDING FEE DETAILS
            Int32 val1 = Convert.ToInt32(TextBox3.Text);
            Int32 val2 = Convert.ToInt32(TextBox4.Text);
            Int32 val3 = Convert.ToInt32(TextBox5.Text);
            Int32 val4 = Convert.ToInt32(TextBox6.Text);
            Int32 valtotal = val1 + val2 + val3 + val4;
            TextBox8.Text = valtotal.ToString();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //--------------------- GETTING TOTAL AMOUNT FOR CURRENT DATE
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand();
            String str2 = "SELECT SUM(amt) FROM bill WHERE date ='" +TextBox2.Text +"'";
            cmd = new SqlCommand(str2, con);
            object num = cmd.ExecuteScalar();
            Label3.Text = Convert.ToString(num);
            con.Close();

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            Button3_Click(Button3, null); 
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
            Button3_Click(Button3, null); 
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            Button3_Click(Button3, null); 
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            Button3_Click(Button3, null); 
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button9_Click(object sender, EventArgs e)
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

        protected void Button10_Click(object sender, EventArgs e)
        {
            //------------------ LOGGING
            string data1 = usercode.Text;
            string data2 = Label5.Text;
            Session["data2"] = Label5.Text;
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label2.Text + " Logged IN to Bill");
                sw.Close();
            }
            Response.Redirect(String.Format("Bill.aspx?val={0}&val1={1}", Server.UrlEncode(data1), Server.UrlEncode(data2)));
        
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            //--------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.Txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label1.Text + " Logged OUT From Daily Details");
                sw.WriteLine(dattim + " --------------------------------------------------------- ");
                sw.Close();
            }
            Response.Redirect("CommonTab.aspx?val=" + Label5.Text);
        }

        protected void Button12_Click(object sender, EventArgs e)
        {

            
            Label7.Text = Request.ServerVariables["REMOTE_ADDR"];
            string[] computer_name = System.Net.Dns.GetHostEntry(Request.ServerVariables["remote_addr"]).HostName.Split(new Char[] { '.' });
            String ecn = System.Environment.MachineName;
            Label8.Text = computer_name[0].ToString();

            String dattim1 = DateTime.Now.ToString("yyyy-MMM-dd hh:mm");
            string to = "mdharwin91@gmail.com"; //,jubin61994@gmail.com,anbalmeshak@gmail.com"; //To address    
            string from = "vasanthamschool08@outlook.com"; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = ("<br/><br/><br/><br/><h1><u><b>Today Bill Details</b></u></h1><br/><table border=1><tr><th>Fees</th><th>Amount</tr></td><tr><td>School Fee </td><td>" + TextBox3.Text + "</td></tr><tr><td>Total Fee    </td><td>" + TextBox8.Text + "</td></tr><tr><td>Updated By    </td><td>" + Label1.Text+"</td></tr><tr><td>IP Address</td><td>"+Label7.Text+"</td> </tr><tr><td>Computer Name </td><td>"+Label8.Text+"</td></tr></table>");
            message.Subject = ("Daily Report - " + dattim1);
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
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.Txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + " Email Sent Successfully--------------------------------------- ");
                    sw.Close();
                }
            
                Response.Write("<script>alert('Sent Successfully')</script>");

            }
            catch 
            {
                Response.Write("<script>alert('Sending Failed')</script>");
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.Txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + " Email Sending Failed--------------------------------------- ");
                    sw.Close();
                }
            
            }
 
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            string comment, biller;
            if (TextBox7.Text.Length < 15)
            {
                comment = TextBox7.Text;
            }
            else
            {
                comment = TextBox7.Text.Substring(0, 15);
            }
            if (Label5.Text.Length < 10)
            {
                biller = Label5.Text;
            }
            else
            {
                biller = Label5.Text.Substring(0, 10);
            }
            String dattim1 = DateTime.Now.ToString("yyyy-MM-dd");
            string apiKey = "W9tPUL+1o8Q-GHPeWm9z4uBR19GbuUiMZ8REMs1NhV";
            string numbers = "9894140877"; // in a comma seperated list
            string message = "Collection Details : School Fee Rs "+TextBox3.Text+". Other Fees Rs "+TextBox6.Text+". Comments: "+comment+" Billed by : "+biller+" - Vasantham School ";
            string sender1 = "VASNPS";

            String url = "https://api.textlocal.in/send/?apikey=" + apiKey + 
                "&numbers=91" + numbers + "&message=" + message + "&sender=" + sender1;
            WebClient webClient = new WebClient();
            webClient.Encoding = System.Text.Encoding.UTF8;
            string result = webClient.DownloadString(url);
            //Logging
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\SMS_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + "  [Total Fee SMS] " + result);
                sw.Close();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;
            String str;
            int count;
            str = "select count(*) from stock_list";
            cmd = new SqlCommand(str, con);
            con.Open();
            count = Convert.ToInt16(cmd.ExecuteScalar());
            con.Close();
            con.Open();
            con.Close();
            con.Open();
            string sql_qry = "SELECT " + DropDownList1.SelectedItem.Value + " FROM stock_list WHERE upd_num = '" + count + "'";
            cmd = new SqlCommand(sql_qry, con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Val_1 = Convert.ToInt32(dr.GetString(0).ToString().Split('/')[0]);
                Val_2 = Convert.ToInt32(dr.GetString(0).ToString().Split('/')[1]);
                Available_Stock = Val_1 - Val_2;
                TextBox11.Text = Available_Stock.ToString();
               
            }
            con.Close();
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            TextBox11.Text = null;
            TextBox12.Text = null;
            DropDownList1.Text = "Select";
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            String str;
            int count;
            str = "select count(*) from stock_list";
            cmd = new SqlCommand(str, con);
            con.Open();
            count = Convert.ToInt16(cmd.ExecuteScalar());
            con.Close();
            int diff = Val_2 + Convert.ToInt32(TextBox12.Text);
            string Stk = Val_1.ToString() + "/" + diff.ToString();
            con.Open();
            string str2 = "UPDATE stock_list  SET "+DropDownList1.SelectedItem.Value+" = '" + Stk + "' where upd_num = '" + count + "'";
            cmd = new SqlCommand(str2, con);
            cmd.ExecuteNonQuery();
            con.Close();


            //logging
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Stock_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + "  Update Number : " + count + ", Item : " + DropDownList1.SelectedItem.Text + ",  Available Stock : " + Available_Stock+ ",  Sold Today : " + TextBox12.Text+ ",  Updated by : " + Label11.Text);
                sw.WriteLine(dattim + " ------------------------------------------------------------ ");
                sw.Close();
            }

            // Read file using StreamReader. Reads file line by line    
            string filename = @"C:\School_Web\Logs\Stock_Log.txt";
            using (StreamReader sr = new StreamReader(filename))
            {
                string[] lines = sr.ReadToEnd().Split(new string[] { Environment.NewLine }, StringSplitOptions.RemoveEmptyEntries);
                TextBox14.Text = lines[lines.Length - 2];
                //string[] text1 = lines[lines.Length - 1].Split('{');
                //string[] text2 = text1[1].Split(':');
                //string[] text3 = text2[1].Split(',');
                //TextBox7.Text = text3[0];

            }
            Button14_Click(Button14, null);

        }
    }
}
