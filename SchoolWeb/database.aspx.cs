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
    public partial class database : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string db_name = DropDownList1.Text;


            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");//connection name

            con.Open();
            string query = "select * from "+db_name;
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();

            da.Fill(ds, "ss");

            GridView1.DataSource = ds.Tables["ss"];

            GridView1.DataBind();
        }
    }
}
