using System;
using System.Collections;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Text;
namespace SchoolWeb
{
    /// <summary>
    /// Summary description for $codebehindclassname$
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public class test1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {

            System.Data.SqlClient.SqlDataReader rdr = null;
            //System.Data.SqlClient.SqlConnection conn = null;
            //System.Data.SqlClient.SqlCommand selcmd = null;
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();

                //conn = new System.Data.SqlClient.SqlConnection
              //(System.Configuration.ConfigurationManager.ConnectionStrings
             // ["Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True"].ConnectionString);
               // selcmd = new System.Data.SqlClient.SqlCommand
              //("select image from test where id=" +
              //context.Request.QueryString["roll_no"], conn);
                con.Open();
                cmd = new SqlCommand("select image from staffdet where staff_id="+context.Request.QueryString["roll_no"]+"", con);
                rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    context.Response.ContentType = "image/jpg";
                    context.Response.BinaryWrite((byte[])rdr["image"]);
                }
                con.Close();
            }
            finally
            {
                //if (con != null)
                  //  con.Close();
            }
            
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
