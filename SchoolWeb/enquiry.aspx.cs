using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace SchoolWeb
{
    public partial class enquiry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
            Label2.Text = Request.QueryString["val"];
            if (Label2.Text == "")
            {
                Response.Redirect("Default.aspx");
            }
            TextBox1.Enabled = false;
            String filename = DateTime.Now.ToString("yyyy-MM-dd");
            //Label6.Text = DateTime.Now.ToString("dd/MM/yyyy");
            //TextBox13.Text = filename;
            //Button1.Enabled = false;
            //TextBox9.Enabled = false;
            //TextBox12.Enabled = false;
            //TextBox13.Enabled = false;
            //TextBox17.Enabled = false;

            //Label3.Text = Request.QueryString["val"];
            String uscode = DateTime.Now.ToString("hhyyyyMMMdd");
            Label6.Text = DateTime.Now.ToString("hhyyyyMMMdd");
            //GETTING DATE
            //usercode.Text = uscode;
            //String filename = DateTime.Now.ToString("dd-MMM-yyyy");
            //Label3.Text = filename;
            Button3_Click(Button3, null);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Button3_Click(Button3, null);
            try
            {

                SqlConnection con1 = new SqlConnection();
                con1.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlCommand cmd1 = new SqlCommand();
                con1.Open();

                TextBox1.Text = TextBox1.Text.ToString().PadLeft(5, '0');
                //TextBox2.Text = TextBox2.Text + " ." + TextBox20.Text;
                cmd = new SqlCommand("insert into enquiry values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList2.Text + "')", con1);
                cmd.ExecuteNonQuery();

                //cmd1 = new SqlCommand("INSERT into bill_det values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + DropDownList12.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "')", con1);
                //cmd1.ExecuteNonQuery();
                //logging


                Response.Write("<script>alert('Enquiry Details Created')</script>");
                con1.Close();
            }
            catch
            {
                //  MessageBox.Show("Error");
                //Label1.Text = "ERROR!!!!";
                Response.Write("<script>alert('Enquiry details Not Created')</script>");
            }
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //TextBox1.Text = "";
            Button3_Click(Button3, null);
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            DropDownList1.Text = "Select";
            DropDownList2.Text = "Enquired";

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            //SqlDataReader ddr;
            String str;
            int count;

            str = "select count(*) from enquiry";
            cmd = new SqlCommand(str, con);
            con.Open();
            count = Convert.ToInt16(cmd.ExecuteScalar()) + 1;
            TextBox1.Text = count.ToString().PadLeft(5, '0');
            con.Close();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            TextBox4.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox17.Text = "";
            TextBox15.Text = "";
            TextBox12.Text = "Admitted";

            // TextBox12.Text = "";

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox9.Text = DropDownList3.Text;
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox15.Text = DropDownList4.Text;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            TextBox9.Text = DropDownList3.Text;
            TextBox15.Text = DropDownList4.Text;
            TextBox17.Text = DropDownList5.Text + "-" + DropDownList6.Text + "-" + DropDownList7.Text;
            try
            {

                SqlConnection con1 = new SqlConnection();
                con1.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlCommand cmd1 = new SqlCommand();
                SqlCommand cmd2 = new SqlCommand();
                con1.Open();
                string doj = DateTime.Now.ToString("yyyy-MM-dd");
                TextBox13.Text = TextBox13.Text.ToString().PadLeft(4, '0');
                cmd = new SqlCommand("insert into stddet values ('" + TextBox13.Text + "','" + TextBox7.Text + "','" + TextBox9.Text + "','" + doj + "','" + TextBox14.Text + "','" + TextBox17.Text + "','" + TextBox16.Text + "','" + TextBox15.Text + "','" + TextBox11.Text + "')", con1);
                cmd.ExecuteNonQuery();

                cmd1 = new SqlCommand("INSERT into bill_det values('" + TextBox13.Text + "','" + TextBox7.Text + "','" + TextBox9.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "','" + TextBox16.Text + "')", con1);
                cmd1.ExecuteNonQuery();
                //logging
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + "  Ad No.: " + TextBox13.Text);
                    sw.WriteLine(dattim + "  Name " + TextBox7.Text);
                    sw.WriteLine(dattim + "  Standard " + TextBox9.Text);
                    sw.WriteLine(dattim + "  Mobile " + TextBox11.Text);
                    sw.WriteLine(dattim + "  DOB " + TextBox17.Text);
                    sw.WriteLine(dattim + "  EMIS " + TextBox14.Text);
                    sw.WriteLine(dattim + "  DOJ " + doj);
                    sw.WriteLine(dattim + "  Saved " + TextBox13.Text);
                    sw.WriteLine(dattim + "  Added by: " + Label2.Text);
                    sw.WriteLine(dattim + " -------------------------------------------------------- ");
                    sw.Close();
                }

                cmd2 = new SqlCommand("UPDATE enquiry SET status = '"+TextBox12.Text+"' WHERE eq_id = '" + TextBox4.Text + "'", con1);
                cmd2.ExecuteNonQuery();

                Response.Write("<script>alert('Student Details Created')</script>");



                con1.Close();
            }
            catch
            {
                //  MessageBox.Show("Error");
                //Label1.Text = "ERROR!!!!";
                Response.Write("<script>alert('Student details Not Created')</script>");
            }
            GridView1.DataBind();


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox4.Text = TextBox4.Text.ToString().PadLeft(5, '0');
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                con.Open();
                TextBox7.Text = TextBox7.Text.ToString().PadLeft(4, '0');
                cmd = new SqlCommand("select * from enquiry where eq_id = '" + TextBox4.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox7.Text = dr.GetString(1).ToString();
                    TextBox8.Text = dr.GetString(2).ToString();
                    TextBox9.Text = dr.GetString(3).ToString();
                    DropDownList3.Text = dr.GetString(3).ToString();
                    TextBox10.Text = dr.GetString(4).ToString();
                    TextBox11.Text = dr.GetString(5).ToString();
                    //TextBox12.Text = dr.GetString(6).ToString();
                }
                con.Close();
            }
            catch
            {
                Response.Write("<script>alert('Error adding details to students')</script>");
            }
        }
    }
}