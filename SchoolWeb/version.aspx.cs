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
//using MySql.Data.MySqlClient;
using System.Data.SqlClient;
using System.IO;
using System.Text;
namespace SchoolWeb
{
    public partial class version : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = DateTime.Now.ToString("dd-MMM-yyyy");
            TextBox1.Enabled = false;
            GridView1.Visible = true;
            GridView1.DataBind();
            //---------------------------- TO GET LAST BUILD UPDATE NUMBER - WHERE admi_num = '" + TextBox3.Text.PadLeft(4, '0') + "'
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;
            con.Open();
            cmd = new SqlCommand("SELECT TOP 1 * FROM app_details  ORDER BY date DESC ", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label1.Text = dr.GetString(1).ToString();
                Label2.Text = dr.GetString(0).ToString();
            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd = new SqlCommand("INSERT INTO app_details VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "'," + DropDownList1.Text + "','" + TextBox3.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}
