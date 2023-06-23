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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox3.Enabled = false;
            TextBox5.Enabled = false;
            TextBox7.Enabled = false;
            Label4.Text = Request.QueryString["val"];
            String filename = DateTime.Now.ToString("yyyy-MM-dd");
            Label3.Text = filename;//GETTING DATE
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //--------------------- GETTING REFRENCE NUMBER FOR HALF BILLED
            string str2;
            int num;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            str2 = "select count(*) from pending";
            cmd = new SqlCommand(str2, con);
            con.Open();
            num = Convert.ToInt16(cmd.ExecuteScalar())-1;
            TextBox1.Text = num.ToString();
            TextBox1.Text = TextBox1.Text.ToString().PadLeft(4, '0');
            con.Close();
            TextBox4.Text = "0";
            TextBox5.Text = "0";
            TextBox7.Text = "0";
            TextBox2.Text = "";
            TextBox3.Text = "";
            Button6.Enabled = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //--------------------- GETTING VALUES FROM PENDING FROM REFRENCE NUMBER
                TextBox1.Text = TextBox1.Text.ToString().PadLeft(4, '0');
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                con.Open();
                cmd = new SqlCommand("select * from pending where refno = '" + TextBox1.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox2.Text = dr.GetString(1).ToString();
                    TextBox3.Text = dr.GetString(2).ToString();
                    TextBox4.Text = dr.GetString(3).ToString();
                    TextBox5.Text = dr.GetString(4).ToString();
                    TextBox7.Text = dr.GetString(5).ToString();
                    TextBox8.Text = dr.GetString(6).ToString();
                }
                con.Close();
                TextBox5.Text = "0";
                //CALCULATION
                Int32 val5 = Convert.ToInt32(TextBox4.Text);
                Int32 val6 = Convert.ToInt32(TextBox7.Text);
                Int32 valtotalpresub = val5 - val6;
                TextBox5.Text = valtotalpresub.ToString();
                TextBox6.Text = "0";
                Int32 valone = Convert.ToInt32(TextBox4.Text);
                Int32 valtwo = Convert.ToInt32(TextBox5.Text);
                if (valone == valtwo)
                {
                    if (valone > 1)
                    {
                        Response.Write("<script>alert('No Pending Fee Found')</script>");
                    }
                }
                Button7.Enabled = true;
                Label1.Text = "";
                Label2.Text = "";
            }
            catch
            {
            }
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            //--------------------- CHECKING IF THE STUDENT PAID FULL FEE
            Int32 val1 = Convert.ToInt32(TextBox5.Text);
            Int32 val2 = Convert.ToInt32(TextBox6.Text);
            Int32 valtotal = val1 + val2;
            TextBox5.Text = valtotal.ToString();
            TextBox9.Text = TextBox6.Text;
            TextBox6.Text = "";
            Int32 val5 = Convert.ToInt32(TextBox4.Text);
            Int32 val6 = Convert.ToInt32(TextBox5.Text);
            Int32 valtotalpresub = val5 - val6;
            TextBox7.Text = valtotalpresub.ToString();
            if (valtotalpresub == 0)
            {
                Label2.Text = "FULL FEE PAID !!!";
                Label1.Text = " please update";
            }
            if (val5 > val6)
            {
                Button7.Enabled = true;
            }
            if (val5 == val6)
            {
                Button6_Click(Button6, null);
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //--------------------- GETTING NAME FROM DATABASE FOR AD NUMBER
            TextBox2.Text = TextBox2.Text.ToString().PadLeft(4, '0');
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;
            con.Open();
            cmd = new SqlCommand("select * from stddet where admi_num = '" + TextBox2.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox3.Text = dr.GetString(1).ToString();
            }
            con.Close();
            Button6.Enabled = true;
            Button7.Enabled = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //--------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\HalfBill\\halfbill_log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " + Label4.Text + " Logged OUT From Half Billed");
                sw.WriteLine(dattim + " --------------------------------------------------------- ");
                sw.Close();
            }
           Response.Redirect("afterlogin.aspx?val=" + Label4.Text);
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            try
            {
                //--------------------- AVOIDING NULL VALUE TO STORE
                TextBox1.Text = TextBox1.Text.ToString().PadLeft(4, '0');
                Int32 reftxt = Convert.ToInt32(TextBox1.Text);
                if (reftxt <= 0)
                {
                    Response.Write("<script>alert('Enter / Get Ref Number')</script>");
                    Response.Redirect("halfbill.aspx");
                    if (reftxt == ' ')
                    {
                        Response.Write("<script>alert('Enter / Get Ref Number')</script>");
                        Response.Redirect("halfbill.aspx");
                    }
                }
                //--------------------- ADDING DETAILS TO PENDING DB
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                String filename = DateTime.Now.ToString("yyyy-MM-dd");
                cmd = new SqlCommand("INSERT INTO pending VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox7.Text + "','" + filename + "','" + TextBox8.Text + "')", con);
                cmd.ExecuteNonQuery();
                //--------------------- LOGGIN
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\HalfBill\\halfbill_log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + " Ref No." + TextBox1.Text);
                    sw.WriteLine(dattim + " Date " + Label3.Text);
                    sw.WriteLine(dattim + " Ad No. " + TextBox2.Text);
                    sw.WriteLine(dattim + " Name: " + TextBox3.Text);
                    sw.WriteLine(dattim + " Total to Pay " + TextBox4.Text);
                    sw.WriteLine(dattim + " Previously Paid " + TextBox5.Text);
                    sw.WriteLine(dattim + " Current paid Amount " + TextBox9.Text);
                    sw.WriteLine(dattim + " Balance to Pay " + TextBox7.Text);
                    sw.WriteLine(dattim + " Last Paid on " + TextBox8.Text);
                    sw.WriteLine(dattim + " Saved" + TextBox1.Text);
                    sw.WriteLine(dattim + " Added By " + Label4.Text);
                    sw.WriteLine(dattim + " --------------------------------------------------------- ");
                    sw.Close();
                }
                Response.Write("<script>alert('Saved')</script>");
                con.Close();
            }
            catch
            {
                //--------------------- UPDATING PENDING FEES
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string filename = DateTime.Now.ToString("yyyy-MM-dd");
                cmd = new SqlCommand("update pending  set name = '" + TextBox3.Text + "',adno = '" + TextBox2.Text + "',ttp = '" + TextBox4.Text + "',paid = '" + TextBox5.Text + "',btp = '" + TextBox7.Text + "',date = '" + TextBox8.Text + "',updatedate = '" + filename + "' where refno = '" + TextBox1.Text + "'", con);
                cmd.ExecuteNonQuery();
                //--------------------- LOGGING
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\HalfBill\\halfbill_log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + " Ref No." + TextBox1.Text);
                    sw.WriteLine(dattim + " Date " + Label3.Text);
                    sw.WriteLine(dattim + " Ad No. " + TextBox2.Text);
                    sw.WriteLine(dattim + " Name: " + TextBox3.Text);
                    sw.WriteLine(dattim + " Total to Pay " + TextBox4.Text);
                    sw.WriteLine(dattim + " Previously Paid " + TextBox5.Text);
                    sw.WriteLine(dattim + " Current paid Amount " + TextBox9.Text);
                    sw.WriteLine(dattim + " Balance to Pay " + TextBox7.Text);
                    sw.WriteLine(dattim + " Last Paid on " + TextBox8.Text);
                    sw.WriteLine(dattim + " Saved" + TextBox1.Text);
                    sw.WriteLine(dattim + " Updated By " + Label4.Text);
                    sw.WriteLine(dattim + " --------------------------------------------------------- ");
                    sw.Close();
                }
                Response.Write("<script>alert('Updated')</script>");
                con.Close();
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            //--------------------- UPDATING PENDING FEE DETAILS
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            con.Open();
            string filename = DateTime.Now.ToString("yyyy-MM-dd");
            cmd = new SqlCommand("update pending  set name = '" + TextBox3.Text + "',adno = '" + TextBox2.Text + "',ttp = '" + TextBox4.Text + "',paid = '" + TextBox5.Text + "',btp = '" + TextBox7.Text + "',date = '" + TextBox8.Text + "',updatedate = '" + filename + "' where refno = '" + TextBox1.Text + "'", con);
            cmd.ExecuteNonQuery();
            Label1.Text = "Updated...";
            con.Close();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            //--------------------- CLEARING VALUES
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "0";
            TextBox5.Text = "0";
            TextBox6.Text = "0";
            TextBox7.Text = "0";
            Button6.Enabled = true ;
            Button7.Enabled = true;
            Label2.Text = "";
            Label1.Text = "";

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}
