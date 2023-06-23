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
namespace SchoolWeb
{
    public partial class paiddetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //--------------------- GETTING PAID DETAILS WITH ADMISSION NUMBER
            TextBox1.Text = TextBox1.Text.PadLeft(4, '0');
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;
            con.Open();
            cmd = new SqlCommand("SELECT * FROM bill WHERE admi_num = '" + TextBox1.Text.PadLeft(4, '0') + "' ORDER BY bill_num DESC ", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (RadioButton1.Checked)
                {
                    RadioButton2.Checked = false;
                    GridView1.Visible = false;
                }
                if (RadioButton2.Checked)
                {
                    RadioButton1.Checked = false;
//GridView2.Visible = false;
                    TextBox1.Text = "";
                }
                
            }
            con.Close();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            //--------------------- RESETING/RELOADING PAGE
            TextBox1.Text = "";
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            Response.Redirect("paiddetails.aspx");
            
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //--------------------- REDIRECTING TO DEFAULT PAGE
            Response.Redirect("default.aspx");
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        

        
    }
}
