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
    public partial class printwithbillnumber : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.QueryString["val"];//LOGGING WITH NAME
            if (Label1.Text == "")
            {
                Response.Redirect("Default.aspx");
            }
            GridView1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label2.Text = "";
            for(int i=1;i<=9999;i++)
            {
                int j=i;
                TextBox1.Text = j.ToString().PadLeft(4, '0');

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                con.Open();
                cmd = new SqlCommand("select * from bill_det where ad_num = '" + TextBox1.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox2.Text = dr.GetString(1).ToString();
                    TextBox3.Text = dr.GetString(2).ToString() + "(" + DateTime.Now.ToString("yyyy")+")";
                    TextBox4.Text = dr.GetString(3).ToString();
                    TextBox5.Text = dr.GetString(4).ToString();
                    TextBox6.Text = dr.GetString(5).ToString();
                    TextBox7.Text = dr.GetString(6).ToString();
                    TextBox8.Text = dr.GetString(7).ToString();
                    TextBox9.Text = dr.GetString(8).ToString();
                    TextBox10.Text = dr.GetString(9).ToString();
                    TextBox11.Text = dr.GetString(10).ToString();
                    TextBox12.Text = dr.GetString(11).ToString();
                    TextBox13.Text = dr.GetString(12).ToString();
                    TextBox14.Text = dr.GetString(13).ToString();
                    TextBox15.Text = dr.GetString(14).ToString();
                    TextBox16.Text = dr.GetString(15).ToString();//FREE EDU
                    TextBox22.Text = dr.GetString(16).ToString();
                    TextBox23.Text = dr.GetString(17).ToString();
                    TextBox24.Text = dr.GetString(18).ToString();
                }
                con.Close();
                if (TextBox2.Text != "")
                {
                    con.Open();
                    //cmd = new SqlCommand("INSERT INTO bill_det_2018_19 VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "')", con);
                    cmd = new SqlCommand("INSERT INTO bill_det_backup VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox22.Text + "','" + TextBox23.Text + "','" + TextBox24.Text + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();

                }
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";
                TextBox11.Text = "";
                TextBox12.Text = "";
                TextBox13.Text = "";
                TextBox14.Text = "";
                TextBox15.Text = "";
                TextBox16.Text = "";

            }
            SqlConnection con1 = new SqlConnection();
            con1.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand();
            con1.Open();
            cmd1 = new SqlCommand("INSERT INTO db_change_log VALUES (' Backed Up <bill_det> to <bill_det_backup>','" + DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt") + "','" + Label1.Text + "')", con1);
            cmd1.ExecuteNonQuery();
            con1.Close();
            GridView1.DataBind();
            Label2.Text = "Bill Details has been Backed up";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label2.Text = "";
            for(int i=1;i<=9999;i++)
            {
                int j = i;
                TextBox1.Text = j.ToString().PadLeft(4,'0');
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                //cmd = new SqlCommand("DELETE FROM bill_det_2018_19 WHERE ad_num = '" + TextBox1.Text + "'", con);
                cmd = new SqlCommand("DELETE FROM bill_det WHERE ad_num = '" + TextBox1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            SqlConnection con1 = new SqlConnection();
            con1.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand();
            con1.Open();
            cmd1 = new SqlCommand("INSERT INTO db_change_log VALUES ('Data Cleared on <bill_det> ','" + DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt") + "','" + Label1.Text + "')", con1);
            cmd1.ExecuteNonQuery();
            con1.Close();
            GridView1.DataBind();
            Label2.Text = "Bill Paid List has been cleared";
        }

        protected void Button3_Click(object sender, EventArgs e)
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

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label2.Text = "";
            for (int i = 1; i <= 9999; i++)
            {
                int j = i;
                TextBox17.Text = j.ToString().PadLeft(4, '0');

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                con.Open();
                cmd = new SqlCommand("SELECT * FROM stddet WHERE admi_num = '" + TextBox17.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox18.Text = dr.GetString(1).ToString();//NAME
                    TextBox19.Text = dr.GetString(2).ToString();//STD
                    TextBox20.Text = dr.GetString(7).ToString();//FREE EDU
                }
                con.Close();
                if ((TextBox18.Text != "") && (!TextBox19.Text.Contains("(LEFT)")))
                {
                    con.Open();
                    //cmd = new SqlCommand("INSERT INTO bill_det_2018_19 VALUES ('" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "')", con);
                    cmd = new SqlCommand("INSERT INTO bill_det VALUES ('" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox20.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "','" + TextBox21.Text + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();

                }
                TextBox18.Text = "";
                TextBox19.Text = "";
                TextBox20.Text = "";
            }
            SqlConnection con1 = new SqlConnection();
            con1.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand();
            con1.Open();
            cmd1 = new SqlCommand("INSERT INTO db_change_log VALUES (' Added <stddet> to <bill_det> ','" + DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt") + "','" + Label1.Text + "')", con1);
            cmd1.ExecuteNonQuery();
            con1.Close();
            GridView1.DataBind();
            Label2.Text = "Student data has been added to Paid Bill Details";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //---------------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label1.Text + " Logged IN to Admin Page");
                sw.Close();
            }
            Response.Redirect("adminactivities.aspx?val=" + Label1.Text);//REDIRECTING TO TODAY BILL DETAILS
        }
    }
}
