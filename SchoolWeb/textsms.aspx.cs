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
using System.Data.OleDb;
//System.Data.OleDb;
using Microsoft.Office.Interop.Excel;
using Microsoft.Office.Core;
using System.Reflection;
using System.ComponentModel;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Web.Script.Serialization;

namespace SchoolWeb
{
    public partial class textsms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //--------------------- Login Name
            Label2.Text = Request.QueryString["val"];
            if (Label2.Text == "")
            {
                Response.Redirect("Default.aspx");
            }
            TextBox6.Enabled = false;

            // Read file using StreamReader. Reads file line by line    
            string filename = @"C:\School_Web\Logs\SMS_Log.txt";
            using (StreamReader sr = new StreamReader(filename))
            {
                //string[] lines = sr.ReadToEnd().Split(new string[] { Environment.NewLine }, StringSplitOptions.RemoveEmptyEntries);
                //TextBox6.Text = lines[lines.Length - 1];
                //string[] text1 = lines[lines.Length - 1].Split('{');
                //string[] text2 = text1[1].Split(':');
                //string[] text3 = text2[1].Split(',');
                //TextBox7.Text = text3[0];

            }

            



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Coneection String by default empty  
            string ConStr = "";
            //Extantion of the file upload control saving into ext because   
            //there are two types of extation .xls and .xlsx of Excel   
            string ext = Path.GetExtension(FileUpload1.FileName).ToLower();
            //getting the path of the file   
            //string path = Server.MapPath("~/MyFolder/" + FileUpload2.FileName);
            string path = (@"C:\School_Web\Documents\Uploaded_Files_Via_School_Web_App\" + FileUpload1.FileName);

            //saving the file inside the MyFolder of the server  
            FileUpload1.SaveAs(path);
            //Label4.Text = FileUpload2.FileName + "\'s Data showing into the GridView";
            //checking that extantion is .xls or .xlsx  
            if (ext.Trim() == ".xls")
            {
                //connection string for that file which extantion is .xls  
                ConStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\"";
            }
            else if (ext.Trim() == ".xlsx")
            {
                //connection string for that file which extantion is .xlsx  
                ConStr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended Properties=\"Excel 12.0;HDR=Yes;IMEX=2\"";
            }
            //making query  
            string query = "SELECT * FROM [Sheet1$]";
            //Providing connection  
            OleDbConnection conn = new OleDbConnection(ConStr);
            //checking that connection state is closed or not if closed the   
            //open the connection  
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            //create command object  
            OleDbCommand cmd = new OleDbCommand(query, conn);
            // create a data adapter and get the data into dataadapter  
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            //fill the Excel data to data set  
            da.Fill(ds);
            //set data source of the grid view  
            GridView1.DataSource = ds.Tables[0];
            //binding the gridview  
            GridView1.DataBind();
            //close the connection  
            conn.Close(); 
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + "  User " + Label2.Text + ",  triggered bulk SMS");
                sw.Close();
            }
            Int32 v = 1;
            foreach (GridViewRow G1 in GridView1.Rows)
            {
                TextBox1.Text = G1.Cells[0].Text;
                TextBox2.Text = G1.Cells[1].Text;
                TextBox3.Text = G1.Cells[2].Text;
                TextBox4.Text = G1.Cells[3].Text.Substring(0,10);
                TextBox5.Text = G1.Cells[4].Text;
                Label1.Text = v.ToString();

                ///////////////
                
                //Logging
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + "  SL.No " + Label1.Text + "  Name: " + TextBox1.Text + "  STD:" + TextBox2.Text + " Fees:"+TextBox3.Text+" Date:"+TextBox4.Text+" Mobile:"+TextBox5.Text+" SMS Sent");
                    sw.Close();
                }

                v = v + 1;
                ///////////////
                String dattim1 = DateTime.Now.ToString("yyyy-MM-dd");
                string apiKey = "W9tPUL+1o8Q-GHPeWm9z4uBR19GbuUiMZ8REMs1NhV";
                string name = TextBox1.Text;
                string duedate = TextBox4.Text;
                string std = TextBox2.Text;
                string message = "";
                string sender1 = "";
                TextBox1.Text = TextBox1.Text + "'s";
                
                if (RadioButton1.Checked)
                {
                    //message = "Dear Parent, your ward " + TextBox1.Text + "  next fee installment is due on " + TextBox4.Text + " . Kindly pay before " + txt + " .Please ignore if already paid. -Vasantham  School, Maruthakulam. ";
                    //message = "Dear Parent, your ward " + name + " next fee installment is due on " + duedate + " . Kindly pay before " + duedate + " .Please ignore if already paid. -Vasantham School, Maruthakulam.";
                    //message = "Dear Parent, your ward " + TextBox1.Text + " next fee installment is due on " + TextBox4.Text + " . Kindly pay before " + txt + " .Please ignore if already paid. -Vasantham School, Maruthakulam.";
                    message = "Dear Parent, your ward "+TextBox1.Text+" next fee installment is due. Kindly pay before " + TextBox4.Text + ".Please ignore if already paid. -Vasantham School, Maruthakulam.";
                    sender1 = "VNPSFE";
                }
                if (RadioButton2.Checked)
                {

                    message = "Dear " + name + ", Your ward has been admitted in STD " + std + " on " + duedate + ". Thank you for choosing us. - Vasantham School.";//Working 
                    sender1 = "VNPSTX";
                }

                String url = "https://api.textlocal.in/send/?apikey=" + apiKey + "&numbers=91" + TextBox5.Text + "&message=" + message.ToString() + "&sender=" + sender1.ToString();
                WebClient webClient = new WebClient();
                webClient.Encoding = System.Text.Encoding.UTF8;
                string result = webClient.DownloadString(url);
                //Logging
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\SMS_Log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + "  [BULK Fees SMS] " + result);
                    sw.WriteLine(dattim + "#######################################    Message Sent   ####################################### ");
                    sw.Close();
                }

                bool value = result.Contains("failure");
                if(value)
                {

                    //Failure Logging
                    using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Failed_SMS_Log.txt", FileMode.Append, FileAccess.Write))
                    using (StreamWriter sw = new StreamWriter(fs))
                    {
                        String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                        sw.WriteLine(dattim  +" Failed SMS: Name: "+TextBox1.Text+" Number: "+TextBox5.Text+" *** "+ result);
                        sw.WriteLine(dattim + "#######################################    VNPS   ####################################### ");
                        sw.Close();
                    }
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("textsms.aspx?val=" + Label2.Text);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}
