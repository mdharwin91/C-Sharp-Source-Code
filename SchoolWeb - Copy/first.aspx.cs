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
    
    public partial class first : System.Web.UI.Page
    {
        int clickCount = 1;


        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
            Label2.Text = Request.QueryString["val"];
            if (Label2.Text == "")
            {
                Response.Redirect("Default.aspx");
            }
            String filename = DateTime.Now.ToString("yyyy-MM-dd");
             //Label6.Text = DateTime.Now.ToString("dd/MM/yyyy");
            TextBox13.Text = filename;
            Button1.Enabled = false;
            TextBox9.Enabled = false;
            TextBox13.Enabled = false;
            TextBox17.Enabled = false;

            //Label3.Text = Request.QueryString["val"];
            String uscode = DateTime.Now.ToString("hhyyyyMMMdd");
            Label6.Text = DateTime.Now.ToString("hhyyyyMMMdd");
            //GETTING DATE
            //usercode.Text = uscode;
            //String filename = DateTime.Now.ToString("dd-MMM-yyyy");
            Label3.Text = filename;



        }
    
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            //SqlDataReader ddr;
            String str;
            int count;
            
            str = "select count(*) from stddet";
            cmd = new SqlCommand(str, con);
            con.Open();
            count = Convert.ToInt16(cmd.ExecuteScalar()) + 1;
            TextBox1.Text = count.ToString().PadLeft (4,'0');
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            try
            {
              
                SqlConnection con1 = new SqlConnection();
                con1.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlCommand cmd1 = new SqlCommand();
                con1.Open();
                
                TextBox1.Text = TextBox1.Text.ToString().PadLeft(4, '0');
                TextBox2.Text = TextBox2.Text.ToUpper() + " ." + TextBox20.Text.ToUpper();
                cmd = new SqlCommand("insert into stddet values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.Text + "','" + TextBox13.Text + "','" + TextBox5.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + DropDownList12.Text + "','" + TextBox18.Text + "')", con1);
                cmd.ExecuteNonQuery();

                cmd1 = new SqlCommand("INSERT into bill_det values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + DropDownList12.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "')", con1);
                cmd1.ExecuteNonQuery();
                //logging
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + "  Ad No.: " + TextBox1.Text);
                    sw.WriteLine(dattim + "  Name " + TextBox2.Text);
                    sw.WriteLine(dattim + "  Standard " + DropDownList1.Text );
                    sw.WriteLine(dattim + "  Mobile " + TextBox18.Text);
                    sw.WriteLine(dattim + "  DOB " + TextBox4.Text);
                    sw.WriteLine(dattim + "  EMIS " + TextBox5.Text);
                    sw.WriteLine(dattim + "  DOJ " + TextBox13.Text);
                    sw.WriteLine(dattim + "  Saved " + TextBox1.Text);
                    sw.WriteLine(dattim + "  Added by: " + Label2.Text);
                    sw.WriteLine(dattim + " -------------------------------------------------------- ");
                    sw.Close();
                }

                Response.Write("<script>alert('Student Details Created')</script>");
                con1.Close();
            }
            catch(Exception err)
            {
                //  MessageBox.Show("Error");
                //Label1.Text = "ERROR!!!!";
                Response.Write("<script>alert('Student details Not Created')</script>");
                //logging
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Error_Log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + "  Ad No.    : " + TextBox1.Text);
                    sw.WriteLine(dattim + "  Name      : " + TextBox2.Text);
                    sw.WriteLine(dattim + "  Standard  : " + DropDownList1.Text);
                    sw.WriteLine(dattim + "  Mobile    : " + TextBox18.Text);
                    sw.WriteLine(dattim + "  DOB       : " + TextBox4.Text);
                    sw.WriteLine(dattim + "  EMIS      : " + TextBox5.Text);
                    sw.WriteLine(dattim + "  DOJ       : " + TextBox13.Text);
                    sw.WriteLine(dattim + "  NOT SAVED : " + TextBox1.Text);
                    sw.WriteLine(dattim + "  Added by  : " + Label2.Text);
                    sw.WriteLine(dattim + "  ERROR     : " + err);
                    sw.WriteLine(dattim + " -------------------------------------------------------- ");
                    sw.Close();
                }
            }
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button20_Click(Button20, null);

          try
          {
               TextBox10.Text = "";
               TextBox12.Text = "";
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                con.Open();
                TextBox7.Text = TextBox7.Text.ToString().PadLeft(4, '0');
                cmd = new SqlCommand("select * from stddet where admi_num = '" + TextBox7.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox8.Text = dr.GetString(1).ToString();
                    TextBox9.Text = dr.GetString(2).ToString();

                    DropDownList2.Text = dr.GetString(2).ToString();

                    TextBox10.Text = dr.GetString(5).ToString();
                    TextBox11.Text = dr.GetString(4).ToString();
                    TextBox12.Text = dr.GetString(6).ToString();
                    TextBox17.Text = dr.GetString(7).ToString();
                    DropDownList13.Text = dr.GetString(7).ToString();
                    TextBox19.Text = dr.GetString(8).ToString();
                    //textBox3.Enabled = false;
                }
                con.Close();

               /* if ((TextBox10.Text == "Year-Month-Day") || (TextBox10.Text == "") || (TextBox10.Text == "year-mo-da"))
                {
                    String result3 = "year";
                    DropDownList6.Text = result3;
                    String result4 = "mo";
                    DropDownList7.Text = result4;
                    String result5 = "da";
                    DropDownList8.Text = result5;
                }
                else
                {
                    String result = TextBox10.Text.Substring(0, 4);
                    DropDownList6.Text = result;
                    String result1 = TextBox10.Text.Substring(5, 2);
                    DropDownList7.Text = result1;
                    String result2 = TextBox10.Text.Substring(8, 2);
                    DropDownList8.Text = result2;
                }
                if ((TextBox12.Text == "Year-Month-Day") || (TextBox12.Text == "") || (TextBox12.Text == "year-mo-da"))
                {
                    String result3 = "year";
                    DropDownList9.Text = result3;
                    String result4 = "mo";
                    DropDownList10.Text = result4;
                    String result5 = "da";
                    DropDownList11.Text = result5;
                }
                else
                {
                    String result = TextBox12.Text.Substring(0, 4);
                    DropDownList9.Text = result;
                    String result1 = TextBox12.Text.Substring(5, 2);
                    DropDownList10.Text = result1;
                    String result2 = TextBox12.Text.Substring(8, 2);
                    DropDownList11.Text = result2;
                }*/
            }
            catch
            {
              Response.Write("<script>alert('Check the Application Number')</script>");
            } 
            
        }
        
        protected void Button4_Click(object sender, EventArgs e)
        {
            //Button8_Click(Button8, null);
            /*TextBox12.Text = DropDownList9.Text + "-" + DropDownList10.Text + "-" + DropDownList11.Text;
            TextBox10.Text = DropDownList6.Text + "-" + DropDownList7.Text + "-" + DropDownList8.Text;*/
            TextBox17.Text = DropDownList13.Text;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd = new SqlCommand("update stddet  set name = '" + TextBox8.Text + "',std = '" + DropDownList2.Text + "',dob = '" + TextBox10.Text + "',emis = '" + TextBox11.Text + "',dol = '" + TextBox12.Text + "',freeedu='"+TextBox17.Text+"',mob='"+TextBox19.Text+"' where admi_num = '" + TextBox7.Text + "'", con);
            cmd.ExecuteNonQuery();
            //Logging
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + "  Ad No.: " + TextBox7.Text );
                sw.WriteLine(dattim + "  Name " + TextBox8.Text);
                sw.WriteLine(dattim + "  Standard " + DropDownList2.Text);
                sw.WriteLine(dattim + "  DOB " + TextBox10.Text);
                sw.WriteLine(dattim + "  Mobile " + TextBox19.Text);
                sw.WriteLine(dattim + "  EMIS " + TextBox11.Text);
                sw.WriteLine(dattim + "  DOL " + TextBox12.Text);
                sw.WriteLine(dattim + "  Updated " + TextBox7.Text);
                sw.WriteLine(dattim + "  Updated By:" + Label3.Text);
                sw.WriteLine(dattim + " -------------------------------------------------------- ");
                sw.Close();
            }

            //Response.Write("<script>alert('Student Details Updated')</script>");
            Label5.Text = "Student " +TextBox2.Text+TextBox8.Text+"Added/Updated";
            con.Close();
            con.Open();
            cmd = new SqlCommand("update bill_det  set name = '" + TextBox8.Text + "',std = '" + DropDownList2.Text + "',freeedu='" + TextBox17.Text + "' where ad_num = '" + TextBox7.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox18.Text = "";
            TextBox20.Text = "";
            DropDownList1.Text = "I";
            

            //TextBox13.Text = "";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox17.Text = "";
            TextBox19.Text = "";
           
            DropDownList2.Text = "STD";
            Label5.Text = "";
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label3.Text + " Logged OUT From Student Page");
                sw.WriteLine(dattim + " --------------------------------------------------------- ");
                sw.Close();
            }
            //Response.Redirect("Default.aspx");
            Response.Redirect("CommonTab.aspx?val=" + Label3.Text);
        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        

        protected void Button9_Click(object sender, EventArgs e)
        {
            //TextBox10.Text = DropDownList6.Text + "-" + DropDownList7.Text + "-" + DropDownList8.Text;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            //TextBox12.Text = DropDownList9.Text + "-" + DropDownList10.Text + "-" + DropDownList11.Text;
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Int32 val5 = Convert.ToInt32(TextBox14.Text);
            Int32 val6 = Convert.ToInt32(TextBox15.Text);
            for (int i = val5; i <= val6; i++)
            {
                TextBox7.Text = Convert.ToString(i).PadLeft(4, '0');
                Button3_Click(Button3, null);
               
               
                Button4_Click(Button4, null);
                
                Button6_Click(Button6, null);
            }
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            
        }
        protected void Button13_Click(object sender, EventArgs e)
        {
            

        }

        protected void Button15_Click1(object sender, EventArgs e)
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

        protected void Button16_Click(object sender, EventArgs e)
        {
            //------------------ LOGGING
            //string data1 = usercode.Text;
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

        protected void Button17_Click(object sender, EventArgs e)
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

        protected void Button18_Click(object sender, EventArgs e)
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

        protected void Button19_Click(object sender, EventArgs e)
        {
            //--------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.Txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label1.Text + " Switched to Common Page");
                sw.WriteLine(dattim + " --------------------------------------------------------- ");
                sw.Close();
            }
            Response.Redirect("CommonTab.aspx?val=" + Label2.Text);
        }

        protected void SQL_MON_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox17.Text = "";
            TextBox19.Text = "";
           
            DropDownList2.Text = "STD";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            Response.Redirect("stu_bulk.aspx?val=" + Label2.Text);
        }

       

       

       
    }
}
