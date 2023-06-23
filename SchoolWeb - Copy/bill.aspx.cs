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
using System.Drawing;
using System.Drawing.Printing;
using System.Threading;
using System.IO;
using System.Text;
using System.Net;


namespace SchoolWeb
{
    
    public partial class bill : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //----------------------------WILL BE LOADED ON PAGE STARTUP
            //Button11.Enabled = false;
            //Button1.Enabled = false;
            Button5.Enabled = false;
            //GridView1.Visible = true;
            //----------------------------GETTING THE BILL AMOUNT FOR FEE GENERATION
            string str2;
            int num;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            str2 = "select count(*) from bill_amt";
            cmd = new SqlCommand(str2, con);
            con.Open();
            num = Convert.ToInt16(cmd.ExecuteScalar());
            TextBox8.Text = num.ToString();
            con.Close();
            //---------------------------GETTING BILL AMOUNT
            //SqlConnection con = new SqlConnection();
            //con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand();
            SqlDataReader dr;
            TextBox6.Enabled = true;
            con.Open();
            cmd1 = new SqlCommand("select * from bill_amt where chg_num = '" + TextBox8.Text + "'", con);
            dr = cmd1.ExecuteReader();
            while (dr.Read())
            {
                TextBox87.Text = dr.GetString(28).ToString();
                TextBox88.Text = dr.GetString(29).ToString();
                TextBox89.Text = dr.GetString(30).ToString();
                TextBox72.Text = DateTime.Now.ToString("yyyy-MM-dd");
            }
            con.Close();
            //TextBox51.Text = "JAN.";
            //TextBox72.Text = TextBox1.Text;
            //----------------------------GETTING DATE
            Label1.Text = "";
            Label2.Text = Request.QueryString["val"];
            String filename = DateTime.Now.ToString("yyyy-MM-dd");
            Button5.Enabled = true;
            TextBox1.Text = filename;
            string name2 = Request.QueryString["val1"];
            Label3.Text = name2;
            TextBox3.Text = TextBox3.Text.PadLeft(4, '0');
            TextBox7.Enabled = false;
            TextBox85.Text = "0";
            if (Label3.Text == "")
            {
                Response.Redirect("Default.aspx");
            }
            if (Label2.Text != DateTime.Now.ToString("hhyyyyMMMdd"))
            {
                Response.Write("<script>alert('You are NOT AUTHORIZED.... Please Login')</script>");
                Response.Redirect("Default.aspx");
            }
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox14.Checked)
            {
                Label5.Text = "Ad. Fee";
                TextBox64.Text = "500";
                TextBox64.Visible = true;
            }
            else
            {
                TextBox64.Text = "0";
                TextBox64.Visible = false;
                Label5.Text = "";
            }
            //----------------------------ERROR TO SHOW ON CLICKING GENERATE WIHTOUT CHECKING MONTH
            if (CheckBox1.Checked || CheckBox2.Checked || CheckBox3.Checked || CheckBox4.Checked || CheckBox5.Checked || CheckBox6.Checked || CheckBox7.Checked || CheckBox8.Checked || CheckBox9.Checked || CheckBox10.Checked || CheckBox11.Checked || CheckBox12.Checked)
            {
                //TextBox7.Text = "";
                Button3.Enabled = true;
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                con.Open();
                if (TextBox3.Text.PadLeft(4, '0') == "0000")
                {
                    Response.Write("<script>alert('Enter Admission Number')</script>");
                    Response.Redirect("Default.aspx");
                }
                //----------------------------GETTING LAST PAID DETAILS
                cmd = new SqlCommand("select * from stddet where admi_num = '" + TextBox3.Text.PadLeft(4, '0') + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox50.Text = dr.GetString(1).ToString();
                    TextBox4.Text = dr.GetString(2).ToString();
                }
                con.Close();
                //----------------------------GETTING BILL NUMBER
                String str;
                int count;
                str = "select count(*) from bill";
                cmd = new SqlCommand(str, con);
                con.Open();
                count = Convert.ToInt16(cmd.ExecuteScalar());
                TextBox2.Text = count.ToString().PadLeft(6, '0');
                con.Close();
                //----------------------------ADDING INFORMATION TO LOG
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + "  " + TextBox2.Text + " Bill number & Amount Fetched for " + TextBox3.Text);
                    sw.Close();
                }
                //----------------------------BUTTON TO GET JUNE MONTH BILL DETAILS AND ADDING BILL AMOUNT
                 //Button3_Click(Button3, null);

                 //---------------------------- ADDING MONTHLY BILL DETAILS
                 Int32 val1 = Convert.ToInt32(TextBox6.Text);
                 Int32 val2 = Convert.ToInt32(TextBox9.Text);
                 Int32 val3 = Convert.ToInt32(TextBox10.Text);
                 Int32 val4 = Convert.ToInt32(TextBox11.Text);
                 Int32 val5 = Convert.ToInt32(TextBox12.Text);
                 Int32 val6 = Convert.ToInt32(TextBox13.Text);
                 Int32 val7 = Convert.ToInt32(TextBox14.Text);
                 Int32 val8 = Convert.ToInt32(TextBox15.Text);
                 Int32 val9 = Convert.ToInt32(TextBox16.Text);
                 Int32 val10 = Convert.ToInt32(TextBox17.Text);
                 Int32 val11 = Convert.ToInt32(TextBox18.Text);
                 Int32 val99 = Convert.ToInt32(TextBox85.Text);
                 Int32 val98 = Convert.ToInt32(TextBox64.Text);
                 Int32 val14 = val1 + val2 + val3 + val4 + val5 + val6 + val7 + val8 + val9 + val10 + val11 + val99;
                 TextBox63.Text = val14.ToString();
                 TextBox19.Text = (val14 + val98).ToString();
                 


                 //TextBox7.Text = TextBox7.Text + TextBox62.Text + TextBox51.Text + TextBox52.Text + TextBox53.Text + TextBox54.Text + TextBox55.Text + TextBox56.Text + TextBox57.Text + TextBox58.Text + TextBox59.Text + TextBox60.Text + TextBox61.Text;
                 Label4.Text = TextBox7.Text + TextBox62.Text + TextBox51.Text + TextBox52.Text + TextBox53.Text + TextBox54.Text + TextBox55.Text + TextBox56.Text + TextBox57.Text + TextBox58.Text + TextBox59.Text + TextBox60.Text + TextBox61.Text;


                //----------------------------------------------------------
                TextBox55.Text = "";
                TextBox56.Text = "";
                TextBox57.Text = "";
                TextBox58.Text = "";
                TextBox59.Text = "";
                TextBox60.Text = "";
                TextBox61.Text = "";
                TextBox51.Text = "";
                TextBox52.Text = "";
                TextBox53.Text = "";
                TextBox54.Text = "";
                //TextBox85.Text = "";
                TextBox62.Text = "";
            }
            else
            {
                if (DropDownList1.Text != TextBox71.Text)
                {
                    //--------------------------GETTING STUDENT DATA
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                    SqlCommand cmd = new SqlCommand();
                    SqlDataReader dr;
                    con.Open();
                    if (TextBox3.Text.PadLeft(4, '0') == "0000")
                    {
                        Response.Write("<script>alert('Enter Admission Number')</script>");
                        Response.Redirect("Default.aspx");
                    }
                    //----------------------------GETTING LAST PAID DETAILS
                    cmd = new SqlCommand("select * from stddet where admi_num = '" + TextBox3.Text.PadLeft(4, '0') + "'", con);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        TextBox50.Text = dr.GetString(1).ToString();
                        TextBox4.Text = dr.GetString(2).ToString();
                    }
                    con.Close();
                    //----------------------------GETTING BILL NUMBER
                    String str;
                    int count;
                    str = "select count(*) from bill";
                    cmd = new SqlCommand(str, con);
                    con.Open();
                    count = Convert.ToInt16(cmd.ExecuteScalar());
                    TextBox2.Text = count.ToString().PadLeft(6, '0');
                    con.Close();
                    //----------------------------ADDING INFORMATION TO LOG
                    using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
                    using (StreamWriter sw = new StreamWriter(fs))
                    {
                        String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                        sw.WriteLine(dattim + "  " + TextBox2.Text + " Bill number & Amount Fetched for " + TextBox3.Text);
                        sw.Close();
                    }
                    Label4.Text = DropDownList1.Text;
                    int F_Val;
                    if (DropDownList1.Text == "Term1")
                    {
                        //CheckBox12.Checked = true;
                        //CheckBox6.Checked = true;
                        //CheckBox7.Checked = true;
                        //CheckBox8.Checked = true;
                        TextBox63.Text = TextBox87.Text;
                        F_Val = Convert.ToInt32(TextBox87.Text) + Convert.ToInt32(TextBox64.Text);
                        TextBox19.Text = F_Val.ToString();

                    }
                    if (DropDownList1.Text == "Term2")
                    {
                        //CheckBox9.Checked = true;
                        //CheckBox10.Checked = true;
                        //CheckBox11.Checked = true;
                        //CheckBox1.Checked = true;
                        TextBox63.Text = TextBox88.Text;
                        F_Val = Convert.ToInt32(TextBox88.Text) + Convert.ToInt32(TextBox64.Text); ;
                        TextBox19.Text = F_Val.ToString();

                    }
                    if (DropDownList1.Text == "Term3")
                    {
                        //CheckBox2.Checked = true;
                        //CheckBox3.Checked = true;
                        //CheckBox4.Checked = true;
                        //CheckBox5.Checked = true;
                        TextBox63.Text = TextBox89.Text;
                        F_Val = Convert.ToInt32(TextBox89.Text) + Convert.ToInt32(TextBox64.Text); ;
                        TextBox19.Text = F_Val.ToString();
                    }
                    //
                    //Response.Write("<script>alert('Please select MONTH before Generate ')</script>");
                    TextBox55.Text = "";
                    TextBox56.Text = "";
                    TextBox57.Text = "";
                    TextBox58.Text = "";
                    TextBox59.Text = "";
                    TextBox60.Text = "";
                    TextBox61.Text = "";
                    TextBox51.Text = "";
                    TextBox52.Text = "";
                    TextBox53.Text = "";
                    TextBox54.Text = "";
                    TextBox62.Text = "";
                }
               else
                   {
                       Response.Write("<script>alert('Check if fees Already paid by student')</script>");
                   }
            }
            Button11.Enabled = true;//---------------------------- ENABLING Save BUTTON
        }
        //---------------------------- CHECKING JAN 
        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                TextBox6.Enabled = true;
                con.Open();
                cmd = new SqlCommand("select * from bill_amt where chg_num = '" + TextBox8.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox6.Text = dr.GetString(1).ToString();
                    TextBox72.Text = DateTime.Now.ToString("yyyy-MM-dd");
                }
                con.Close();
                TextBox51.Text = "JAN.";
                TextBox72.Text = TextBox1.Text;
                

            }
            else
            {
                TextBox6.Enabled = false;
                TextBox6.Text = "0";
            }
        }
        //---------------------------- CHECKING FEB
        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox2.Checked)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                TextBox9.Enabled = true;
                con.Open();
                cmd = new SqlCommand("select * from bill_amt where chg_num = '" + TextBox8.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox9.Text = dr.GetString(2).ToString();
                }
                con.Close();
                TextBox52.Text = "FEB.";
                TextBox73.Text = TextBox1.Text;
            }
            else
            {
                TextBox9.Enabled = false;
                TextBox9.Text = "0";
            }
        }
        //---------------------------- CHECKING MAR
        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox3.Checked)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                TextBox10.Enabled = true;
                con.Open();
                cmd = new SqlCommand("select * from bill_amt where chg_num = '" + TextBox8.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox10.Text = dr.GetString(3).ToString();
                }
                con.Close();
                TextBox53.Text = "MAR.";
                TextBox74.Text = TextBox1.Text;
            }
            else
            {
                TextBox10.Enabled = false;
                TextBox10.Text = "0";
            }
        }
        //---------------------------- CHECKING APR
        protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox4.Checked)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                TextBox11.Enabled = true;
                con.Open();
                cmd = new SqlCommand("select * from bill_amt where chg_num = '" + TextBox8.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox11.Text = dr.GetString(4).ToString();
                }
                con.Close();
                TextBox54.Text = "APR.";
                TextBox75.Text = TextBox1.Text;
            }
            else
            {
                TextBox11.Enabled = false;
                TextBox11.Text = "0";
            }
        }
        //---------------------------- CHECKING MAY
        protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox5.Checked)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                TextBox12.Enabled = true;
                con.Open();
                cmd = new SqlCommand("select * from bill_amt where chg_num = '" + TextBox8.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox12.Text = dr.GetString(5).ToString();
                }
                con.Close();
                TextBox55.Text = "MAY.";
                TextBox76.Text = TextBox1.Text;
            }
            else
            {
                TextBox12.Enabled = false;
                TextBox12.Text = "0";
            }
        }
        //---------------------------- CHECKING JUN
        protected void CheckBox12_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox12.Checked)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                TextBox85.Enabled = true;
                con.Open();
                cmd = new SqlCommand("select * from bill_amt where chg_num = '" + TextBox8.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox85.Text = dr.GetString(7).ToString();
                }
                con.Close();
                TextBox62.Text = "JUN.";
                TextBox77.Text = TextBox1.Text;
            }
            else
            {
                TextBox85.Enabled = false;
                TextBox85.Text = "0";
            }
        }
        //---------------------------- CHECKING JUL
        protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox6.Checked)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                TextBox13.Enabled = true;
                con.Open();
                cmd = new SqlCommand("select * from bill_amt where chg_num = '" + TextBox8.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox13.Text = dr.GetString(7).ToString();
                }
                con.Close();
                TextBox56.Text = "JUL.";
                TextBox78.Text = TextBox1.Text;
            }
            else
            {
                TextBox13.Enabled = false;
                TextBox13.Text = "0";
            }
        }
        //---------------------------- CHECKING AUG
        protected void CheckBox7_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox7.Checked)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                TextBox14.Enabled = true;
                con.Open();
                cmd = new SqlCommand("select * from bill_amt where chg_num = '" + TextBox8.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox14.Text = dr.GetString(8).ToString();
                }
                con.Close();
                TextBox57.Text = "AUG.";
                TextBox79.Text = TextBox1.Text;
            }
            else
            {
                TextBox14.Enabled = false;
                TextBox14.Text = "0";
            }
        }
        //---------------------------- CHECKING SEP
        protected void CheckBox8_CheckedChanged(object sender, EventArgs e)
        {
            TextBox15.Text = "0";
            if (CheckBox8.Checked)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                TextBox15.Enabled = true;
                con.Open();
                cmd = new SqlCommand("select * from bill_amt where chg_num = '" + TextBox8.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox15.Text = dr.GetString(9).ToString();
                }
                con.Close();
                TextBox58.Text = "SEP.";
                TextBox80.Text = TextBox1.Text;

            }
            else
            {
                TextBox15.Enabled = false;
                TextBox15.Text = "0";
            }
        }
        //---------------------------- CHECKING OCT
        protected void CheckBox9_CheckedChanged(object sender, EventArgs e)
        {
            TextBox16.Text = "0";
            if (CheckBox9.Checked)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                TextBox16.Enabled = true;
                con.Open();
                cmd = new SqlCommand("select * from bill_amt where chg_num = '" + TextBox8.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox16.Text = dr.GetString(10).ToString();
                }
                con.Close();
                TextBox59.Text = "OCT.";
                TextBox81.Text = TextBox1.Text;

            }
            else
            {
                TextBox16.Enabled = false;
                TextBox16.Text = "0";
            }
        }
        //---------------------------- CHECKING NOV
        protected void CheckBox10_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox10.Checked)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                TextBox17.Enabled = true;
                con.Open();
                cmd = new SqlCommand("select * from bill_amt where chg_num = '" + TextBox8.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox17.Text = dr.GetString(11).ToString();
                }
                con.Close();
                TextBox60.Text = "NOV.";
                TextBox82.Text = TextBox1.Text;
            }
            else
            {
                TextBox17.Enabled = false;
                TextBox17.Text = "0";
            }
        }
        //---------------------------- CHECKING DEC
        protected void CheckBox11_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox11.Checked)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                TextBox18.Enabled = true;
                con.Open();
                cmd = new SqlCommand("select * from bill_amt where chg_num = '" + TextBox8.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox18.Text = dr.GetString(12).ToString();
                }
                con.Close();
                TextBox61.Text = "DEC.";
                TextBox83.Text = TextBox1.Text;
            }
            else
            {
                TextBox18.Enabled = false;
                TextBox18.Text = "0";
            }
        }
        //---------------------------- CLEARING STUDENT DETAILS AND MAKING MONTHLY AMOUNT TO "0"
        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox50.Text = "";
            TextBox6.Text = "0";
            TextBox7.Text = "";
            TextBox9.Text = "0";
            TextBox10.Text = "0";
            TextBox11.Text = "0";
            TextBox12.Text = "0";
            TextBox13.Text = "0";
            TextBox14.Text = "0";
            TextBox15.Text = "0";
            TextBox16.Text = "0";
            TextBox17.Text = "0";
            TextBox18.Text = "0";
         }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
            Button5.Enabled = true;
            
            //---------------------------- JUNE BILL DETAILS
            if (CheckBox12.Checked)
            {
                if (CheckBox12.Checked)
                {
                   
                    //---------------------------- ASSIGNING LABLE TEXT
                    Label4.Text = "App Regn";
                    Label5.Text = "Admis Fee";
                    Label6.Text = "Tution Fee";
                    Label7.Text = "Other Fee";
                    Label8.Text = "Term Fee";
                    Label9.Text = "Special Fee";
                    Label10.Text = "Miscellaneous Fee";
                
                    //---------------------------- HIDING LABEL
                    Label4.Visible = false;
                    Label5.Visible = false;
                    Label6.Visible = false;
                    Label7.Visible = false;
                    Label8.Visible = false;
                    Label9.Visible = false;
                    Label10.Visible = false;
                    //---------------------------- GETTING VALUES FOR JUNE
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                    SqlCommand cmd = new SqlCommand();
                    SqlDataReader dr;
                    con.Open();
                    cmd = new SqlCommand("select * from bill_amt where chg_num = '" + TextBox8.Text + "'", con);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        if (CheckBox13.Checked)
                        {
                            TextBox63.Text = "0";
                        }
                        else
                        {
                            TextBox63.Text = dr.GetString(13).ToString();
                        }
                        TextBox64.Text = dr.GetString(14).ToString();
                        TextBox65.Text = dr.GetString(15).ToString();
                        TextBox66.Text = dr.GetString(16).ToString();
                        TextBox67.Text = dr.GetString(17).ToString();
                        TextBox68.Text = dr.GetString(18).ToString();
                        TextBox69.Text = dr.GetString(19).ToString();
                        TextBox85.Text = dr.GetString(6).ToString();
                        //---------------------------------HIDDING TEXT BOX
                        TextBox63.Visible = false;
                        TextBox64.Visible = false;
                        TextBox65.Visible = false;
                        TextBox66.Visible = false;
                        TextBox67.Visible = false;
                        TextBox68.Visible = false;
                        TextBox69.Visible = false;

                    }
                    //---------------------------- SUM OF JUNE BILL DETAILS
                    Int32 val21 = Convert.ToInt32(TextBox63.Text);
                    Int32 val12 = Convert.ToInt32(TextBox64.Text);
                    Int32 val13 = Convert.ToInt32(TextBox65.Text);
                    Int32 val24 = Convert.ToInt32(TextBox66.Text);
                    Int32 val15 = Convert.ToInt32(TextBox67.Text);
                    Int32 val16 = Convert.ToInt32(TextBox68.Text);
                    Int32 val17 = Convert.ToInt32(TextBox69.Text);
                    Int32 val34 = val21 + val12 + val13 + val24 + val15 + val16 + val17;
                    //TextBox19.Text = val34.ToString();
                    //TextBox19.Text = jun_val;
                    TextBox62.Text = "JUN.";
                    TextBox77.Text = TextBox1.Text;
                    con.Close();
                    //---------------------------- ADDING MONTHLY BILL DETAILS
                    Int32 val1 = Convert.ToInt32(TextBox6.Text);
                    Int32 val2 = Convert.ToInt32(TextBox9.Text);
                    Int32 val3 = Convert.ToInt32(TextBox10.Text);
                    Int32 val4 = Convert.ToInt32(TextBox11.Text);
                    Int32 val5 = Convert.ToInt32(TextBox12.Text);
                    Int32 val6 = Convert.ToInt32(TextBox13.Text);
                    Int32 val7 = Convert.ToInt32(TextBox14.Text);
                    Int32 val8 = Convert.ToInt32(TextBox15.Text);
                    Int32 val9 = Convert.ToInt32(TextBox16.Text);
                    Int32 val10 = Convert.ToInt32(TextBox17.Text);
                    Int32 val11 = Convert.ToInt32(TextBox18.Text);
                    Int32 val99 = Convert.ToInt32(TextBox85.Text);
                    Int32 val14 = val1 + val2 + val3 + val4 + val5 + val6 + val7 + val8 + val9 + val10 + val11 + val99;
                    TextBox19.Text = val14.ToString();
                    TextBox7.Text = TextBox62.Text + TextBox51.Text + TextBox52.Text + TextBox53.Text + TextBox54.Text + TextBox55.Text + TextBox56.Text + TextBox57.Text + TextBox58.Text + TextBox59.Text + TextBox60.Text + TextBox61.Text;

                    
                }
            }
            else
            {
                //---------------------------- HIDING JUNE LABEL DETAILS
                Label4.Visible = false;
                Label5.Visible = false;
                Label6.Visible = false;
                Label7.Visible = false;
                Label8.Visible = false;
                Label9.Visible = false;
                Label10.Visible = false;
                //---------------------------- HIDING JUNE TEXTBOX DETAILS
                TextBox63.Visible = false;
                TextBox64.Visible = false;
                TextBox65.Visible = false;
                TextBox66.Visible = false;
                TextBox67.Visible = false;
                TextBox68.Visible = false;
                TextBox69.Visible = false;
            }
            //---------------------------- CHECKING PREVIOUS PAYMENT DETAILS
            try
            {
                //if (TextBox71.Text == TextBox7.Text)
                //{
                    //System.Threading.Thread.Sleep(5000);
                   // Response.Write("<script>alert('Fees Paid Already For Selected Month')</script>");
                    //System.Threading.Thread.SpinWait(5000);
                    //Response.Redirect("Default.aspx");
               // }
            }
            catch
            {
            }
        }
        //---------------------------- SAVNING BILL
        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                TextBox7.Text = TextBox51.Text  + TextBox52.Text  + TextBox53.Text  + TextBox54.Text  + TextBox55.Text  + TextBox56.Text  + TextBox57.Text  + TextBox58.Text + TextBox59.Text  + TextBox60.Text  + TextBox61.Text;
                cmd = new SqlCommand("INSERT INTO bill VALUES ('" + TextBox2.Text + "','" + TextBox3.Text.PadLeft(4, '0') + "','" + TextBox50.Text + "','" + TextBox7.Text + "','" + TextBox19.Text + "','" + TextBox1.Text + "','" + TextBox4.Text + "')", con);
                cmd.ExecuteNonQuery();
                Label1.Text = "Data Stored !!!! !!";
                con.Close();
            }
            catch
            {
                Label1.Text = "ERROR!!!!";
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
        {

        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {

        }
        //---------------------------- LOG OUT FROM BILL PAGE
        protected void Button7_Click(object sender, EventArgs e)
        {
            //---------------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label3.Text + " Logged OUT From Bill");
                sw.WriteLine(dattim + " --------------------------------------------------------- ");
                sw.Close();
            }
            Response.Redirect("Default.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            
        }
        //---------------------------- PRINTING THE BILL
        protected void Button5_Click(object sender, EventArgs e)
        {
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine( dattim + " Printed " + TextBox2.Text);
                
                sw.WriteLine(dattim + " --------------------------------------------------------- ");
                sw.Close();
            }

            Button8_Click(Button8, null);
        }

       

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
        //---------------------------- CHECKING JUN BY ENABLING JUN(OLD)
        protected void CheckBox13_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox12.Checked = true;
        }
        //---------------------------- NEW BILL
        protected void Button8_Click1(object sender, EventArgs e)
        {
            //---------------------------- MAKING TEXTBOX NULL
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox7.Text = "";
            //TextBox8.Text = "";
            TextBox50.Text = "";
            TextBox51.Text = "";
            TextBox52.Text = "";
            TextBox53.Text = "";
            TextBox54.Text = "";
            TextBox55.Text = "";
            TextBox56.Text = "";
            TextBox57.Text = "";
            TextBox58.Text = "";
            TextBox59.Text = "";
            TextBox60.Text = "";
            TextBox61.Text = "";
            TextBox63.Text = "";
            TextBox64.Text = "";
            TextBox65.Text = "";
            TextBox66.Text = "";
            TextBox67.Text = "";
            TextBox68.Text = "";
            TextBox69.Text = "";
            TextBox19.Text = "";
            Label4.Text = "";//MAKING TEXT TO NULL IN LABEL
            Label5.Text = "";
            Label6.Text = "";
            Label7.Text = "";
            Label8.Text = "";
            Label9.Text = "";
            Label10.Text = "";
            //---------------------------- RESETING CHECKBOX TO UNCHECK
            Button5.Enabled = false;
            if (CheckBox1.Checked)
            {
                CheckBox1.Checked = false;
                TextBox6.Text = "0";
            }
            if (CheckBox2.Checked)
            {
                CheckBox2.Checked = false;
                TextBox9.Text = "0";
            }
            if (CheckBox3.Checked)
            {
                CheckBox3.Checked = false;
                TextBox10.Text = "0";
            }
            if (CheckBox4.Checked)
            {
                CheckBox4.Checked = false;
                TextBox11.Text = "0";
            }
            if (CheckBox5.Checked)
            {
                CheckBox5.Checked = false;
                TextBox12.Text = "0";
            }
            if (CheckBox6.Checked)
            {
                CheckBox6.Checked = false;
                TextBox13.Text = "0";
            }
            if (CheckBox7.Checked)
            {
                CheckBox7.Checked = false;
                TextBox14.Text = "0";
            }
            if (CheckBox8.Checked)
            {
                CheckBox8.Checked = false;
                TextBox15.Text = "0";
            }
            if (CheckBox9.Checked)
            {
                CheckBox9.Checked = false;
                TextBox16.Text = "0";
            }
            if (CheckBox10.Checked)
            {
                CheckBox10.Checked = false;
                TextBox17.Text = "0";
            }
            if (CheckBox11.Checked)
            {
                CheckBox11.Checked = false;
                TextBox18.Text = "0";
            }
            if (CheckBox12.Checked)
            {
                CheckBox12.Checked = false;
                CheckBox13.Checked = false;
                TextBox85.Text = "0";
            }
            if (CheckBox13.Checked)
            {
                CheckBox12.Checked = false;
                CheckBox13.Checked = false;
                TextBox85.Text = "0";
            }
            if (CheckBox14.Checked)
            {
                CheckBox14.Checked = false;
                Label5.Text = "";
                TextBox64.Text = "0";
            }
            TextBox71.Text = "";
            TextBox84.Text = "";
            //---------------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + "  New Billing ");
                sw.Close();
            }
            //---------------------------- HIDING SAVE BUTTON
            Button3.Enabled = false;
            //---------------------------- Getting New Bill Number
            string str2;
            int num;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            str2 = "select count(*) from bill";
            cmd = new SqlCommand(str2, con);
            con.Open();
            num = Convert.ToInt16(cmd.ExecuteScalar());
            TextBox2.Text = num.ToString();
            TextBox2.Text = TextBox2.Text.ToString().PadLeft(6, '0');
            con.Close();
        }

        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {

        }
        //---------------------------- GETTING ALREADY BILLED DETAILS
        protected void Button9_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;
            TextBox18.Enabled = true;
            con.Open();
            TextBox2.Text = TextBox2.Text.ToString().PadLeft(6, '0');
            cmd = new SqlCommand("select * from bill where bill_num = '" + TextBox2.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox3.Text = dr.GetString(1).ToString(); //admi_num
                TextBox50.Text = dr.GetString(2).ToString(); //name
                TextBox7.Text = dr.GetString(3).ToString(); //mon
                //TextBox19.Text = dr.GetString(4); //amt
                TextBox19.Text = dr.GetInt32(4).ToString();
                TextBox4.Text = dr.GetString(6).ToString(); //std
                TextBox1.Text = dr.GetString(5).ToString(); //Date
            }
            con.Close();
            Button5.Enabled = true;//---------------------------- ENABLING PRINT BUTTON
            Button5.Visible = true;//---------------------------- MAKING PRINT BUTTON VISIBLE
            //---------------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " Fetching Bill No: " + TextBox2.Text + " Ad No.: " + TextBox3.Text + " Date: " + TextBox1.Text + " Name: " + TextBox50.Text + " STD: " + TextBox4.Text + " Month: " + TextBox7.Text + " Amount: " + TextBox19.Text + " Duplicate Billed BY: " + Label3.Text);
                //sw.WriteLine(dattim + " Bill No.: " + TextBox2.Text + " Saved ");

                sw.WriteLine(dattim + " --------------------------------------------------------- ");
                sw.Close();
            }
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text == "0000")
            {
                Response.Write("<script>alert('*** ERROR ... Please Check the Admission Number ***')</script>");
                Button8_Click(Button8, null);
            }
            
            //---------------------------- TO GET LAST PAID MONTH FOR THE PARTICULAR ADMISSION NUMBER
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;
            con.Open();
            cmd = new SqlCommand("SELECT TOP 1 * FROM bill WHERE admi_num = '" + TextBox3.Text.PadLeft(4, '0') + "' ORDER BY bill_num DESC ", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox71.Text = dr.GetString(3).ToString();

            }
            con.Close();
            //---------------------------- GETTING NAME AND STD FROM "STUDET" WITH ADMISSION NUMBER 
            con.Open();
            cmd = new SqlCommand("select * from stddet where admi_num = '" + TextBox3.Text.PadLeft(4, '0') + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox50.Text = dr.GetString(1).ToString();//NAME
                TextBox4.Text = dr.GetString(2).ToString();//STD
                TextBox84.Text = dr.GetString(8).ToString();//MOBILE
            }
            con.Close();
            //---------------------------- GETTING PAID MONTH DATE FROM "BILL_DET"
            con.Open();
            cmd = new SqlCommand("select * from bill_det where ad_num = '" + TextBox3.Text.PadLeft(4, '0') + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox72.Text = dr.GetString(10).ToString();//JAN
                TextBox73.Text = dr.GetString(11).ToString();//FEB
                TextBox74.Text = dr.GetString(12).ToString();//MAR
                TextBox75.Text = dr.GetString(13).ToString();//APR
                TextBox76.Text = dr.GetString(14).ToString();//MAY
                TextBox77.Text = dr.GetString(3).ToString();//JUN
                TextBox78.Text = dr.GetString(4).ToString();//JUL
                TextBox79.Text = dr.GetString(5).ToString();//AUG
                TextBox80.Text = dr.GetString(6).ToString();//SEP
                TextBox81.Text = dr.GetString(7).ToString();//OCT
                TextBox82.Text = dr.GetString(8).ToString();//NOV
                TextBox83.Text = dr.GetString(9).ToString();//DEC
                String edu = dr.GetString(15).ToString();//FREE EDU
                if (edu == "RTE/FC")
                {
                    Response.Write("<script>alert('ATTENTION!!! This student is under FREE EDUCATION ----- Education Type : [RTE/FC]')</script>");
                }
            }
            con.Close();
            Button1.Enabled = true;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            try
            {
                //---------------------------- SAVING TO bill
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                TextBox1.Text = TextBox1.Text.ToString().PadLeft(4, '0');
                cmd = new SqlCommand("INSERT INTO bill VALUES ('" + TextBox2.Text + "','" + TextBox3.Text.PadLeft(4, '0') + "','" + TextBox50.Text + "','" + TextBox7.Text + "','" + TextBox19.Text + "','" + TextBox1.Text + "','" + TextBox4.Text + "','" + Label3.Text + "')", con);
                cmd.ExecuteNonQuery();
                Label1.Text = "*** BILL SAVED ***";
                //Button15_Click(Button15, null);//-------------------- Sending SMS
                Button5.Enabled = true;//---------------------------- ENABLING PRINT BUTTON
                con.Close();
                //---------------------------- LOGGING
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim +" Bill No.: "+ TextBox2.Text + " Ad No.: " + TextBox3.Text +" Date: " + TextBox1.Text+ " Name: "+ TextBox50.Text+ " STD: "+ TextBox4.Text + " Month: " + TextBox7.Text+" Amount: "+ TextBox19.Text+ " Billed BY: "+ Label3.Text);
                    sw.WriteLine(dattim + " Bill No.: " + TextBox2.Text + " Saved ");

                    sw.WriteLine(dattim + " --------------------------------------------------------- ");
                    sw.Close();
                }
                //Response.Write("<script>alert('!!! BILL SAVED !!! ..... You Can Print Now ')</script>");
                Button12_Click(Button12, null);//---------------------------- ADDING PAID DATE TO "BILL_DET"
                TextBox72.Text = "";
                TextBox73.Text = "";
                TextBox74.Text = "";
                TextBox75.Text = "";
                TextBox76.Text = "";
                TextBox77.Text = "";
                TextBox78.Text = "";
                TextBox79.Text = "";
                TextBox80.Text = "";
                TextBox81.Text = "";
                TextBox82.Text = "";
                TextBox83.Text = "";
                //TextBox64.Text = "0";
           }
           catch
           {
                //---------------------------- ERROR FOR CLICKIING SAVE BUTTON DOUBLE
                Response.Write("<script>alert('*** ERROR ... Please Check If Already Saved ***')</script>");
                Label1.Text = "ERROR!!!!";
           }
            Button11.Enabled = false;//---------------------------- DISABLING SAVE BUTTON
        }
        //---------------------------- ADDING PAID DATE TO "BILL_DET"
        protected void Button12_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            con.Open();
            if (DropDownList1.Text == "Term1")
            {
                cmd = new SqlCommand("update bill_det  set jan = '" + TextBox72.Text + "',feb = '" + TextBox73.Text + "',mar = '" + TextBox74.Text + "',apr = '" + TextBox75.Text + "',may = '" + TextBox76.Text + "',jun = '" + TextBox77.Text + "',jul = '" + TextBox78.Text + "',aug = '" + TextBox79.Text + "',sep = '" + TextBox80.Text + "',oct = '" + TextBox81.Text + "',nov = '" + TextBox82.Text + "',dec = '" + TextBox83.Text + "',term1 = '" + TextBox1.Text + "' where ad_num = '" + TextBox3.Text.PadLeft(4, '0') + "'", con);
            }
            if (DropDownList1.Text == "Term2")
            {
                cmd = new SqlCommand("update bill_det  set jan = '" + TextBox72.Text + "',feb = '" + TextBox73.Text + "',mar = '" + TextBox74.Text + "',apr = '" + TextBox75.Text + "',may = '" + TextBox76.Text + "',jun = '" + TextBox77.Text + "',jul = '" + TextBox78.Text + "',aug = '" + TextBox79.Text + "',sep = '" + TextBox80.Text + "',oct = '" + TextBox81.Text + "',nov = '" + TextBox82.Text + "',dec = '" + TextBox83.Text + "',term2 = '" + TextBox1.Text + "' where ad_num = '" + TextBox3.Text.PadLeft(4, '0') + "'", con);
            }
            if (DropDownList1.Text == "Term3")
            {
                cmd = new SqlCommand("update bill_det  set jan = '" + TextBox72.Text + "',feb = '" + TextBox73.Text + "',mar = '" + TextBox74.Text + "',apr = '" + TextBox75.Text + "',may = '" + TextBox76.Text + "',jun = '" + TextBox77.Text + "',jul = '" + TextBox78.Text + "',aug = '" + TextBox79.Text + "',sep = '" + TextBox80.Text + "',oct = '" + TextBox81.Text + "',nov = '" + TextBox82.Text + "',dec = '" + TextBox83.Text + "',term3 = '" + TextBox1.Text + "' where ad_num = '" + TextBox3.Text.PadLeft(4, '0') + "'", con);
            }
            
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox72.Text = "";
            TextBox73.Text = "";
            TextBox74.Text = "";
            TextBox75.Text = "";
            TextBox76.Text = "";
            TextBox77.Text = "";
            TextBox78.Text = "";
            TextBox79.Text = "";
            TextBox80.Text = "";
            TextBox81.Text = "";
            TextBox82.Text = "";
            TextBox83.Text = "";
        }
        //---------------------------- GETTING PAID DATE FROM "BILL_DET"
        protected void Button13_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;
            con.Open();
            cmd = new SqlCommand("select * from bill_det where ad_num = '" + TextBox3.Text.PadLeft(4, '0') + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox72.Text = dr.GetString(10).ToString();//JAN
                TextBox73.Text = dr.GetString(11).ToString();//FEB
                TextBox74.Text = dr.GetString(12).ToString();//MAR
                TextBox75.Text = dr.GetString(13).ToString();//APR
                TextBox76.Text = dr.GetString(14).ToString();//MAY
                TextBox85.Text = dr.GetString(6).ToString();//JUN
                TextBox78.Text = dr.GetString(4).ToString();//JUL
                TextBox79.Text = dr.GetString(5).ToString();//AUG
                TextBox80.Text = dr.GetString(6).ToString();//SEP
                TextBox81.Text = dr.GetString(7).ToString();//OCT
                TextBox82.Text = dr.GetString(8).ToString();//NOV
                TextBox83.Text = dr.GetString(9).ToString();//DEC
            }
            con.Close();
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            //--------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.Txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label1.Text + "Logged OUT From Bill");
                sw.WriteLine(dattim + " --------------------------------------------------------- ");
                sw.Close();
            }
            Response.Redirect("CommonTab.aspx?val=" + Label3.Text);
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            //Sending SMS
            String dattim1 = DateTime.Now.ToString("yyyy-MM-dd");
            string apiKey = "W9tPUL+1o8Q-GHPeWm9z4uBR19GbuUiMZ8REMs1NhV";
            string numbers = TextBox84.Text; // in a comma seperated list
            string message = "Dear Parent, Rs. "+TextBox19.Text+" has been received for "+TextBox7.Text+" Month. -By Vasantham School" ;
            //string message = "This is your message";
            string sender1 = "TXTLCL";

            String url = "https://api.textlocal.in/send/?apikey=" + apiKey + "&numbers=91" + numbers + "&message=" + message + "&sender=" + sender1;
            WebClient webClient = new WebClient();
            webClient.Encoding = System.Text.Encoding.UTF8;
            string result = webClient.DownloadString(url);
            //Logging
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\SMS_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + "  [Fee Paid SMS] " + result);
                sw.Close();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox7.Text = DropDownList1.Text;
            if (DropDownList1.Text == "Term1")
            {
                //CheckBox12.Checked = true;
                //CheckBox6.Checked = true;
                //CheckBox7.Checked = true;
                //CheckBox8.Checked = true;
                
                TextBox19.Text = TextBox87.Text;

            }
            if (DropDownList1.Text == "Term2")
            {
                //CheckBox9.Checked = true;
                //CheckBox10.Checked = true;
                //CheckBox11.Checked = true;
                //CheckBox1.Checked = true;
                TextBox19.Text = TextBox88.Text;

            }
            if (DropDownList1.Text == "Term3")
            {
                //CheckBox2.Checked = true;
                //CheckBox3.Checked = true;
                //CheckBox4.Checked = true;
                //CheckBox5.Checked = true;
                TextBox19.Text = TextBox89.Text;
            }
        }
    }
}
