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
    public partial class StudentView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = false;
            GridView3.Visible = false;
            GridView4.Visible = false;
            RadioButton4.Enabled = false;
            RadioButton5.Enabled = false;
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if (RadioButton1.Checked)
            {
                TextBox1.Text = TextBox1.Text.ToString().PadLeft(4, '0');
                Label1.Text = GridView1.Rows.Count.ToString();
                GridView1.Visible = true;
            }
            if (RadioButton2.Checked)
            {
                GridView2.Visible = true;
                Label1.Text = GridView2.Rows.Count.ToString();
            }
            if (RadioButton3.Checked)
            {
                RadioButton4.Enabled = true;
                RadioButton5.Enabled = true;
                if (RadioButton4.Checked)
                {
                    GridView4.Visible = true;
                    Label1.Text = GridView4.Rows.Count.ToString();
                }
                if (RadioButton5.Checked)
                {
                    GridView3.Visible = true;
                    Label1.Text = GridView3.Rows.Count.ToString();
                }

            } //TextBox1.Text = "";
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton1.Checked = false;
            RadioButton3.Checked = false;
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton2.Checked = false;
            RadioButton1.Checked = false;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            TextBox1.Text = "";
            if (RadioButton1.Checked)
            {
                RadioButton1.Checked = false;
            }
            if (RadioButton2.Checked)
            {
                RadioButton2.Checked = false;
            }
            if (RadioButton3.Checked)
            {
                RadioButton3.Checked = false;
            }
        }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton5.Checked = false;
        }

        protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton4.Checked = false;
        }
    }
}
