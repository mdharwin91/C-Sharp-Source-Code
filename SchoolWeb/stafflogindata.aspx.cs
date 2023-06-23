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
using Microsoft.Office.Interop.Word;

namespace SchoolWeb
{
    public partial class stafflogindata : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView2.DataBind();
            GridView3.DataBind();
            GridView2.Visible = true;
            GridView3.Visible = true;
            Label1.Text = Request.QueryString["val"];//LOGGING WITH NAME
            if (Label1.Text == "")
            {
                Response.Redirect("Default.aspx");
            }
            //DetailsView1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("stafflogindata.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //--------------------- REDIRECTING TO ADMIN PAGE
           // Response.Redirect("adminpage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //--------------------- FILTERING ATTEDANCE DATA WITH STAFF ID
            TextBox3.Text = TextBox3.Text.PadLeft(4, '0');
            Int32 staffid = Convert.ToInt32(TextBox3.Text);
            if (staffid == 0 )
            {
                Response.Write("<script>alert('Enter Staff ID')</script>");
 
            }
           // DetailsView1.Visible = true;
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
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
            //---------------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label1.Text + " Logged IN to TODAY BILLS PAGE");
                sw.Close();
            }
            Response.Redirect("todaybills.aspx?val=" + Label1.Text);//REDIRECTING TO TODAY BILL DETAILS
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");//REDIRECT TO STARTING PAGE
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            if (!FileUpload1.HasFile) //Validation  
            {
                //Response.Write("No file Selected"); return;
                Response.Write("<script>alert('No File Selected')</script>");
            }

            if (TextBox3.Text == "")
            {
                Response.Write("<script>alert('Staff ID is empty')</script>");
                
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
                TextBox3.Text = TextBox3.Text.PadLeft(4, '0');
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
                Response.Write("<script>alert('Photo Uploaded Successfully')</script>");
            }
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            if (!FileUpload1.Visible)
            {
                TextBox3.Visible = true;
                FileUpload1.Visible = true;
                Button18.Visible = true;

            }
           

            
        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            //---------------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label1.Text + " Logged IN to Admin PAGE");
                sw.Close();
            }
            Response.Redirect("Adminactivities.aspx?val=" + Label1.Text);//REDIRECTING TO TODAY BILL DETAILS
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            TextBox11.Text = "";
            try
            {

                SqlConnection con1 = new SqlConnection();
                con1.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd1 = new SqlCommand();
                con1.Open();
                TextBox5.Text = TextBox5.Text.ToString().PadLeft(4, '0');
                cmd1 = new SqlCommand("INSERT into staffdet(staff_id,name,dateofjoin,dateofleave,userid,pwd,status) values('" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox12.Text + "')", con1);
                /*cmd1 = new SqlCommand("INSERT into staffdet VALUES(@staff_id,@name,@dateofjoin,@dateofleave,@userid,@pwd)", con1);
                cmd1.CommandType = CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@staff_id", TextBox5.Text);
                cmd1.Parameters.AddWithValue("@name", TextBox6.Text);
                cmd1.Parameters.AddWithValue("@dateofjoin", TextBox9.Text);
                cmd1.Parameters.AddWithValue("@dateofleave", TextBox10.Text);
                cmd1.Parameters.AddWithValue("@userid", TextBox7.Text);
                cmd1.Parameters.AddWithValue("@pwd", TextBox8.Text);*/
                cmd1.ExecuteNonQuery();
                //logging
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + "  Staff ID : " + TextBox5.Text);
                    sw.WriteLine(dattim + "  Name :" + TextBox6.Text);
                    sw.WriteLine(dattim + "  DOJ : " + TextBox9.Text);
                    sw.WriteLine(dattim + "  DOL " + TextBox10.Text);
                    sw.WriteLine(dattim + "  UserID : " + TextBox7.Text);
                    sw.WriteLine(dattim + "  Password : " + TextBox8.Text);
                    sw.WriteLine(dattim + "  Created by: " + Label1.Text);
                    sw.WriteLine(dattim + " -------------------------------------------------------- ");
                    sw.Close();
                }

                Response.Write("<script>alert('Staff ID Created')</script>");
                con1.Close();
            }
            catch
            {
                Response.Write("<script>alert('Error creating Staff ID')</script>");
            }
        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                con.Open();
                TextBox5.Text = TextBox5.Text.ToString().PadLeft(4, '0');
                cmd = new SqlCommand("select * from staffdet where staff_id = '" + TextBox5.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox6.Text = dr.GetString(1).ToString();
                    TextBox9.Text = dr.GetString(2).ToString(); //DOJ
                    TextBox10.Text = dr.GetString(3).ToString(); //DOL
                    TextBox7.Text = dr.GetString(4).ToString();
                    TextBox8.Text = dr.GetString(5).ToString();
                    
                    TextBox12.Text = dr.GetString(7).ToString();
                    //TextBox17.Text = dr.GetString(7).ToString();
                    //textBox3.Enabled = false;
                }
                con.Close();


               
                //Second case
            }
            catch
            {
                Response.Write("<script>alert('Check the Application Number')</script>");
            } 
        }

        protected void Button22_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                cmd = new SqlCommand("update staffdet  set name = '" + TextBox6.Text + "',dateofjoin = '" + TextBox9.Text + "',dateofleave = '" + TextBox10.Text + "',userid = '" + TextBox7.Text + "',pwd='" + TextBox8.Text + "',status='" + TextBox12.Text + "' where staff_id = '" + TextBox5.Text + "'", con);
                cmd.ExecuteNonQuery();
                //Logging
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + "  Staff ID.: " + TextBox5.Text);
                    sw.WriteLine(dattim + "  Name : " + TextBox6.Text);
                    sw.WriteLine(dattim + "  DoJ : " + TextBox9.Text);
                    sw.WriteLine(dattim + "  DoL : " + TextBox10.Text);
                    sw.WriteLine(dattim + "  userID : " + TextBox7.Text);
                    sw.WriteLine(dattim + "  Password : " + TextBox8.Text);
                    sw.WriteLine(dattim + "  Updated By:" + Label1.Text);
                    sw.WriteLine(dattim + " -------------------------------------------------------- ");
                    sw.Close();
                }

                Response.Write("<script>alert('Staff Details Updated')</script>");
                con.Close();
            }
            catch
            {
                Response.Write("<script>alert('Error updating Staff Details')</script>");
            }

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //--------------------- FILTERING ATTEDANCE DATA WITH STAFF ID
            TextBox3.Text = TextBox3.Text.PadLeft(4, '0');
            Int32 staffid = Convert.ToInt32(TextBox3.Text);
            if (staffid == 0)
            {
                Response.Write("<script>alert('Enter Staff ID')</script>");
            }
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlDataReader dr;
            String str2 = "SELECT SUM(count) FROM staffatten WHERE staff_id = '" + TextBox3.Text + "' AND date BETWEEN '" + TextBox1.Text + "' AND '" + TextBox2.Text + "'";
            //String str = "SELECT * FROM staffatten WHERE staff_id = '" + TextBox3.Text + "' AND date BETWEEN '" + TextBox1.Text + "' AND '" + TextBox2.Text + "'";
            String str = "SELECT * FROM staffatten WHERE date = '" + TextBox1.Text + "'"; //AND date BETWEEN '" + TextBox1.Text + "' AND '" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                GridView3.DataSourceID = "";
                GridView3.DataSource = dr;
                GridView3.DataBind();
            }
           con.Close();
            SqlCommand cmd2 = new SqlCommand(str2, con);
            con.Open();
            object total = cmd2.ExecuteScalar();
            TextBox13.Text = Convert.ToString(total);
            con.Close();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            TextBox3.Text = TextBox3.Text.PadLeft(4, '0');
            Int32 staffid = Convert.ToInt32(TextBox3.Text);
            if (staffid == 0)
            {
                Response.Write("<script>alert('Enter Staff ID')</script>");
            }
            else
            {
                
                TextBox2.Text = DateTime.Now.ToString("yyyy-MM-dd");

                var now = DateTime.Now;
                var firstDayCurrentMonth = new DateTime(now.Year, now.Month, 1);
                TextBox1.Text = firstDayCurrentMonth.ToString("yyyy-MM-dd");
               
            }
                
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            
            TextBox3.Text = TextBox3.Text.PadLeft(4, '0');
            Int32 staffid = Convert.ToInt32(TextBox3.Text);
            if (staffid == 0)
            {
                Response.Write("<script>alert('Enter Staff ID')</script>");
            }
            else
            {
                
                var now = DateTime.Now;
                var firstDayCurrentMonth = new DateTime(now.Year, now.Month, 1);

                var lastDayLastMonth = firstDayCurrentMonth.AddDays(-1);

                TextBox2.Text = lastDayLastMonth.ToString("yyyy-MM-dd");
                TextBox1.Text = DateTime.Now.AddMonths(-1).ToString("yyyy-MM-") + "01";

                
            }
        }
    }
}
