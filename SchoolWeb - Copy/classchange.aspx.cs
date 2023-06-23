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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox17.Text = DateTime.Now.ToString("yyyy-MM-dd");
            Label1.Text = Request.QueryString["val"];//LOGGING WITH NAME
            if (Label1.Text == "")
            {
                Response.Redirect("Default.aspx");
            }
            TextBox8.Enabled = false;
            TextBox9.Enabled = false;
            TextBox10.Enabled = false;
            TextBox12.Enabled = false;
            TextBox13.Enabled = false;
            TextBox14.Enabled = false;
        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //--------------------- GETTING STUDENT CLASS FROM ADMISSION NUMBER
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
            }
            con.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //--------------------- CLASS CHANGING CODE
            string chclass = Convert.ToString(TextBox9.Text);
            string lkg = Convert.ToString("L.K.G");
            string ukg = Convert.ToString("U.K.G");
            string stdI = Convert.ToString("I");
            string stdII = Convert.ToString("II");
            string stdIII = Convert.ToString("III");
            string stdIV = Convert.ToString("IV");
            string stdV = Convert.ToString("V");
            string stdLft =Convert.ToString("V (LEFT)");

            if (chclass == lkg)
                TextBox10.Text = ukg;
            if (chclass == ukg)
                TextBox10.Text = stdI;
            if (chclass == stdI)
                TextBox10.Text = stdII;
            if (chclass == stdII)
                TextBox10.Text = stdIII;
            if (chclass == stdIII)
                TextBox10.Text = stdIV;
            if (chclass == stdIV)
                TextBox10.Text = stdV;
            if (chclass == stdV)
                TextBox10.Text = stdLft;
            if ((chclass != lkg) && (chclass != ukg) && (chclass != stdI) && (chclass != stdII) && (chclass != stdIII) && (chclass != stdIV) && (chclass != stdV))
                TextBox10.Text = TextBox9.Text;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            //--------------------- CHANGING CLASS
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd = new SqlCommand("update stddet  set std = '" + TextBox10.Text + "' where admi_num = '" + TextBox7.Text + "'", con);
            cmd.ExecuteNonQuery();
            //--------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim +" " + Label1.Text+ "  Ad No.: " + TextBox7.Text);
                sw.WriteLine(dattim + " " + Label1.Text + "  Name " + TextBox8.Text);
                sw.WriteLine(dattim + " " + Label1.Text + "  Standard From " + TextBox9.Text);
                sw.WriteLine(dattim + " " + Label1.Text + "  Standard To  " + TextBox10.Text);
                sw.WriteLine(dattim + " " + Label1.Text + "  Updated " + TextBox7.Text);
                sw.WriteLine(dattim + " --------------------------------------------------------- ");
                sw.Close();
            }
            con.Close();
        }
        

        protected void Button7_Click(object sender, EventArgs e)
        {
            //--------------------- LOGGING
            using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
            using (StreamWriter sw = new StreamWriter(fs))
            {
                String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                sw.WriteLine(dattim + " " +" Logged OUT From Admin");
                sw.WriteLine(dattim + " --------------------------------------------------------- ");
                sw.Close();
            }
            Response.Redirect("Default.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(2000);
            //--------------------- ASSIGNING ADMINSSION NUMBER TO VARIABLE
            Int32 val5 = Convert.ToInt32(TextBox11.Text);
            Int32 val6 = Convert.ToInt32(TextBox15.Text);
            for (int i = val5; i <= val6; i++)//USING FOR LOOP TO CHANGE THE CLASS
            {
                TextBox18.Text = "year-mo-da";
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                con.Open();
                TextBox16.Text = Convert.ToString(i).PadLeft(4, '0');
                cmd = new SqlCommand("select * from stddet where admi_num = '" + TextBox16.Text + "'", con);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox12.Text = dr.GetString(1).ToString();
                    TextBox13.Text = dr.GetString(2).ToString();
                }
                con.Close();
                //--------------------- CLASS CHANGING
                string chclass = Convert.ToString(TextBox13.Text);
                string lkg = Convert.ToString("L.K.G");
                string ukg = Convert.ToString("U.K.G");
                string stdI = Convert.ToString("I");
                string stdII = Convert.ToString("II");
                string stdIII = Convert.ToString("III");
                string stdIV = Convert.ToString("IV");
                string stdV = Convert.ToString("V");
                string stdLft = Convert.ToString("V (LEFT)");

                if (chclass == lkg)
                    TextBox14.Text = ukg;
                if (chclass == ukg)
                    TextBox14.Text = stdI;
                if (chclass == stdI)
                    TextBox14.Text = stdII;
                if (chclass == stdII)
                    TextBox14.Text = stdIII;
                if (chclass == stdIII)
                    TextBox14.Text = stdIV;
                if (chclass == stdIV)
                    TextBox14.Text = stdV;
                if (chclass == stdV)
                {
                    TextBox14.Text = stdLft;
                    TextBox18.Text = TextBox17.Text;
                }
                if ((chclass != lkg) && (chclass != ukg) && (chclass != stdI) && (chclass != stdII) && (chclass != stdIII) && (chclass != stdIV) && (chclass != stdV))
                    TextBox14.Text = TextBox13.Text;

                //--------------------- UPDATIN CLASS
                con.Open();
                cmd = new SqlCommand("update stddet  set std = '" + TextBox14.Text + "',dol='"+TextBox18.Text+"' where admi_num = '" + TextBox16.Text + "'", con);
                cmd.ExecuteNonQuery();
                //--------------------- LOGGING
                using (FileStream fs = new FileStream("C:\\School_Web\\Logs\\Admin_Log.txt", FileMode.Append, FileAccess.Write))
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    String dattim = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-tt");
                    sw.WriteLine(dattim + " " + Label1.Text + "  Ad No.: " + TextBox16.Text);
                    sw.WriteLine(dattim + " " + Label1.Text + "  Name " + TextBox12.Text);
                    sw.WriteLine(dattim + " " + Label1.Text + "  Standard From " + TextBox13.Text);
                    sw.WriteLine(dattim + " " + Label1.Text + "  Standard To  " + TextBox14.Text);
                    sw.WriteLine(dattim + " " + Label1.Text + "  Updated " + TextBox16.Text + " " + TextBox12.Text);
                    sw.WriteLine(dattim + " --------------------------------------------------------- ");
                    sw.Close();
                }
                con.Close();
            }
        }

        protected void Button_9Click(object sender, EventArgs e)
        {
            
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

        protected void Button13_Click(object sender, EventArgs e)
        {

        }

        protected void Button17_Click(object sender, EventArgs e)
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

        
    }
}
