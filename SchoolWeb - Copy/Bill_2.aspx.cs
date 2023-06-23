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
using Org.BouncyCastle.Crypto.Signers;

namespace SchoolWeb
{
    public partial class Bill_2 : System.Web.UI.Page
    {
        public static string Bill_Amt_Num;
        public static string Old_Bill_Change_Number;
        public static int Data_Count = 0;
        public static string all_months;
        public static string jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec, term1, term2, term3;
        public static string ones, tens, hund;

        

        string rte_status;
        string app_fee, admin_fee;


        protected void Page_Load(object sender, EventArgs e)
        {
            //----------------------------TERM FEE or MONTHLY FEE Selection
            //RadioButton1.Checked = true;
            //RadioButton2.Checked = false;

            GridView1.DataBind();
            //----------------------------PAGE AUTHENTICATION
            string date_val = Request.QueryString["val"];
            //String filename = DateTime.Now.ToString("yyyy-MM-dd");
            
            string name2 = Request.QueryString["val1"];
            Label2.Text = name2;
            Label16.Visible = false;

            
            if (Label2.Text == "")
            {
                Response.Redirect("Default.aspx");
            }
            if (date_val != DateTime.Now.ToString("hhyyyyMMMdd"))
            {
                Response.Write("<script>alert('You are NOT AUTHORIZED.... Please Login')</script>");
                Response.Redirect("Default.aspx");
            }
            Label16.Text = DateTime.Now.ToString("hhyyyyMMMdd");
            Label17.Text = Label2.Text;
            
            
            //----------------------------DATE Generation for BILL
            TextBox6.Text = DateTime.Now.ToString("yyyy-MM-dd");

            //----------------------------DEFAULT OLD STUDENT SELECTION
            RadioButton3.Checked = true;
            RadioButton1.Checked = true;
            RadioButton4.Enabled = false;
            RadioButton4.Visible= false;
            //Data_Count = 0;
            Button5.Enabled = false;
            //Button7.Enabled = false;
            //Button3.Enabled = false;
            //Button9.Enabled = true;

            
        }

        protected void new_bill_need ()
        {
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
            //Bill_Amt_Num = Convert.ToInt32(num);
            Bill_Amt_Num = num.ToString().Trim();
            con.Close();


            //----------------------------GETTING BILL NUMBER
            String str;
            int count;
            str = "select count(*) from bill";
            cmd = new SqlCommand(str, con);
            con.Open();
            count = Convert.ToInt16(cmd.ExecuteScalar());
            if (TextBox26.Text != "OLD")
            {
                TextBox5.Text = count.ToString().PadLeft(6, '0').Trim();
            }

            con.Close();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            TextBox26.Text = "OLD";

            // Fetching old bill details
            TextBox5.Text = TextBox5.Text.ToString().PadLeft(6, '0');
            //----------------------------SQL Connection --
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;
            string particulars = "";
            //---------------------------- GETTING NAME AND STD FROM "STUDET" WITH ADMISSION NUMBER 
            con.Open();
            cmd = new SqlCommand("select * from bill where bill_num = '" + TextBox5.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                Old_Bill_Change_Number = Bill_Amt_Num;
                if (dr.HasRows)
                {
                    TextBox7.Text = dr.GetString(1).ToString().Trim();//Admission Number
                    TextBox1.Text = dr.GetString(2).ToString().Trim();//Name
                    particulars = dr.GetString(3).ToString().Trim();//Mon - Particulars
                    TextBox12.Text = dr.GetInt32(4).ToString().Trim();//Total Amount
                    TextBox6.Text = dr.GetString(5).ToString().Trim();//Bill -Date
                    TextBox13.Text = dr.GetString(6).ToString().Trim();//STD
                    string billerName = dr.GetString(7).ToString().Trim();//Billed BY + Bill Change Number
                    try
                    {
                        Label17.Text = billerName.Split('/')[0];
                        Old_Bill_Change_Number = billerName.Split('/')[1];
                        //TextBox84.Text = dr.GetString(8).ToString();//MOBILE
                    }
                    catch
                    {
                        Label17.Text = billerName;
                    }
                    
                }
                else
                {
                    Response.Write("<script>alert('NO BILL RECORD FOUND')</script>");
                    break;
                }
                
            }
            con.Close();

            Button4_Click(Button4, null);
            //Code for spliting Particulars
            string[] particular = particulars.Split('/');
            if (particular[0] == "Admi & Reg Fee")
            {
                TextBox2.Text = "Admi & Reg Fee";
                TextBox3.Text = "App Fee";
                TextBox8.Text = particular[2];
            }
            else
            {
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox8.Text = particular[0];
            }
            TextBox14.Text = "Other Fee";
            TextBox15.Text = "Term Fee";
            TextBox21.Text = "Special Fee";
            TextBox25.Text = "Misc Fee";


            //--------Term Fee

            if (Old_Bill_Change_Number != null)
            {

                con.Open();
                cmd = new SqlCommand("select * from bill_amt where chg_num = '" + Old_Bill_Change_Number.ToString() + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    if (TextBox8.Text == "Tuition Fee - I")
                    {
                        TextBox11.Text = dr.GetString(Convert.ToInt32(28)).ToString().Trim();
                    }
                    if (TextBox8.Text == "Tuition Fee - II")
                    {
                        TextBox11.Text = dr.GetString(Convert.ToInt32(29)).ToString().Trim();
                    }
                    if (TextBox8.Text == "Tuition Fee - III")
                    {
                        TextBox11.Text = dr.GetString(Convert.ToInt32(30)).ToString().Trim();
                    }

                    if (particular[0] == "Admi & Reg Fee")
                    {
                        app_fee = dr.GetString(13).ToString().Trim();
                        admin_fee = dr.GetString(14).ToString().Trim();
                    }

                    TextBox16.Text = dr.GetString(16).ToString().Trim();
                    TextBox17.Text = dr.GetString(17).ToString().Trim();
                    TextBox22.Text = dr.GetString(18).ToString().Trim();
                    TextBox24.Text = dr.GetString(19).ToString().Trim();
                }
                con.Close();
            } 


            Button5_Click(Button5, null);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox7.Text = TextBox7.Text.ToString().PadLeft(4, '0');
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            new_bill_need();
            //----------------------------SQL Connection --
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;
            

            TextBox7.Text = TextBox7.Text.PadLeft(4, '0');
            if (TextBox7.Text == "0000")
            {
                Response.Write("<script>alert('*** ERROR ... Please Check the Admission Number ***')</script>");
                //Button8_Click(Button8, null);
            }

            //---------------------------- GETTING NAME AND STD FROM "STUDET" WITH ADMISSION NUMBER 
            con.Open();
            cmd = new SqlCommand("select * from stddet where admi_num = '" + TextBox7.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr.GetString(1).ToString().Trim();//NAME
                TextBox13.Text = dr.GetString(2).ToString().Trim();//STD
                rte_status = dr.GetString(7).ToString().Trim();//RTE/FC
                //TextBox84.Text = dr.GetString(8).ToString();//MOBILE
            }
            con.Close();
            string txt = "LEFT";
            if (TextBox13.Text.Contains(txt))
            {
                Response.Write("<script>alert('*** ERROR ... Student left the school ***')</script>");
                //Button6_Click(Button6, null);
            }
            string rte = "RTE/FC";
            if (rte_status.Contains(rte))
            {
                Response.Write("<script>alert('*** ERROR ... Student is tagged to RTE or FC ***')</script>");
                //Button6_Click(Button6, null);
            }

            Button10_Click(Button10, null);
        }


        protected void Button10_Click(object sender, EventArgs e)
        {
            TextBox20.Text = (4 - Data_Count).ToString().Trim();
            
            //----------------------------SQL Connection --
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;

            if (RadioButton1.Checked)
            {
                //--------Term Fee
                con.Open();
                cmd = new SqlCommand("select * from bill_amt where chg_num = '" + Bill_Amt_Num + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox11.Text = dr.GetString(Convert.ToInt32(DropDownList1.SelectedItem.Value)).ToString().Trim();
                    app_fee = dr.GetString(13).ToString().Trim();
                    admin_fee = dr.GetString(14).ToString().Trim();

                    TextBox16.Text = dr.GetString(16).ToString().Trim();
                    TextBox17.Text = dr.GetString(17).ToString().Trim();
                    TextBox22.Text = dr.GetString(18).ToString().Trim();
                    TextBox24.Text = dr.GetString(19).ToString().Trim();
                }
                con.Close();

                TextBox8.Text = "Tuition Fee " + DropDownList1.SelectedItem.Text.Substring(5);
                TextBox14.Text = "Other Fee";
                TextBox15.Text = "Term Fee";
                TextBox21.Text = "Special Fee";
                TextBox25.Text = "Misc Fee";



                /**
                if (Data_Count == 0)
                {
                    TextBox2.Text = DropDownList1.SelectedItem.Text;
                    TextBox9.Text = TextBox18.Text.Trim();
                }
                if (Data_Count == 1)
                {
                    TextBox3.Text = DropDownList1.SelectedItem.Text;
                    TextBox10.Text = TextBox18.Text.Trim();
                }
                if (Data_Count == 2)
                {
                    TextBox8.Text = DropDownList1.SelectedItem.Text;
                    TextBox11.Text = TextBox18.Text.Trim();
                }**/

            }
            if (RadioButton2.Checked)
            {
                //--------Monthly Fee
                con.Open();
                cmd = new SqlCommand("select * from bill_amt where chg_num = '" + Bill_Amt_Num + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox19.Text = dr.GetString(Convert.ToInt32(DropDownList2.SelectedItem.Value)).ToString().Trim();

                }
                con.Close();

                if (Data_Count == 0)
                {
                    TextBox2.Text = DropDownList2.SelectedItem.Text;
                    TextBox9.Text = TextBox19.Text.Trim();
                }
                if (Data_Count == 1)
                {
                    TextBox3.Text = DropDownList2.SelectedItem.Text;
                    TextBox10.Text = TextBox19.Text.Trim();
                }
                if (Data_Count == 2)
                {
                    TextBox8.Text = DropDownList2.SelectedItem.Text;
                    TextBox11.Text = TextBox19.Text.Trim();
                }
                if (Data_Count == 3)
                {
                    TextBox14.Text = DropDownList2.SelectedItem.Text;
                    TextBox16.Text = TextBox19.Text.Trim();
                }
                if (Data_Count == 4)
                {
                    TextBox15.Text = DropDownList2.SelectedItem.Text;
                    TextBox17.Text = TextBox19.Text.Trim();
                }

            }
            if (RadioButton3.Checked)
            {
                TextBox3.Text = "";
                TextBox10.Text = "";
                TextBox2.Text = "";
                TextBox9.Text = "";
            }
            if (RadioButton4.Checked)
            {
                TextBox3.Text = "Admi & Reg Fee";
                TextBox10.Text = admin_fee;
                TextBox2.Text = "App Fee";
                TextBox9.Text = app_fee;
            }
            if (Data_Count == 4)
            {
                Button10.Enabled = false;
                Data_Count = 0;
            }
            //Data_Count += 1;
            Button2_Click(Button2, null);
            // Checking if the bill is already done
            //----------------------------SQL Connection --
            //SqlConnection con = new SqlConnection();
            //con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            //SqlCommand cmd = new SqlCommand();
            //SqlDataReader dr;
            con.Open();
            cmd = new SqlCommand("select * from bill_det where ad_num = '" + TextBox7.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                // Term 1
                if (DropDownList1.Text == "28")
                {
                    if (dr.GetString(16).ToString().Trim() != "")
                    {
                        Response.Write("<script>alert('Bill generated already for this student !!!')</script>");

                        Button6_Click(Button6, null);
                    }
                }
                // Term 2
                if (DropDownList1.Text == "29")
                {
                    if (dr.GetString(17).ToString().Trim() != "")
                    {
                        Response.Write("<script>alert('Bill generated already for this student !!!')</script>");
                        Button6_Click(Button6, null);
                    }
                }
                // Term 3
                if (DropDownList1.Text == "30")
                {
                    if (dr.GetString(18).ToString().Trim() != "")
                    {
                        Response.Write("<script>alert('Bill generated already for this student !!!')</script>");
                        Button6_Click(Button6, null);
                    }
                }
            }
            con.Close();
            //Button7_Click(Button7, null);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (TextBox12.Text != null && TextBox12.Text != "")
            {
                string word = ConvertNumbertoWords(Convert.ToInt32(TextBox12.Text));
                //lblmsg.InnerText = word;
                TextBox23.Text = word + " ONLY";
            }
        }
        public static string ConvertNumbertoWords(int number)
        {
            if (number == 0)
                return "ZERO";
            if (number < 0)
                return "minus " + ConvertNumbertoWords(Math.Abs(number));
            string words = "";
            if ((number / 1000000) > 0)
            {
                words += ConvertNumbertoWords(number / 1000000) + " MILLION ";
                number %= 1000000;
            }
            if ((number / 1000) > 0)
            {
                words += ConvertNumbertoWords(number / 1000) + " THOUSAND ";
                number %= 1000;
            }
            if ((number / 100) > 0)
            {
                words += ConvertNumbertoWords(number / 100) + " HUNDRED ";
                number %= 100;
            }
            if (number > 0)
            {
                if (words != "")
                    words += "AND ";
                var unitsMap = new[] { "ZERO", "ONE", "TWO", "THREE", "FOUR", "FIVE", "SIX", "SEVEN", "EIGHT", "NINE", "TEN", "ELEVEN", "TWELVE", "THIRTEEN", "FOURTEEN", "FIFTEEN", "SIXTEEN", "SEVENTEEN", "EIGHTEEN", "NINETEEN" };
                var tensMap = new[] { "ZERO", "TEN", "TWENTY", "THIRTY", "FORTY", "FIFTY", "SIXTY", "SEVENTY", "EIGHTY", "NINETY" };

                if (number < 20)
                    words += unitsMap[number];
                else
                {
                    words += tensMap[number / 10];
                    if ((number % 10) > 0)
                        words += " " + unitsMap[number % 10];
                }
            }
            return words;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Data_Count = 0;
            //string dte = DateTime.Now.ToString("hhyyyyMMMdd");
            //Response.Redirect(String.Format("bill_2.aspx?val={0}&val1={1}", Server.UrlEncode(DateTime.Now.ToString("hhyyyyMMMdd")), Server.UrlEncode(Label2.Text)));
            string message = "Redirected to New Bill";
            string url = String.Format("bill_2.aspx?val={0}&val1={1}", Server.UrlEncode(DateTime.Now.ToString("hhyyyyMMMdd")), Server.UrlEncode(Label2.Text));
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "');";
            script += "window.location = '";
            script += url;
            script += "";
            script += "'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int Fee_01 = 0;
            int Fee_02 = 0;
            int Fee_03 = 0;
            int Fee_04 = 0;
            int Fee_05 = 0;
            int Fee_06 = 0;
            int Fee_07 = 0;
            all_months = "";
            if (TextBox9.Text != "")
            {
                Fee_01 = Convert.ToInt32(TextBox9.Text);
                all_months = all_months + TextBox2.Text +"/";
            }
            
            if (TextBox10.Text != "")
            {
                Fee_02 = Convert.ToInt32(TextBox10.Text);

                all_months = all_months + TextBox3.Text + "/";
            }
            
            if (TextBox11.Text != "")
            {
                Fee_03 = Convert.ToInt32(TextBox11.Text);
                all_months = all_months + TextBox8.Text + "/";
            }
            
            if (TextBox17.Text != "")
            {
                Fee_04 = Convert.ToInt32(TextBox17.Text);
                all_months = all_months + TextBox14.Text + "/";
            }
            
            if (TextBox16.Text != "")
            {
                Fee_05 = Convert.ToInt32(TextBox16.Text);
                all_months = all_months + TextBox15.Text + "/";
            }
            
            if (TextBox21.Text != "")
            {
                Fee_06 = Convert.ToInt32(TextBox22.Text);
                all_months = all_months + TextBox21.Text + "/";
            }
            if (TextBox24.Text != "")
            {
                Fee_07 = Convert.ToInt32(TextBox24.Text);
                all_months = all_months + TextBox25.Text + "/";
            }


            int total = Fee_01 + Fee_02 + Fee_03 + Fee_04 + Fee_05 + Fee_06 + Fee_07;
            TextBox12.Text = total.ToString().Trim();

            //-------------------------------- CALLING THE FUNCTION FOR CONVERTING NUMBERS TO WORDS
            Button5_Click(Button5, null);
 
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            try
            {
                //---------------------------- SAVING BILL CHANGE NUMBER ALONG WITH BILLER NAME
                String nameAndBillChangeNumber = Label17.Text + "/" + Bill_Amt_Num.ToString();


                //---------------------------- SAVING TO bill
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                //TextBox1.Text = TextBox1.Text.ToString().PadLeft(4, '0');
                cmd = new SqlCommand("INSERT INTO bill VALUES ('" + TextBox5.Text + "','" + TextBox7.Text + "','" + TextBox1.Text + "','" + all_months + "','" + Convert.ToInt32(TextBox12.Text) + "','" + TextBox6.Text + "','" + TextBox13.Text + "','" + nameAndBillChangeNumber.ToString() + "')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('*** BILL SAVED ***')</script>");
                con.Close();
                //----------------------------FETCHING OLD PAID BILL DETAILS
                con.Open();
                cmd = new SqlCommand("select * from bill_det where ad_num = '" + TextBox7.Text + "'", con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    //TextBox19.Text = dr.GetString(Convert.ToInt32(DropDownList2.SelectedItem.Value)).ToString();
                    jan = dr.GetString(10).ToString().Trim();
                    feb = dr.GetString(11).ToString().Trim();
                    mar = dr.GetString(12).ToString().Trim();
                    apr = dr.GetString(13).ToString().Trim();
                    may = dr.GetString(14).ToString().Trim();
                    jun = dr.GetString(3).ToString().Trim();
                    jul = dr.GetString(4).ToString().Trim();
                    aug = dr.GetString(5).ToString().Trim();
                    sep = dr.GetString(6).ToString().Trim();
                    oct = dr.GetString(7).ToString().Trim();
                    nov = dr.GetString(8).ToString().Trim();
                    dec = dr.GetString(9).ToString().Trim();
                    term1 = dr.GetString(16).ToString().Trim();
                    term2 = dr.GetString(17).ToString().Trim();
                    term3 = dr.GetString(18).ToString().Trim();
                }
                con.Close();

                //---------------------------- SAVING TO bill_det for referrence
                //string empty = "";
                if (all_months.Contains("JAN"))
                {
                    jan = DateTime.Now.ToString("yyyy-MM-dd");
                }
                //else { jan = ""; }
                if (all_months.Contains("FEB"))
                {
                    feb = DateTime.Now.ToString("yyyy-MM-dd");
                }
                //else { feb = ""; }
                if (all_months.Contains("MAR"))
                {
                    mar = DateTime.Now.ToString("yyyy-MM-dd");
                }
                //else { mar = ""; }
                if (all_months.Contains("APR"))
                {
                    apr = DateTime.Now.ToString("yyyy-MM-dd");
                }
                //else { apr = ""; }
                if (all_months.Contains("MAY"))
                {
                    may = DateTime.Now.ToString("yyyy-MM-dd");
                }
                //else { may = ""; }
                if (all_months.Contains("JUN"))
                {
                    jun = DateTime.Now.ToString("yyyy-MM-dd");
                }
                //else { jun = ""; }
                if (all_months.Contains("JUL"))
                {
                    jul = DateTime.Now.ToString("yyyy-MM-dd");
                }
                //else { jul = ""; }
                if (all_months.Contains("AUG"))
                {
                    aug = DateTime.Now.ToString("yyyy-MM-dd");
                }
                //else { aug = ""; }
                if (all_months.Contains("SEP"))
                {
                    sep = DateTime.Now.ToString("yyyy-MM-dd");
                }
                //else { sep = ""; }
                if (all_months.Contains("OCT"))
                {
                    oct = DateTime.Now.ToString("yyyy-MM-dd");
                }
                //else { oct = ""; }
                if (all_months.Contains("NOV"))
                {
                    nov = DateTime.Now.ToString("yyyy-MM-dd");
                }
                //else { nov = ""; }
                if (all_months.Contains("DEC"))
                {
                    dec = DateTime.Now.ToString("yyyy-MM-dd");
                }
                //else { dec = ""; }rhishab
                if (all_months.Contains("Tuition Fee - I/"))
                {
                    term1 = DateTime.Now.ToString("yyyy-MM-dd");
                }
                //else { term1 = ""; }
                if (all_months.Contains("Tuition Fee - II/"))
                {
                    term2 = DateTime.Now.ToString("yyyy-MM-dd");
                }
                //else { term2 = ""; }
                if (all_months.Contains("Tuition Fee - III/"))
                {
                    term3 = DateTime.Now.ToString("yyyy-MM-dd");
                }
                //else { term3 = ""; }

                //SqlConnection con = new SqlConnection();
                //con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                //SqlCommand cmd = new SqlCommand();
                con.Open();
                cmd = new SqlCommand("update bill_det  set jan = '" + jan + "',feb = '" + feb + "',mar = '" + mar + "',apr = '" + apr + "',may = '" + may + "',jun = '" + jun + "',jul = '" + jul + "',aug = '" + aug + "',sep = '" + sep + "',oct = '" + oct + "',nov = '" + nov + "',dec = '" + dec + "',term3 = '" + term3 + "',term2 = '" + term2 + "',term1 = '" + term1 + "' where ad_num = '" + TextBox7.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();


                //---------------------------- LOGGING
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Staff_Log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + " Bill No.: " + TextBox5.Text + " Ad No.: " + TextBox7.Text + " Date: " + TextBox6.Text + " Name: " + TextBox1.Text + " STD: " + TextBox13.Text + " Month: " + all_months + " Amount: " + TextBox12.Text + " Billed BY: " + Label17.Text);
                    sw.WriteLine(dattim + " Bill No.: " + TextBox5.Text + " Saved ");

                    sw.WriteLine(dattim + " --------------------------------------------------------- ");
                    sw.Close();
                }
                GridView1.DataBind();
            }
            catch
            {
                Response.Write("<script>alert('Unable to SAVE, Only Printing allowed !!!')</script>");
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            DropDownList2.Enabled = false;
            TextBox19.Enabled = false;
            DropDownList1.Enabled = true;
            TextBox18.Enabled = true;
        }
        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            DropDownList1.Enabled = false;
            TextBox18.Enabled = false;
            DropDownList2.Enabled = true;
            TextBox19.Enabled = true;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Button3_Click(Button3, null);
            Button8_Click(Button8, null);
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            //ScriptManager.RegisterStartupScript(this, GetType(), "Print", "Print()", false);
            Button6_Click(Button6, null);
        }

        

        
    }
}
