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

namespace SchoolWeb
{
    public partial class stu_bulk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //TextBox1.Visible = true;
            //TextBox2.Visible = true;
            //TextBox3.Visible = true;
            //TextBox4.Visible = true;
            //TextBox5.Visible = true;
            //TextBox6.Visible = true;
            //TextBox7.Visible = true;
            //TextBox8.Visible = true;
            //TextBox9.Visible = true;
            //TextBox10.Visible = true;
            //TextBox11.Visible = true;
            Button3.Visible = false;
            CheckBox1.Checked = true;
            Label3.Text = DateTime.Now.ToString("hhyyyyMMMdd");
            
            //GridView1.DataBind();
            Label1.Text = Request.QueryString["val"];
            if (Label1.Text == "")
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile == true)
            {
                //Coneection String by default empty  
                string ConStr = "";
                //Extantion of the file upload control saving into ext because   
                //there are two types of extation .xls and .xlsx of Excel   
                string ext = Path.GetExtension(FileUpload1.FileName).ToLower();
                //getting the path of the file   
                //string path = Server.MapPath("~/MyFolder/" + FileUpload2.FileName);
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                string path = (@"C:\School_Web\Documents\Uploaded_Files_Via_School_Web_App\" + dattim+".xlsx");

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
                    ConStr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended Properties=\"Excel 12.0 Xml;HDR=Yes;IMEX=2\"";
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
            else
            {
                Label2.Text = "No File added";
            }
            if (FileUpload1.HasFile == true)
            {
                Button3.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Default.aspx");
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + "  User " + Label1.Text + ",  triggered bulk Upload");
                sw.Close();
            }
            Int32 v = 1;
            SqlConnection con1 = new SqlConnection();
            con1.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlCommand cmd1 = new SqlCommand();
           
                foreach (GridViewRow G1 in GridView1.Rows)
                {
                    Label2.Text = "Forloop";
                    TextBox1.Text = G1.Cells[0].Text;
                    TextBox2.Text = G1.Cells[1].Text;
                    TextBox3.Text = G1.Cells[2].Text;
                if (TextBox3.Text == "LKG")
                {
                    TextBox4.Text = "L.K.G";
                }
                if (TextBox3.Text == "UKG")
                {
                    TextBox4.Text = "U.K.G";
                }
                TextBox4.Text = G1.Cells[3].Text;
                //TextBox4.Text = TextBox4.Text.ToString("yyyy-MM-dd");
                if ((TextBox4.Text[2].ToString() == "/") || (TextBox4.Text[4].ToString() == "/"))
                {
                    TextBox4.Text = TextBox4.Text.ToString().Replace("/", "-");
                }

                if (TextBox4.Text[2].ToString() == "-")
                {
                if (TextBox4.Text.Length >= 10)
                {
                    TextBox4.Text = TextBox4.Text.Substring(0, 10);
                }
                    TextBox4.Text = DateTime.ParseExact(TextBox4.Text, "dd-MM-yyyy", System.Globalization.CultureInfo.InvariantCulture).ToString("yyyy-MM-dd", System.Globalization.CultureInfo.InvariantCulture);
                }
                if (TextBox4.Text[4].ToString() == "-")
                {
                    TextBox4.Text = TextBox4.Text.Substring(0, 10);
                    TextBox4.Text = DateTime.ParseExact(TextBox4.Text, "yyyy-MM-dd", System.Globalization.CultureInfo.InvariantCulture).ToString("yyyy-MM-dd", System.Globalization.CultureInfo.InvariantCulture);
                } 

                TextBox5.Text = G1.Cells[4].Text;
                TextBox6.Text = G1.Cells[5].Text;
                if (TextBox6.Text[2].ToString() == "-")
                {
                    TextBox6.Text = TextBox6.Text.Substring(0, 10);
                    TextBox6.Text = DateTime.ParseExact(TextBox6.Text, "dd-MM-yyyy", System.Globalization.CultureInfo.InvariantCulture).ToString("yyyy-MM-dd", System.Globalization.CultureInfo.InvariantCulture);
                }
                //TextBox7.Text = G1.Cells[6].Text.Substring(0, 10);
                //TextBox7.Text = DateTime.ParseExact(TextBox7.Text, "yyyy-MM-dd", System.Globalization.CultureInfo.InvariantCulture).ToString("yyyy-MM-dd", System.Globalization.CultureInfo.InvariantCulture);
                TextBox8.Text = G1.Cells[7].Text;
                TextBox9.Text = G1.Cells[8].Text;
                //Label2.Text = v.ToString();
                try
                {

                    con1.Open();
                    TextBox1.Text = TextBox1.Text.ToString().PadLeft(4, '0');
                    //TextBox2.Text = TextBox2.Text + " ." + TextBox20.Text;
                    cmd = new SqlCommand("insert into stddet values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox11.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')", con1);
                    cmd.ExecuteNonQuery();
                
                    if (CheckBox1.Checked == true)
                        {
                            cmd1 = new SqlCommand("INSERT into bill_det values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox10.Text + "','" + TextBox10.Text + "','" + TextBox10.Text + "','" + TextBox10.Text + "','" + TextBox10.Text + "','" + TextBox10.Text + "','" + TextBox10.Text + "','" + TextBox10.Text + "','" + TextBox10.Text + "','" + TextBox10.Text + "','" + TextBox10.Text + "','" + TextBox10.Text + "','" + TextBox10.Text + "','" + TextBox10.Text + "','" + TextBox10.Text + "','" + TextBox10.Text + "')", con1);
                            cmd1.ExecuteNonQuery();
                        }

                        //Response.Write("<script>alert('Student Details Created')</script>");
                        Label2.Text = v.ToString() + " Student(s) data uploaded";
                        con1.Close();

                        //Logging
                        using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
                        using (StreamWriter sw = new StreamWriter(fs))
                        {
                            String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                            //sw.WriteLine(dattim + "  SL.No " + Label1.Text + "  Name: " + TextBox1.Text + "  STD:" + TextBox2.Text + " Fees:" + TextBox3.Text + " Date:" + TextBox4.Text + " Mobile:" + TextBox5.Text + " SMS Sent");
                            sw.WriteLine(dattim + "Adm_No :" + TextBox1.Text + "Name :" + TextBox2.Text + "STD :" + TextBox3.Text + "DOJ :" + TextBox4.Text + "EMIS :" + TextBox5.Text + "DOB :" + TextBox6.Text + "DOL :" + TextBox7.Text + "Free Edu :" + TextBox8.Text + "Mobile :" + TextBox9.Text);
                            sw.WriteLine(dattim + "Added Successfully");
                            sw.Close();
                        }
                        v += 1;
                    }
                    catch
                    {
                        //Logging
                        using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
                        using (StreamWriter sw = new StreamWriter(fs))
                        {
                            String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                            //sw.WriteLine(dattim + "  SL.No " + Label1.Text + "  Name: " + TextBox1.Text + "  STD:" + TextBox2.Text + " Fees:" + TextBox3.Text + " Date:" + TextBox4.Text + " Mobile:" + TextBox5.Text + " SMS Sent");
                            sw.WriteLine(dattim + "Adm_No :" + TextBox1.Text + "Name :" + TextBox2.Text + "STD :" + TextBox3.Text + "DOJ :" + TextBox4.Text + "EMIS :" + TextBox5.Text + "DOB :" + TextBox6.Text + "DOL :" + TextBox7.Text + "Free Edu :" + TextBox8.Text + "Mobile :" + TextBox9.Text);
                            sw.WriteLine(dattim + "Error Adding details for Adm_No :" + TextBox1.Text + ", Name :" + TextBox2.Text);
                            sw.Close();
                        }
                    }
                    ///////////////
                    using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
                    using (StreamWriter sw = new StreamWriter(fs))
                    {
                        String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                        sw.WriteLine(dattim + "  User " + Label1.Text + ",  BULK upload completed");
                        sw.Close();
                    }

                }
                Button3.Visible = false;
            }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            FileUpload1.Attributes.Clear();
            Label2.Text = "All Data Cleared";
            GridView1.Visible = false;
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string filename = "Student_Data.xlsx";
            if (filename != "")
            {
                string path = Server.MapPath(filename);
                System.IO.FileInfo file = new System.IO.FileInfo(path);
                if (file.Exists)
                {
                    Response.Clear();
                    Response.AddHeader("Content-Disposition", "attachment; filename=" + file.Name);
                    Response.AddHeader("Content-Length", file.Length.ToString());
                    Response.ContentType = "application/xlsx";
                    Response.WriteFile(file.FullName);
                    Response.End();
                }
                else
                {
                    Response.Write("This file does not exist.");
                }
            }
        }
    }
}


