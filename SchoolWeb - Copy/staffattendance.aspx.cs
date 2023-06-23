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
using System.Drawing;
using System.Globalization;
namespace SchoolWeb
{
    public partial class staffattendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String filename1 = DateTime.Now.ToString("yyyy-MM-dd-HH-mm-ss");//DATE WITH FORMAT
            Label1.Text = filename1;
            String filename11 = DateTime.Now.ToString("dd-MM-yyyy");//DATE WITH FORMAT
            Label4.Text = filename11;
            //TextBox2.AutoSize = true;
            TextBox3.Text = "";
            TextBox2.Enabled = false;
            //--------------------- GETTING LOG IN AND OUT DETAILS WITH STAFF ID WITH CURRENT DATE
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;
            con.Open();
            String filename2 = DateTime.Now.ToString("yyyy-MM-dd");
            TextBox4.Text = filename2;
            cmd = new SqlCommand("select * from staffatten where date = '" + filename2 + "'and staff_id = '" + TextBox1.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label2.Text = dr.GetString(3).ToString();
                Label3.Text = dr.GetString(4).ToString();
            }
            con.Close();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label2.Text = "";
            Label3.Text = "";
            Button1.Visible = true;
            Button2.Visible = false;
            //--------------------- GETTING STAFF NAME WITH STAFF ID
            TextBox1.Text = TextBox1.Text.ToString().PadLeft(4, '0');
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;
            con.Open();
            cmd = new SqlCommand("select * from staffdet where staff_id = '" + TextBox1.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox2.Text = dr.GetString(1).ToString();
                Label5.Text = TextBox2.Text;

            }
            con.Close();
            //--------------------- GETTTING LOGIN AND LOGOUT TIME
            con.Open();
            String filename2 = DateTime.Now.ToString("yyyy-MM-dd");
            cmd = new SqlCommand("select * from staffatten where date = '" + filename2 + "'and staff_id = '" + TextBox1.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                //TextBox2.Text = dr.GetString(1).ToString();
                Label2.Text = dr.GetString(3).ToString();
                Label3.Text = dr.GetString(4).ToString();
                
                
                if (Label2.Text == "" && Label3.Text == "")
                {
                    Button1.Visible = true;
                    Button2.Visible = true;
                }
                if (Label2.Text != "" && Label3.Text == "")
                {
                    Button1.Visible = false;
                    Button2.Visible = true;
                }
                if (Label2.Text != "" && Label3.Text != "")
                {
                    Button1.Visible = false;
                    Button2.Visible = false;
                    Response.Write("<script>alert('Log In and Log out Done for the day...')</script>");
                    TextBox1.Text = "";
                }
            }
        }

        private void elseif(bool p)
        {
            throw new NotImplementedException();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string mty = "";
            try
            {
                //--------------------- ADDING LOGIN TIME TO STAFF ATTENDANCE
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                String filename = DateTime.Now.ToString("yyyy-MM-dd");
                String filename1 = DateTime.Now.ToString("yyyy-MM-ddTHH:mm:ss");
                Label1.Text = filename1;
                cmd = new SqlCommand("INSERT INTO staffatten VALUES ('" + filename + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + filename1 + "','" + TextBox3.Text + "','" + mty + "')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Log In Successfull')</script>");
                con.Close();
                Button1.Visible = false;
                //--------------------- Logging
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin\\staff_attendance_log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-ddTHH:mm:ss");
                    sw.WriteLine(dattim + "  Staff ID: " + TextBox1.Text);
                    sw.WriteLine(dattim + "  Name : " + TextBox2.Text);
                    sw.WriteLine(dattim + "  LOGGED IN ");
                    sw.WriteLine(dattim + " --------------------------------------------------------- ");
                    sw.Close();
                }
                TextBox1.Text = "";
            }
            catch
            {
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            double Count = 0;
            string filename = DateTime.Now.ToString("yyyy-MM-dd");
            String filename2 = DateTime.Now.ToString("yyyy-MM-ddTHH:mm:ss");
            //string E_date = Convert.ToDateTime()
            string tt = filename2;
            DateTime d1 = DateTime.ParseExact(tt, "yyyy-MM-ddTHH:mm:ss", CultureInfo.InvariantCulture);
            DateTime d2 = DateTime.ParseExact(Label2.Text, "yyyy-MM-ddTHH:mm:ss", CultureInfo.InvariantCulture);
            TimeSpan ts = d1.Subtract(d2);
            double value1 = (d1 - d2).TotalHours;
            int value = Convert.ToInt32(value1);
            if (value > 8)
            {
                Count = 1;
            }
            if ((value < 8) && (value > 4))
            {
                Count = 0.5;
            }
            if (value < 4)
            {
                Count = 0;
            }

            try
            {
                //--------------------- UPDATING LOGOUT TIME
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                
                cmd = new SqlCommand("update staffatten  set logout = '" + filename2 + "', count ='" + Count + "' where date = '" + filename + "' and staff_id = '" + TextBox1.Text + "'", con);
                cmd.ExecuteNonQuery();
                using (FileStream fs = new FileStream("D:\\Attendance_Log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-ddTHH:mm:ss");
                    sw.WriteLine(dattim + " " + TextBox1.Text +" " + TextBox2.Text + " Checked OUT ");
                    sw.Close();
                }
                Response.Write("<script>alert('Log OUT Successfull')</script>");
                con.Close();
                //--------------------- LOGGING
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin\\staff_attendance_log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-ddTHH:mm:ss");
                    sw.WriteLine(dattim + "  Staff ID: " + TextBox1.Text);
                    sw.WriteLine(dattim + "  Name " + TextBox2.Text);
                    sw.WriteLine(dattim + "  LOGGED OUT ");
                    sw.WriteLine(dattim + " --------------------------------------------------------- ");
                    sw.Close();
                }
                TextBox1.Text = "";
            }
            catch
            {
                Response.Write("<script>alert('You Haven't Logged In for Today')</script>");
            }
            try
            {
                //--------------------- ADDING LOGIN AND LOGOUT TIME TO DATABASE
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                con.Open();
                String filename3 = DateTime.Now.ToString("yyyy-MM-dd");
                cmd = new SqlCommand("select * from staffatten where date = '" + filename3 + "'and staff_id = '" + TextBox1.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Label2.Text = dr.GetString(3).ToString();
                    Label3.Text = dr.GetString(4).ToString();
                }
                con.Close();
                Button2.Visible = false;
            }
            catch
            {
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //--------------------- REDIRECTING TO MAIN PAGE
            Response.Redirect("Default.aspx");
        }
    }
}
