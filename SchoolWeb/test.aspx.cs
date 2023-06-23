//using System;
//using System.Collections;
//using System.Configuration;
//using System.Data;
//using System.Linq;
//using System.Web;
//using System.Web.Security;
//using System.Web.UI;
//using System.Web.UI.HtmlControls;
//using System.Web.UI.WebControls;
//using System.Web.UI.WebControls.WebParts;
//using System.Xml.Linq;
//using System.Data.SqlClient;
//using System.Text;
//using System.Data.OleDb;
//using System.IO;
//using System.Net.Mail;
//using Microsoft.Office.Interop.Excel;
//using Microsoft.Office.Core;


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
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;


//using OfficeOpenXml;

//using Excel = Microsoft.Office.Interop.Excel;
//using ExcelAutoFormat = Microsoft.Office.Interop.Excel.XlRangeAutoFormat;




namespace SchoolWeb
{
    public partial class test : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = "Dharwin";
            string connString = ConfigurationManager.ConnectionStrings["xlsx"].ConnectionString;
            // Create the connection object
            OleDbConnection oledbConn = new OleDbConnection(connString);
            try
            {
                // Open connection
                oledbConn.Open();

                // Create OleDbCommand object and select data from worksheet Sheet1
                OleDbCommand cmd = new OleDbCommand("SELECT * FROM [Sheet1$]", oledbConn);

                // Create new OleDbDataAdapter
                OleDbDataAdapter oleda = new OleDbDataAdapter();

                oleda.SelectCommand = cmd;

                // Create a DataSet which will hold the data extracted from the worksheet.
                DataSet ds = new DataSet();

                // Fill the DataSet from the data extracted from the worksheet.
                oleda.Fill(ds, "AdNo");

                // Bind the data to the GridView
                GridView1.DataSource = ds.Tables[0].DefaultView;
                GridView1.DataBind();
            }
            catch
            {
            }
            finally
            {
                // Close connection
                oledbConn.Close();
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Image1.ImageUrl = "tesat.ashx?roll_no=" + TextBox1.Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (!FileUpload1.HasFile) //Validation  
            {
                Response.Write("No file Selected"); return;
            }
            else
            {
                int fileLen;
                string filename = FileUpload1.PostedFile.FileName;
                fileLen = FileUpload1.PostedFile.ContentLength;

                //convert the image into the byte  
                byte[] imageByte = new byte[fileLen - 1];
                imageByte = FileUpload1.FileBytes;

                //System.IO.File.ReadAllBytes(filename);

                //Insert the Data in the Table  
                SqlConnection con1 = new SqlConnection();
                con1.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con1.Open();
                cmd = new SqlCommand("update staffdet set image=@image where staff_id = '" + TextBox3.Text + "'", con1);
                cmd.Parameters.Add("@image", SqlDbType.VarBinary);
                cmd.Parameters["@image"].Value = imageByte;
                cmd.ExecuteNonQuery();
                //cmd.Dispose();
                con1.Close();
                Response.Write("Data has been Added");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Int32 from = Convert.ToInt32(TextBox5.Text);
            Int32 to = Convert.ToInt32(TextBox9.Text);
            for (int i = from; i <= to; i++)
            {

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                con.Open();
                TextBox5.Text = Convert.ToString(i).PadLeft(4, '0');
                cmd = new SqlCommand("select * from stddet where admi_num = '" + TextBox5.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox6.Text = dr.GetString(1).ToString();

                }
                con.Close();
                String fullName = TextBox6.Text;
                if (TextBox6.Text != "")
                {
                    TextBox7.Text = TextBox6.Text.Substring(0, 1);
                    TextBox8.Text = TextBox6.Text.Substring(2, (fullName.Length - 2));
                    TextBox8.Text = TextBox8.Text + " ." + TextBox7.Text;
                    con.Open();
                    cmd = new SqlCommand("update stddet  set name = '" + TextBox8.Text + "'where admi_num = '" + TextBox5.Text + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";

            }

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd = new SqlCommand("update stddet  set name = '" + TextBox8.Text + "'where admi_num = '" + TextBox5.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection conn;

            connetionString = @"Data Source=sql12.freesqldatabase.com\sql12395854;Initial Catalog=sample_db ;User ID=sql12395854;Password=NC328ssvQd";

            conn = new SqlConnection(connetionString);

            conn.Open();

            Response.Write("Connection MAde");
            conn.Close();  
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            //Coneection String by default empty  
            string ConStr = "";
            //Extantion of the file upload control saving into ext because   
            //there are two types of extation .xls and .xlsx of Excel   
            string ext = Path.GetExtension(FileUpload2.FileName).ToLower();
            //getting the path of the file   
            //string path = Server.MapPath("~/MyFolder/" + FileUpload2.FileName);
            string path = (@"C:\School_Web\Documents\Uploaded_Files_Via_School_Web_App\" + FileUpload2.FileName);

            //saving the file inside the MyFolder of the server  
            FileUpload2.SaveAs(path);
            Label4.Text = FileUpload2.FileName + "\'s Data showing into the GridView";
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

        protected void Button8_Click(object sender, EventArgs e)
        {
            Int32 v = 1;
            foreach( GridViewRow G1 in GridView1.Rows)
            {
                TextBox14.Text = G1.Cells[1].Text;
                TextBox13.Text = G1.Cells[2].Text;
                
                
                Label5.Text = v.ToString();

                ///////////////
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                cmd = new SqlCommand("update stddet  set emis = '" + TextBox14.Text + "' where admi_num = '" + TextBox13.Text + "'", con);
                cmd.ExecuteNonQuery();
                //Logging
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + "  SL.No " + Label5.Text + "  Ad No.: " + TextBox13.Text + "  EMIS No.:" + TextBox14.Text+" Emis Number Updated");
                    sw.Close();
                }

                //Response.Write("<script>alert('Student Details Updated')</script>");
                con.Close();
                v = v + 1;
                ///////////////
            }
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            TextBox14.Text = row.Cells[1].Text;
            TextBox13.Text = row.Cells[2].Text;
            TextBox15.Text = row.Cells[3].Text;
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //
        }

        [Obsolete]
        protected void Button9_Click(object sender, EventArgs e)
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
                    pdfDoc.Open();
                    htmlparser.Parse(sr);
                    pdfDoc.Close();

                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.pdf");
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Write(pdfDoc);
                    Response.End();
                }
            }
        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button10_Click1(object sender, EventArgs e)
        {
            Response.Redirect("header.aspx?val1=" + TextBox16.Text);
        }

        protected void Button10_Click2(object sender, EventArgs e)
        {
            Int32 from = Convert.ToInt32(TextBox17.Text);
            Int32 to = Convert.ToInt32(TextBox18.Text);
            
            for (int i = from; i <= to; i++)
            {
                ///////////////
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                con.Open();
                TextBox17.Text = Convert.ToString(i).PadLeft(4, '0');
                cmd = new SqlCommand("select * from stddet where admi_num = '" + TextBox17.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox19.Text = dr.GetString(3).ToString();

                }
                con.Close();

                if (TextBox19.Text != "") 
                {
                    String date = TextBox19.Text.Substring(0, 2);
                    String month = TextBox19.Text.Substring(3, 2);
                    String year = TextBox19.Text.Substring(6, 4);
                    //TextBox20.Text = TextBox19.Text.Substring(6, 9);
                    TextBox20.Text = year + "-" + month + "-" + date;
                    TextBox21.Text = TextBox20.Text;

                    con.Open();
                    cmd = new SqlCommand("update stddet  set doj = '" + TextBox20.Text + "' where admi_num = '" + TextBox17.Text + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                
            }
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            ///////////////
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd = new SqlCommand("update stddet  set doj = '" + TextBox20.Text + "' where admi_num = '" + TextBox17.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            TextBox22.Text = TextBox22.Text.ToString().PadLeft(4, '0');
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;
            con.Open();
            TextBox7.Text = TextBox7.Text.ToString().PadLeft(4, '0');
            cmd = new SqlCommand("select * from stddet where admi_num = '" + TextBox22.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox23.Text = dr.GetString(1).ToString();
                TextBox24.Text = dr.GetString(2).ToString();

                //TextBox10.Text = dr.GetString(5).ToString();
                //textBox3.Enabled = false;
            }
            con.Close();
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            string empty_value = "";
            SqlConnection con1 = new SqlConnection();
            con1.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand();
            con1.Open();
            cmd1 = new SqlCommand("INSERT into bill_det values('" + TextBox22.Text + "','" + TextBox23.Text + "','" + TextBox24.Text + "','" + empty_value + "','" + empty_value + "','" + empty_value + "','" + empty_value + "','" + empty_value + "','" + empty_value + "','" + empty_value + "','" + empty_value + "','" + empty_value + "','" + empty_value + "','" + empty_value + "','" + empty_value + "','" + empty_value + "','" + empty_value + "','" + empty_value + "','" + empty_value + "')", con1);
            cmd1.ExecuteNonQuery();
            con1.Close();
        }
    }

}

