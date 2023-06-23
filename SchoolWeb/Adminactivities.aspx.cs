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
using System.Text.RegularExpressions;

namespace SchoolWeb
{
    public partial class Adminactivities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // DB Connection
            String date = DateTime.Now.ToString("yyyy-MM-dd");
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            String Profile = "";
            TextBox30.Text = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
            TextBox30.Enabled = false;
            GridView1.DataBind();
            Label1.Text = Request.QueryString["val"];//LOGGING WITH NAME
            if (Label1.Text == "")
            {
                Response.Redirect("Default.aspx");
            }
            con.Open();
            SqlCommand cmd4 = new SqlCommand("select * from staffdet where name = '" + Label1.Text + "'", con);
            SqlDataReader dr;
            dr = cmd4.ExecuteReader();
            while (dr.Read())
            { 
                Profile = dr.GetString(8).ToString();
            }
            con.Close();
            if(Profile != "Admin")
            {
                //Response.Write("<script>alert('ACCESS DENIED !!')</script>");
                // Response.Redirect("Default.aspx");

                Response.Write("<script language='javascript'>window.alert('ACCESS DENIED !!');window.location='Default.aspx';</script>");
            }
            TextBox29.Visible = false;
            Button20.Visible = false;
            //---------------------Enabling Yearly Change Button based on month
            Button21.Enabled = false;
            String date_yr = DateTime.Now.ToString("MMM");
            if ((date_yr == "May") || (date_yr == "Jun") || (date_yr == "Jul"))
            {
                Button21.Enabled = true;
            }
            //--------------------- GETTING TOTAL AMOUNT FOR CURRENT DATE
            
            con.Open();
            SqlCommand cmd = new SqlCommand();
            String str2 = "SELECT SUM(amt) FROM bill WHERE date ='"+date+"'";
            cmd = new SqlCommand(str2, con);
            object num = cmd.ExecuteScalar();
            Label2.Text = Convert.ToString(num);
            con.Close();
            Label3.Text = DateTime.Now.ToString("yyyy-MMM");
            String month = DateTime.Now.ToString("yyyy-MM");
            month = month + "-01";
            con.Open();
            SqlCommand cmd2 = new SqlCommand();
            //String str = "SELECT SUM(amt) FROM bill WHERE date ='" + month + "'";
            String str = "SELECT SUM(amt) FROM bill WHERE date BETWEEN '"+month+"' AND '"+date+"'";
            cmd2 = new SqlCommand(str, con);
            object num1 = cmd2.ExecuteScalar();
            Label4.Text = Convert.ToString(num1);
            con.Close();

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
                sw.WriteLine(dattim + " " + Label1.Text + " Logged IN to Day Bill Details");
                sw.Close();
            }
            Response.Redirect("todaybills.aspx?val=" + Label1.Text);//REDIRECTING TO TODAY BILL DETAILS
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");//REDIRECT TO STARTING PAGE
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            String str;
            int count;

            str = "select count(*) from bill_amt";
            cmd = new SqlCommand(str, con);
            con.Open();
            count = Convert.ToInt16(cmd.ExecuteScalar());
            TextBox28.Text = count.ToString();
            con.Close();

            con.Open();
            TextBox7.Text = TextBox7.Text.ToString().PadLeft(4, '0');
            cmd = new SqlCommand("select * from bill_amt where chg_num = '" + TextBox28.Text + "'", con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr.GetString(1).ToString();
                TextBox2.Text = dr.GetString(2).ToString();
                TextBox3.Text = dr.GetString(3).ToString();
                TextBox4.Text = dr.GetString(4).ToString();
                TextBox5.Text = dr.GetString(5).ToString();
                TextBox6.Text = dr.GetString(6).ToString();
                TextBox7.Text = dr.GetString(7).ToString();
                TextBox8.Text = dr.GetString(8).ToString();
                TextBox9.Text = dr.GetString(9).ToString();
                TextBox10.Text = dr.GetString(10).ToString();
                TextBox11.Text = dr.GetString(11).ToString();
                TextBox12.Text = dr.GetString(12).ToString();
                TextBox13.Text = dr.GetString(13).ToString();
                TextBox14.Text = dr.GetString(14).ToString();
                TextBox15.Text = dr.GetString(15).ToString();
                TextBox16.Text = dr.GetString(16).ToString();
                TextBox17.Text = dr.GetString(17).ToString();
                TextBox18.Text = dr.GetString(18).ToString();
                TextBox19.Text = dr.GetString(19).ToString();

                TextBox20.Text = dr.GetString(20).ToString();
                TextBox21.Text = dr.GetString(21).ToString();
                TextBox22.Text = dr.GetString(22).ToString();
                TextBox23.Text = dr.GetString(23).ToString();
                TextBox24.Text = dr.GetString(24).ToString();
                TextBox25.Text = dr.GetString(25).ToString();
                TextBox26.Text = dr.GetString(26).ToString();
                TextBox27.Text = dr.GetString(27).ToString();
                TextBox36.Text = dr.GetString(28).ToString();
                TextBox37.Text = dr.GetString(29).ToString();
                TextBox38.Text = dr.GetString(30).ToString();
                //textBox3.Enabled = false;
            }
            con.Close();
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            String str;
            int count;

            str = "select count(*) from bill_amt";
            cmd = new SqlCommand(str, con);
            con.Open();
            count = Convert.ToInt16(cmd.ExecuteScalar())+1;
            TextBox28.Text = count.ToString();
            con.Close();
            try
            {

                SqlConnection con1 = new SqlConnection();
                con1.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd1 = new SqlCommand();
                con1.Open();
                TextBox1.Text = TextBox1.Text.ToString().PadLeft(4, '0');
                cmd1 = new SqlCommand("insert into bill_amt values ('" + TextBox28.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "','" + TextBox21.Text + "','" + TextBox22.Text + "','" + TextBox23.Text + "','" + TextBox24.Text + "','" + TextBox25.Text + "','" + TextBox26.Text + "','" + TextBox27.Text + "','" + TextBox36.Text + "','" + TextBox37.Text + "','" + TextBox38.Text + "')", con1);
                cmd1.ExecuteNonQuery();

                //logging
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + "  Change Number: " + TextBox28.Text);
                    sw.WriteLine(dattim + "  updated by: " + Label1.Text);
                    sw.WriteLine(dattim + " -------------------------------------------------------- ");
                    sw.Close();
                }

                Response.Write("<script>alert('Bill Amount Updated')</script>");
                con1.Close();
            }
            catch
            {
                //  MessageBox.Show("Error");
                //Label1.Text = "ERROR!!!!";
                Response.Write("<script>alert('Error updating Bill Amount')</script>");
            }
        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True";
            con.Open();
            String username = "admin";
            SqlCommand cmd = new SqlCommand("SELECT userid,pwd FROM admin WHERE userid='"+username+"' AND pwd='" + TextBox29.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                //---------------------------- LOGGING
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + " " + Label1.Text + " Logged IN to Admin Yearly Update");
                    sw.Close();
                }
                Response.Redirect("Admin_Yearly.aspx?val=" + Label1.Text);//REDIRECTING TO TODAY BILL DETAILS
                
            }
            else
            {
                Response.Write("<script>alert('Incorrect Password !!')</script>");
            }
            con.Close();
           
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            TextBox29.Visible = true;
            Button20.Visible = true;
        }

        protected void Button19_Click(object sender, EventArgs e)
        {

        }

        protected void Button22_Click(object sender, EventArgs e)
        {
            if ((TextBox31.Text != "") && (TextBox32.Text != ""))
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                cmd = new SqlCommand("INSERT INTO app_details VALUES ('" + TextBox30.Text + "','" + TextBox31.Text + "','" + DropDownList1.Text + "','" + TextBox32.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
            }
            TextBox32.Text = "";
            TextBox31.Text = "";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button23_Click(object sender, EventArgs e)
        {
            Response.Redirect("database.aspx");
        }

        protected void Button24_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;
            con.Open();
            cmd = new SqlCommand("SELECT TOP 1 * FROM app_details ORDER BY date DESC ", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox31.Text = dr.GetString(1).ToString();
            }
            con.Close();

            String version = TextBox31.Text.ToString();
            TextBox33.Text = version.Split('.')[0];
            TextBox34.Text = version.Split('.')[1];
            TextBox35.Text = version.Split('.')[2];

            Int32 ver_1 = Convert.ToInt32(TextBox35.Text);
            Int32 ver_2 = Convert.ToInt32(TextBox34.Text);
            Int32 ver_3 = Convert.ToInt32(TextBox33.Text);

            ver_1 += 1;
            if (ver_1 == 100)
            {
                ver_2 += 1;
                ver_1 = 0;
            }
            if (ver_2 == 100)
            {
                ver_3 += 1;
                ver_2 = 0;
            }
            TextBox31.Text = ver_3 + "." + ver_2 + "." + ver_1;

        }

        protected void Button25_Click(object sender, EventArgs e)
        {
            //--------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.Txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label1.Text + " Logged in to Text SMS Page");
                sw.WriteLine(dattim + " --------------------------------------------------------- ");
                sw.Close();
            }
            Response.Redirect("textsms.aspx?val=" + Label1.Text);
        }
    }
}
