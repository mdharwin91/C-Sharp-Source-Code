using System;
using System.Data.SqlClient;
using System.IO;

//using System.Threading;

namespace SchoolWeb
{
    public partial class CommonTab : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //Label12.Visible = false;
            //Label13.Visible = false;
            //Label14.Visible = false;
            //TextBox1.Visible = false;
            //TextBox2.Visible = false;
            //TextBox3.Visible = false;
            //Button6.Visible = false;
            //TextBox5.Visible = false;
            //Button7.Visible = false;
            //Image1.ImageUrl= 'D:\Photos\DSC_0066.JPG';

            Label2.Text = Request.QueryString["val"];
            if (Label2.Text == "")
            {
                Response.Redirect("Default.aspx");
            }
            //DATE VALUE
            //Label3.Text = Request.QueryString["val"];
            //String uscode = DateTime.Now.ToString("hhyyyyMMMdd");
            Label16.Text = DateTime.Now.ToString("hhyyyyMMMdd");
            //GETTING DATE
            //usercode.Text = uscode;
            String filename = DateTime.Now.ToString("dd-MMM-yyyy");
            Label3.Text = filename;
            ///////////////////////////////////
           

            ////////////////////////////////////
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;
            con.Open();
            //TextBox7.Text = TextBox7.Text.ToString().PadLeft(4, '0');
            cmd = new SqlCommand("select * from staffdet where name = '" + Label2.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label4.Text = dr.GetString(1).ToString();
                Label5.Text = dr.GetString(0).ToString();
                Label6.Text = dr.GetString(2).ToString();
                Label7.Text = dr.GetString(4).ToString();
                TextBox4.Text = dr.GetString(5).ToString();
            }
            con.Close();
            ////////////////////////////////////
            Button8_Click(Button8, null);
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            Label15.Visible = false;
            Label9.Visible = false;
            //Label10.Visible = false;
            Label11.Visible = false;
            Label12.Visible = true;
            Label13.Visible = true;
            Label14.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            Button6.Visible = true;
            //Button5.Visible = false;
            //Button7.Visible = true;
            Image1.Visible = true;
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.Txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                //sw.WriteLine(dattim + " " + Label2.Text + " Switched to  Password Page");
                sw.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label2.Text + " Switched to Student Details");
                sw.Close();
            }
            Response.Redirect("first.aspx?val=" + Label2.Text);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //------------------- LOGGING            
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label2.Text + " Logged OUT FROM STAFF PAGE");
                sw.Close();
            }
            Response.Write("<script>alert('You Have Been Logged Out Successfully')</script>");
            Response.Redirect("default.aspx");//REDIRECTING TO MAIN PAGE
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //------------------ LOGGING
            //string data1 = uscode;
            string data2 = Label2.Text;
            Session["data2"] = Label2.Text;
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label2.Text + " Switched to Bill");
                sw.Close();
            }
            //Response.Redirect(String.Format("Bill.aspx?val={0}&val1={1}", Server.UrlEncode(data1), Server.UrlEncode(data2)));
        
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.Txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label2.Text + " Switched to Daily Details");
                sw.Close();
            }
            Response.Redirect("dailydet.aspx?val1=" + Label2.Text);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //Label4.Visible = false;
            //Label5.Visible = false;
            //Label6.Visible = false;
            //Label7.Visible = false;
            //Label15.Visible = false;
            //Label9.Visible = false;
            //Label10.Visible = false;
            //Label11.Visible = false;
            //Label12.Visible = true;
            //Label13.Visible = true;
            //Label14.Visible = true;
            //TextBox1.Visible = true;
            //TextBox2.Visible = true;
            //TextBox3.Visible = true;
            //Button6.Visible = true;
            //Button5.Visible = false;
            //Button7.Visible = true;
            //Image1.Visible = true;
            //using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.Txt", FileMode.Append, FileAccess.Write))
            //using (StreamWriter sw = new StreamWriter(fs))
            //{
            //    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
            //    //sw.WriteLine(dattim + " " + Label2.Text + " Switched to  Password Page");
            //    sw.Close();
            //}
        }
        

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == TextBox4.Text)
            {
                if (TextBox2.Text == TextBox3.Text)
                {
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                    SqlCommand cmd = new SqlCommand();
                    con.Open();
                    cmd = new SqlCommand("update staffdet  set pwd = '" + TextBox3.Text + "' where name = '" + Label2.Text + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    
                    Response.Write("<script>alert('Password Updated Successfully... Please login again...')</script>");
                    System.Threading.Thread.Sleep(5000);
                    //Response.Redirect("default.aspx");//REDIRECTING TO MAIN PAGE

                }
                else
                {
                    Response.Write("<script>alert('Password Mismatch')</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('Incorrect Old Password')</script>");
            }
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        //protected void Button7_Click(object sender, EventArgs e)
        //{
        //    //--------------------- LOGGING
        //    using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.Txt", FileMode.Append, FileAccess.Write))
        //    using (StreamWriter sw = new StreamWriter(fs))
        //    {
        //        String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
        //        sw.WriteLine(dattim + " " + Label2.Text + " Switched to Common Page");
        //        sw.WriteLine(dattim + " --------------------------------------------------------- ");
        //        sw.Close();
        //    }
        //    Response.Redirect("CommonTab.aspx?val=" + Label2.Text);
        //}

        protected void Button8_Click(object sender, EventArgs e)
        {
            Image1.ImageUrl = "test.ashx?roll_no=" + Label5.Text;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Default.aspx");
            //Label4.Visible = false;
            //Label5.Visible = false;
            //Label6.Visible = false;
            Label7.Visible = true;
            //Label15.Visible = false;
            //Label9.Visible = false;
            //Label10.Visible = false;
            Label11.Visible = true;
            Label12.Visible = true;
            Label13.Visible = true;
            Label14.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            Button6.Visible = true;
            //Button5.Visible = false;
            //Button7.Visible = true;
            Image1.Visible = true;
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.Txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                //sw.WriteLine(dattim + " " + Label2.Text + " Switched to  Password Page");
                sw.Close();
            }
        }

        protected void Button9_Click1(object sender, EventArgs e)
        {
            //Response.Redirect("Default.aspx");
            
        }

        

        
    }
}
