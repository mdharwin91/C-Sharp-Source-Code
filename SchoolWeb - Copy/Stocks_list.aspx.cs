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
    public partial class Stocks_list : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void Diary_Add_Button_Click(object sender, EventArgs e)
        {
            if (Diary_Add.Text.ToString() != "")
            {
                Int32 val = Convert.ToInt32(Diary_AQ.Text) + Convert.ToInt32(Diary_Add.Text);
                Diary_AQ.Text = val.ToString();
                Diary_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = Diary_AQ.Text + "/" + Diary_QS.Text;
                cmd = new SqlCommand("update stock_list  set diary_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();

            }
        }
        public void adding_individual_stocks()
        {
            
        }
        protected void Tie_Add_Button_Click(object sender, EventArgs e)
        {
            if (Tie_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(Tie_AQ.Text) + Convert.ToInt32(Tie_Add.Text);
                Tie_AQ.Text = val.ToString();
                Tie_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = Tie_AQ.Text + "/" + Tie_QS.Text;
                cmd = new SqlCommand("update stock_list  set tie_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void Uniform_Add_Button_Click(object sender, EventArgs e)
        {
            if (Uniform_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(Uniform_AQ.Text) + Convert.ToInt32(Uniform_Add.Text);
                Uniform_AQ.Text = val.ToString();
                Uniform_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = Uniform_AQ.Text + "/" + Uniform_QS.Text;
                cmd = new SqlCommand("update stock_list  set uniform_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void Belt_Add_Button_Click(object sender, EventArgs e)
        {
            if (Belt_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(Belt_AQ.Text) + Convert.ToInt32(Belt_Add.Text);
                Belt_AQ.Text = val.ToString();
                Belt_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = Belt_AQ.Text + "/" + Belt_QS.Text;
                cmd = new SqlCommand("update stock_list  set belt_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void _4_Line_Note_Add_Button_Click(object sender, EventArgs e)
        {
            if (_4_Line_Note_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(_4_Line_Note_AQ.Text) + Convert.ToInt32(_4_Line_Note_Add.Text);
                _4_Line_Note_AQ.Text = val.ToString();
                _4_Line_Note_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = _4_Line_Note_AQ.Text + "/" + _4_Line_Note_QS.Text;
                cmd = new SqlCommand("update stock_list  set _4line_note_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void Maths_Note_Add_Button_Click(object sender, EventArgs e)
        {
            if (Maths_Note_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(Maths_Note_AQ.Text) + Convert.ToInt32(Maths_Note_Add.Text);
                Maths_Note_AQ.Text = val.ToString();
                Maths_Note_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = Maths_Note_AQ.Text + "/" + Maths_Note_QS.Text;
                cmd = new SqlCommand("update stock_list  set maths_note_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void _1_Line_Note_Add_Button_Click(object sender, EventArgs e)
        {
            if (_1_Line_Note_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(_1_Line_Note_AQ.Text) + Convert.ToInt32(_1_Line_Note_Add.Text);
                _1_Line_Note_AQ.Text = val.ToString();
                _1_Line_Note_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = _1_Line_Note_AQ.Text + "/" + _1_Line_Note_QS.Text;
                cmd = new SqlCommand("update stock_list  set _1line_note_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void Square_Note_Add_Button_Click(object sender, EventArgs e)
        {
            if (Square_Note_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(Square_Note_AQ.Text) + Convert.ToInt32(Square_Note_Add.Text);
                Square_Note_AQ.Text = val.ToString();
                Square_Note_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = Square_Note_AQ.Text + "/" + Square_Note_QS.Text;
                cmd = new SqlCommand("update stock_list  set square_note_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void LongSize_Note_Add_Button_Click(object sender, EventArgs e)
        {
            if ( LongSize_Note_Add.Text != "")
            {
                Int32 val = Convert.ToInt32( LongSize_Note_AQ.Text) + Convert.ToInt32( LongSize_Note_Add.Text);
                 LongSize_Note_AQ.Text = val.ToString();
                 LongSize_Note_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = LongSize_Note_AQ.Text + "/" + LongSize_Note_QS.Text;
                cmd = new SqlCommand("update stock_list  set longsize_note_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void LKG_Term_I_Add_Button_Click(object sender, EventArgs e)
        {
            if (LKG_Term_I_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(LKG_Term_I_AQ.Text) + Convert.ToInt32(LKG_Term_I_Add.Text);
                LKG_Term_I_AQ.Text = val.ToString();
                LKG_Term_I_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = LKG_Term_I_AQ.Text + "/" + LKG_Term_I_QS.Text;
                cmd = new SqlCommand("update stock_list  set lkg_1_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void LKG_Term_II_Add_Button_Click(object sender, EventArgs e)
        {
            if (LKG_Term_II_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(LKG_Term_II_AQ.Text) + Convert.ToInt32(LKG_Term_II_Add.Text);
                LKG_Term_II_AQ.Text = val.ToString();
                LKG_Term_II_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = LKG_Term_II_AQ.Text + "/" + LKG_Term_II_QS.Text;
                cmd = new SqlCommand("update stock_list  set lkg_2_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void LKG_Term_III_Add_Button_Click(object sender, EventArgs e)
        {
            if (LKG_Term_III_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(LKG_Term_III_AQ.Text) + Convert.ToInt32(LKG_Term_III_Add.Text);
                LKG_Term_III_AQ.Text = val.ToString();
                LKG_Term_III_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = LKG_Term_III_AQ.Text + "/" + LKG_Term_III_QS.Text;
                cmd = new SqlCommand("update stock_list  set lkg_3_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void UKG_Term_I_Add_Button_Click(object sender, EventArgs e)
        {
            if (UKG_Term_I_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(UKG_Term_I_AQ.Text) + Convert.ToInt32(UKG_Term_I_Add.Text);
                UKG_Term_I_AQ.Text = val.ToString();
                UKG_Term_I_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = UKG_Term_I_AQ.Text + "/" + UKG_Term_I_QS.Text;
                cmd = new SqlCommand("update stock_list  set ukg_1_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void UKG_Term_II_Add_Button_Click(object sender, EventArgs e)
        {
            if (UKG_Term_II_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(UKG_Term_II_AQ.Text) + Convert.ToInt32(UKG_Term_II_Add.Text);
                UKG_Term_II_AQ.Text = val.ToString();
                UKG_Term_II_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = UKG_Term_II_AQ.Text + "/" + UKG_Term_II_QS.Text;
                cmd = new SqlCommand("update stock_list  set ukg_2_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void UKG_Term_III_Add_Button_Click(object sender, EventArgs e)
        {
            if (UKG_Term_III_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(UKG_Term_III_AQ.Text) + Convert.ToInt32(UKG_Term_III_Add.Text);
                UKG_Term_III_AQ.Text = val.ToString();
                UKG_Term_III_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = UKG_Term_III_AQ.Text + "/" + UKG_Term_III_QS.Text;
                cmd = new SqlCommand("update stock_list  set ukg_3_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void STD_I_Term_I_Add_Button_Click(object sender, EventArgs e)
        {
            if (STD_I_Term_I_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(STD_I_Term_I_AQ.Text) + Convert.ToInt32(STD_I_Term_I_Add.Text);
                STD_I_Term_I_AQ.Text = val.ToString();
                STD_I_Term_I_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = STD_I_Term_I_AQ.Text + "/" + STD_I_Term_I_QS.Text;
                cmd = new SqlCommand("update stock_list  set i_1_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void STD_I_Term_II_Add_Button_Click(object sender, EventArgs e)
        {
            if (STD_I_Term_II_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(STD_I_Term_II_AQ.Text) + Convert.ToInt32(STD_I_Term_II_Add.Text);
                STD_I_Term_II_AQ.Text = val.ToString();
                STD_I_Term_II_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = STD_I_Term_II_AQ.Text + "/" + STD_I_Term_II_QS.Text;
                cmd = new SqlCommand("update stock_list  set i_2_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void STD_I_Term_III_Add_Button_Click(object sender, EventArgs e)
        {
            if (STD_I_Term_III_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(STD_I_Term_III_AQ.Text) + Convert.ToInt32(STD_I_Term_III_Add.Text);
                STD_I_Term_III_AQ.Text = val.ToString();
                STD_I_Term_III_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = STD_I_Term_III_AQ.Text + "/" + STD_I_Term_III_QS.Text;
                cmd = new SqlCommand("update stock_list  set i_3_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void STD_II_Term_I_Add_Button_Click(object sender, EventArgs e)
        {
            if (STD_II_Term_I_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(STD_II_Term_I_AQ.Text) + Convert.ToInt32(STD_II_Term_I_Add.Text);
                STD_II_Term_I_AQ.Text = val.ToString();
                STD_II_Term_I_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = STD_II_Term_I_AQ.Text + "/" + STD_II_Term_I_QS.Text;
                cmd = new SqlCommand("update stock_list  set ii_1_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void STD_II_Term_II_Add_Button_Click(object sender, EventArgs e)
        {
            if (STD_II_Term_II_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(STD_II_Term_II_AQ.Text) + Convert.ToInt32(STD_II_Term_II_Add.Text);
                STD_II_Term_II_AQ.Text = val.ToString();
                STD_II_Term_II_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = STD_II_Term_II_AQ.Text + "/" + STD_II_Term_II_QS.Text;
                cmd = new SqlCommand("update stock_list  set ii_2_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void STD_II_Term_III_Add_Button_Click(object sender, EventArgs e)
        {
            if (STD_II_Term_III_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(STD_II_Term_III_AQ.Text) + Convert.ToInt32(STD_II_Term_III_Add.Text);
                STD_II_Term_III_AQ.Text = val.ToString();
                STD_II_Term_III_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = STD_II_Term_III_AQ.Text + "/" + STD_II_Term_III_QS.Text;
                cmd = new SqlCommand("update stock_list  set ii_3_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void STD_III_Term_I_Add_Button_Click(object sender, EventArgs e)
        {
            if (STD_III_Term_I_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(STD_III_Term_I_AQ.Text) + Convert.ToInt32(STD_III_Term_I_Add.Text);
                STD_III_Term_I_AQ.Text = val.ToString();
                STD_III_Term_I_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = STD_III_Term_I_AQ.Text + "/" + STD_III_Term_I_QS.Text;
                cmd = new SqlCommand("update stock_list  set iii_1_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void STD_III_Term_II_Add_Button_Click(object sender, EventArgs e)
        {
            if (STD_III_Term_II_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(STD_III_Term_II_AQ.Text) + Convert.ToInt32(STD_III_Term_II_Add.Text);
                STD_III_Term_II_AQ.Text = val.ToString();
                STD_III_Term_II_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = STD_III_Term_II_AQ.Text + "/" + STD_III_Term_II_QS.Text;
                cmd = new SqlCommand("update stock_list  set iii_2_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void STD_III_Term_III_Add_Button_Click(object sender, EventArgs e)
        {
            if (STD_III_Term_III_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(STD_III_Term_III_AQ.Text) + Convert.ToInt32(STD_III_Term_III_Add.Text);
                STD_III_Term_III_AQ.Text = val.ToString();
                STD_III_Term_III_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = STD_III_Term_III_AQ.Text + "/" + STD_III_Term_III_QS.Text;
                cmd = new SqlCommand("update stock_list  set iii_3_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void STD_IV_Term_I_Add_Button_Click(object sender, EventArgs e)
        {
            if (STD_IV_Term_I_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(STD_IV_Term_I_AQ.Text) + Convert.ToInt32(STD_IV_Term_I_Add.Text);
                STD_IV_Term_I_AQ.Text = val.ToString();
                STD_IV_Term_I_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = STD_IV_Term_I_AQ.Text + "/" + STD_IV_Term_I_QS.Text;
                cmd = new SqlCommand("update stock_list  set iv_1_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void STD_IV_Term_II_Add_Button_Click(object sender, EventArgs e)
        {
            if (STD_IV_Term_II_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(STD_IV_Term_II_AQ.Text) + Convert.ToInt32(STD_IV_Term_II_Add.Text);
                STD_IV_Term_II_AQ.Text = val.ToString();
                STD_IV_Term_II_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = STD_IV_Term_II_AQ.Text + "/" + STD_IV_Term_II_QS.Text;
                cmd = new SqlCommand("update stock_list  set iv_2_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void STD_IV_Term_III_Add_Button_Click(object sender, EventArgs e)
        {
            if (STD_IV_Term_III_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(STD_IV_Term_III_AQ.Text) + Convert.ToInt32(STD_IV_Term_III_Add.Text);
                STD_IV_Term_III_AQ.Text = val.ToString();
                STD_IV_Term_III_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = STD_IV_Term_III_AQ.Text + "/" + STD_IV_Term_III_QS.Text;
                cmd = new SqlCommand("update stock_list  set iv_3_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void STD_V_Term_I_Add_Button_Click(object sender, EventArgs e)
        {
            if (STD_V_Term_I_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(STD_V_Term_I_AQ.Text) + Convert.ToInt32(STD_V_Term_I_Add.Text);
                STD_V_Term_I_AQ.Text = val.ToString();
                STD_V_Term_I_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = STD_V_Term_I_AQ.Text + "/" + STD_V_Term_I_QS.Text;
                cmd = new SqlCommand("update stock_list  set v_1_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void STD_V_Term_II_Add_Button_Click(object sender, EventArgs e)
        {
            if (STD_V_Term_II_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(STD_V_Term_II_AQ.Text) + Convert.ToInt32(STD_V_Term_II_Add.Text);
                STD_V_Term_II_AQ.Text = val.ToString();
                STD_V_Term_II_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = STD_V_Term_II_AQ.Text + "/" + STD_V_Term_II_QS.Text;
                cmd = new SqlCommand("update stock_list  set v_2_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void STD_V_Term_III_Add_Buttton_Click(object sender, EventArgs e)
        {
            if (STD_V_Term_III_Add.Text != "")
            {
                Int32 val = Convert.ToInt32(STD_V_Term_III_AQ.Text) + Convert.ToInt32(STD_V_Term_III_Add.Text);
                STD_V_Term_III_AQ.Text = val.ToString();
                STD_V_Term_III_Add.Text = "";

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                con.Open();
                string value = STD_V_Term_III_AQ.Text + "/" + STD_V_Term_III_QS.Text;
                cmd = new SqlCommand("update stock_list  set v_3_aq = '" + value + "' where upd_num = '" + upd_num.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void load_stk_Click1(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;

            String str;
            int count;

            str = "select count(*) from stock_list";
            cmd = new SqlCommand(str, con);
            con.Open();
            count = Convert.ToInt16(cmd.ExecuteScalar());
            //TextBox1.Text = count.ToString().PadLeft(4, '0');
            con.Close();


            con.Open();

            con.Close();
            con.Open();
            //TextBox7.Text = TextBox7.Text.ToString().PadLeft(4, '0');
            cmd = new SqlCommand("select * from stock_list where upd_num = '" + count + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                upd_num.Text = dr.GetString(0).ToString();
                upd_date.Text = dr.GetString(1).ToString();
                Diary_AQ.Text = dr.GetString(2).ToString().Split('/')[0];
                Diary_QS.Text = dr.GetString(2).ToString().Split('/')[1];
                Tie_AQ.Text = dr.GetString(3).ToString().Split('/')[0];
                Tie_QS.Text = dr.GetString(3).ToString().Split('/')[1];
                Uniform_AQ.Text = dr.GetString(4).ToString().Split('/')[0];
                Uniform_QS.Text = dr.GetString(4).ToString().Split('/')[1];
                Belt_AQ.Text = dr.GetString(5).ToString().Split('/')[0];
                Belt_QS.Text = dr.GetString(5).ToString().Split('/')[1];
                _4_Line_Note_AQ.Text = dr.GetString(6).ToString().Split('/')[0];
                _4_Line_Note_QS.Text = dr.GetString(6).ToString().Split('/')[1];
                Maths_Note_AQ.Text = dr.GetString(7).ToString().Split('/')[0];
                Maths_Note_QS.Text = dr.GetString(7).ToString().Split('/')[1];
                _1_Line_Note_AQ.Text = dr.GetString(8).ToString().Split('/')[0];
                _1_Line_Note_QS.Text = dr.GetString(8).ToString().Split('/')[1];
                Square_Note_AQ.Text = dr.GetString(9).ToString().Split('/')[0];
                Square_Note_QS.Text = dr.GetString(9).ToString().Split('/')[1];
                LongSize_Note_AQ.Text = dr.GetString(10).ToString().Split('/')[0];
                LongSize_Note_QS.Text = dr.GetString(10).ToString().Split('/')[1];
                LKG_Term_I_AQ.Text = dr.GetString(11).ToString().Split('/')[0];
                LKG_Term_I_QS.Text = dr.GetString(11).ToString().Split('/')[1];
                LKG_Term_II_AQ.Text = dr.GetString(12).ToString().Split('/')[0];
                LKG_Term_II_QS.Text = dr.GetString(12).ToString().Split('/')[1];
                LKG_Term_III_AQ.Text = dr.GetString(13).ToString().Split('/')[0];
                LKG_Term_III_QS.Text = dr.GetString(13).ToString().Split('/')[1];
                UKG_Term_I_AQ.Text = dr.GetString(14).ToString().Split('/')[0];
                UKG_Term_I_QS.Text = dr.GetString(14).ToString().Split('/')[1];
                UKG_Term_II_AQ.Text = dr.GetString(15).ToString().Split('/')[0];
                UKG_Term_II_QS.Text = dr.GetString(15).ToString().Split('/')[1];
                UKG_Term_III_AQ.Text = dr.GetString(16).ToString().Split('/')[0];
                UKG_Term_III_QS.Text = dr.GetString(16).ToString().Split('/')[1];
                STD_I_Term_I_AQ.Text = dr.GetString(17).ToString().Split('/')[0];
                STD_I_Term_I_QS.Text = dr.GetString(17).ToString().Split('/')[1];
                STD_I_Term_II_AQ.Text = dr.GetString(18).ToString().Split('/')[0];
                STD_I_Term_II_QS.Text = dr.GetString(18).ToString().Split('/')[1];
                STD_I_Term_III_AQ.Text = dr.GetString(19).ToString().Split('/')[0];
                STD_I_Term_III_QS.Text = dr.GetString(19).ToString().Split('/')[1];
                STD_II_Term_I_AQ.Text = dr.GetString(20).ToString().Split('/')[0];
                STD_II_Term_I_QS.Text = dr.GetString(20).ToString().Split('/')[1];
                STD_II_Term_II_AQ.Text = dr.GetString(21).ToString().Split('/')[0];
                STD_II_Term_II_QS.Text = dr.GetString(21).ToString().Split('/')[1];
                STD_II_Term_III_AQ.Text = dr.GetString(22).ToString().Split('/')[0];
                STD_II_Term_III_QS.Text = dr.GetString(22).ToString().Split('/')[1];
                STD_III_Term_I_AQ.Text = dr.GetString(23).ToString().Split('/')[0];
                STD_III_Term_I_QS.Text = dr.GetString(23).ToString().Split('/')[1];
                STD_III_Term_II_AQ.Text = dr.GetString(24).ToString().Split('/')[0];
                STD_III_Term_II_QS.Text = dr.GetString(24).ToString().Split('/')[1];
                STD_III_Term_III_AQ.Text = dr.GetString(25).ToString().Split('/')[0];
                STD_III_Term_III_QS.Text = dr.GetString(25).ToString().Split('/')[1];
                STD_IV_Term_I_AQ.Text = dr.GetString(26).ToString().Split('/')[0];
                STD_IV_Term_I_QS.Text = dr.GetString(26).ToString().Split('/')[1];
                STD_IV_Term_II_AQ.Text = dr.GetString(27).ToString().Split('/')[0];
                STD_IV_Term_II_QS.Text = dr.GetString(27).ToString().Split('/')[1];
                STD_IV_Term_III_AQ.Text = dr.GetString(28).ToString().Split('/')[0];
                STD_IV_Term_III_QS.Text = dr.GetString(28).ToString().Split('/')[1];
                STD_V_Term_I_AQ.Text = dr.GetString(29).ToString().Split('/')[0];
                STD_V_Term_I_QS.Text = dr.GetString(29).ToString().Split('/')[1];
                STD_V_Term_II_AQ.Text = dr.GetString(30).ToString().Split('/')[0];
                STD_V_Term_II_QS.Text = dr.GetString(30).ToString().Split('/')[1];
                STD_V_Term_III_AQ.Text = dr.GetString(31).ToString().Split('/')[0];
                STD_V_Term_III_QS.Text = dr.GetString(31).ToString().Split('/')[1];
            }
            con.Close();
            load_stk.Enabled = false;
            IV_In_Stock_Click(IV_In_Stock, null);
        }

        protected void get_stk_num_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            String str;
            int count;

            str = "select count(*) from stock_list";
            cmd = new SqlCommand(str, con);
            con.Open();
            count = Convert.ToInt16(cmd.ExecuteScalar())+1;
            //TextBox1.Text = count.ToString().PadLeft(4, '0');
            upd_num.Text = count.ToString();
            con.Close();

            get_stk_num.Enabled = false;
        }

        protected void save_stk_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection();
            con1.ConnectionString = ("Data Source=.\\SQLEXPRESS;Initial Catalog=SchoolDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlCommand cmd1 = new SqlCommand();
            con1.Open();

            cmd = new SqlCommand("insert into stock_list values ('" + upd_num.Text + "','" + upd_date.Text + "','" + Diary_AQ.Text +"/"+Diary_QS.Text+ "','" + Tie_AQ.Text+"/"+Tie_QS.Text + "','" + Uniform_AQ.Text+"/"+Uniform_QS.Text + "','" + Belt_AQ.Text+"/"+Belt_QS.Text + "','" + _4_Line_Note_AQ.Text+"/"+ _4_Line_Note_QS.Text + "','" + Maths_Note_AQ.Text+"/"+ Maths_Note_QS.Text + "','" + _1_Line_Note_AQ.Text+"/"+ _1_Line_Note_QS.Text + "','" + Square_Note_AQ.Text + "/" + Square_Note_QS.Text + "','" + LongSize_Note_AQ.Text + "/" + LongSize_Note_QS.Text + "','" + LKG_Term_I_AQ.Text + "/" + LKG_Term_I_QS.Text + "','" + LKG_Term_II_AQ.Text + "/" + LKG_Term_II_QS.Text + "','" + LKG_Term_III_AQ.Text + "/" + LKG_Term_III_QS.Text + "','" + UKG_Term_I_AQ.Text + "/" + UKG_Term_I_QS.Text + "','" + UKG_Term_II_AQ.Text + "/" + UKG_Term_II_QS.Text + "','" + UKG_Term_III_AQ.Text + "/" + UKG_Term_III_QS.Text + "','" + STD_I_Term_I_AQ.Text + "/" + STD_I_Term_I_QS.Text + "','" + STD_I_Term_II_AQ.Text + "/" + STD_I_Term_II_QS.Text + "','" + STD_I_Term_III_AQ.Text + "/" + STD_I_Term_III_QS.Text + "','" + STD_II_Term_I_AQ.Text + "/" + STD_II_Term_I_QS.Text + "','" + STD_II_Term_II_AQ.Text + "/" + STD_II_Term_II_QS.Text + "','" + STD_II_Term_III_AQ.Text + "/" + STD_II_Term_III_QS.Text + "','" + STD_III_Term_I_AQ.Text + "/" + STD_III_Term_I_QS.Text + "','" + STD_III_Term_II_AQ.Text + "/" + STD_III_Term_II_QS.Text + "','" + STD_III_Term_III_AQ.Text + "/" + STD_III_Term_III_QS.Text + "','" + STD_IV_Term_I_AQ.Text + "/" + STD_IV_Term_I_QS.Text + "','" + STD_IV_Term_II_AQ.Text + "/" + STD_IV_Term_II_QS.Text + "','" + STD_IV_Term_III_AQ.Text + "/" + STD_IV_Term_III_QS.Text + "','" + STD_V_Term_I_AQ.Text + "/" + STD_V_Term_I_QS.Text + "','" + STD_V_Term_II_AQ.Text + "/" + STD_V_Term_II_QS.Text + "','" + STD_V_Term_III_AQ.Text + "/" + STD_V_Term_III_QS.Text + "')", con1);
            cmd.ExecuteNonQuery();
            save_stk.Enabled = false;
        }

        protected void IV_In_Stock_Click(object sender, EventArgs e)
        {
            
            if (Diary_AQ.Text != "" && Diary_QS.Text != "")
            {
                Diary_IS.Text = (Convert.ToInt32(Diary_AQ.Text) - Convert.ToInt32(Diary_QS.Text)).ToString();
            }
            if (Tie_AQ.Text != "" && Tie_QS.Text != "")
            {
                Tie_IS.Text = (Convert.ToInt32(Tie_AQ.Text) - Convert.ToInt32(Tie_QS.Text)).ToString();
            }
            if (Uniform_AQ.Text != "" && Uniform_QS.Text != "")
            {
                Uniform_IS.Text = (Convert.ToInt32(Uniform_AQ.Text) - Convert.ToInt32(Uniform_QS.Text)).ToString();
            }
            if (Belt_AQ.Text != "" && Belt_QS.Text != "")
            {
                Belt_IS.Text = (Convert.ToInt32(Belt_AQ.Text) - Convert.ToInt32(Belt_QS.Text)).ToString();
            }
            if (_4_Line_Note_AQ.Text != "" && _4_Line_Note_QS.Text != "")
            {
                _4_Line_Note_IS.Text = (Convert.ToInt32(_4_Line_Note_AQ.Text) - Convert.ToInt32(_4_Line_Note_QS.Text)).ToString();
            }
            if (Maths_Note_AQ.Text != "" && Maths_Note_QS.Text != "")
            {
                Maths_Note_IS.Text = (Convert.ToInt32(Maths_Note_AQ.Text) - Convert.ToInt32(Maths_Note_QS.Text)).ToString();
            }
            if (_1_Line_Note_AQ.Text != "" && _1_Line_Note_QS.Text != "")
            {
                _1_Line_Note_IS.Text = (Convert.ToInt32(_1_Line_Note_AQ.Text) - Convert.ToInt32(_1_Line_Note_QS.Text)).ToString();
            }
            if (Square_Note_AQ.Text != "" && Square_Note_QS.Text != "")
            {
                Square_Note_IS.Text = (Convert.ToInt32(Square_Note_AQ.Text) - Convert.ToInt32(Square_Note_QS.Text)).ToString();
            }
            if (LongSize_Note_AQ.Text != "" && LongSize_Note_QS.Text != "")
            {
                LongSize_Note_IS.Text = (Convert.ToInt32(LongSize_Note_AQ.Text) - Convert.ToInt32(LongSize_Note_QS.Text)).ToString();
            }
            if (LKG_Term_I_AQ.Text != "" && LKG_Term_I_QS.Text != "")
            {
                LKG_Term_I_IS.Text = (Convert.ToInt32(LKG_Term_I_AQ.Text) - Convert.ToInt32(LKG_Term_I_QS.Text)).ToString();
            }
            if (LKG_Term_II_AQ.Text != "" && LKG_Term_II_QS.Text != "")
            {
                LKG_Term_II_IS.Text = (Convert.ToInt32(LKG_Term_II_AQ.Text) - Convert.ToInt32(LKG_Term_II_QS.Text)).ToString();
            }
            if (LKG_Term_III_AQ.Text != "" && LKG_Term_III_QS.Text != "")
            {
                LKG_Term_III_IS.Text = (Convert.ToInt32(LKG_Term_III_AQ.Text) - Convert.ToInt32(LKG_Term_III_QS.Text)).ToString();
            }
            if (UKG_Term_I_AQ.Text != "" && UKG_Term_I_QS.Text != "")
            {
                UKG_Term_I_IS.Text = (Convert.ToInt32(UKG_Term_I_AQ.Text) - Convert.ToInt32(UKG_Term_I_QS.Text)).ToString();
            }
            if (UKG_Term_II_AQ.Text != "" && UKG_Term_II_QS.Text != "")
            {
                UKG_Term_II_IS.Text = (Convert.ToInt32(UKG_Term_II_AQ.Text) - Convert.ToInt32(UKG_Term_II_QS.Text)).ToString();
            }
            if (UKG_Term_III_AQ.Text != "" && UKG_Term_III_QS.Text != "")
            {
                UKG_Term_III_IS.Text = (Convert.ToInt32(UKG_Term_III_AQ.Text) - Convert.ToInt32(UKG_Term_III_QS.Text)).ToString();
            }
            if (STD_I_Term_I_AQ.Text != "" && STD_I_Term_I_QS.Text != "")
            {
                STD_I_Term_I_IS.Text = (Convert.ToInt32(STD_I_Term_I_AQ.Text) - Convert.ToInt32(STD_I_Term_I_QS.Text)).ToString();
            }
            if (STD_I_Term_II_AQ.Text != "" && STD_I_Term_II_QS.Text != "")
            {
                STD_I_Term_II_IS.Text = (Convert.ToInt32(STD_I_Term_II_AQ.Text) - Convert.ToInt32(STD_I_Term_II_QS.Text)).ToString();
            }
            if (STD_I_Term_III_AQ.Text != "" && STD_I_Term_III_QS.Text != "")
            {
                STD_I_Term_III_IS.Text = (Convert.ToInt32(STD_I_Term_III_AQ.Text) - Convert.ToInt32(STD_I_Term_III_QS.Text)).ToString();
            }
            if (STD_II_Term_I_AQ.Text != "" && STD_II_Term_I_QS.Text != "")
            {
                STD_II_Term_I_IS.Text = (Convert.ToInt32(STD_II_Term_I_AQ.Text) - Convert.ToInt32(STD_II_Term_I_QS.Text)).ToString();
            }
            if (STD_II_Term_II_AQ.Text != "" && STD_II_Term_II_QS.Text != "")
            {
                STD_II_Term_II_IS.Text = (Convert.ToInt32(STD_II_Term_II_AQ.Text) - Convert.ToInt32(STD_II_Term_II_QS.Text)).ToString();
            }
            if (STD_II_Term_III_AQ.Text != "" && STD_II_Term_III_QS.Text != "")
            {
                STD_II_Term_III_IS.Text = (Convert.ToInt32(STD_II_Term_III_AQ.Text) - Convert.ToInt32(STD_II_Term_III_QS.Text)).ToString();
            }
            if (STD_III_Term_I_AQ.Text != "" && STD_III_Term_I_QS.Text != "")
            {
                STD_III_Term_I_IS.Text = (Convert.ToInt32(STD_III_Term_I_AQ.Text) - Convert.ToInt32(STD_III_Term_I_QS.Text)).ToString();
            }
            if (STD_III_Term_II_AQ.Text != "" && STD_III_Term_II_QS.Text != "")
            {
                STD_III_Term_II_IS.Text = (Convert.ToInt32(STD_III_Term_II_AQ.Text) - Convert.ToInt32(STD_III_Term_II_QS.Text)).ToString();
            }
            if (STD_III_Term_III_AQ.Text != "" && STD_III_Term_III_QS.Text != "")
            {
                STD_III_Term_III_IS.Text = (Convert.ToInt32(STD_III_Term_III_AQ.Text) - Convert.ToInt32(STD_III_Term_III_QS.Text)).ToString();
            }
            if (STD_IV_Term_I_AQ.Text != "" && STD_IV_Term_I_QS.Text != "")
            {
                STD_IV_Term_I_IS.Text = (Convert.ToInt32(STD_IV_Term_I_AQ.Text) - Convert.ToInt32(STD_IV_Term_I_QS.Text)).ToString();
            }
            if (STD_IV_Term_II_AQ.Text != "" && STD_IV_Term_II_QS.Text != "")
            {
                STD_IV_Term_II_IS.Text = (Convert.ToInt32(STD_IV_Term_II_AQ.Text) - Convert.ToInt32(STD_IV_Term_II_QS.Text)).ToString();
            }
            if (STD_IV_Term_III_AQ.Text != "" && STD_IV_Term_III_QS.Text != "")
            {
                STD_IV_Term_III_IS.Text = (Convert.ToInt32(STD_IV_Term_III_AQ.Text) - Convert.ToInt32(STD_IV_Term_III_QS.Text)).ToString();
            }
            if (STD_V_Term_I_AQ.Text != "" && STD_V_Term_I_QS.Text != "")
            {
                STD_V_Term_I_IS.Text = (Convert.ToInt32(STD_V_Term_I_AQ.Text) - Convert.ToInt32(STD_V_Term_I_QS.Text)).ToString();
            }
            if (STD_V_Term_II_AQ.Text != "" && STD_V_Term_II_QS.Text != "")
            {
                STD_V_Term_II_IS.Text = (Convert.ToInt32(STD_V_Term_II_AQ.Text) - Convert.ToInt32(STD_V_Term_II_QS.Text)).ToString();
            }
            if (STD_V_Term_III_AQ.Text != "" && STD_V_Term_III_QS.Text != "")
            {
                STD_V_Term_III_IS.Text = (Convert.ToInt32(STD_V_Term_III_AQ.Text) - Convert.ToInt32(STD_V_Term_III_QS.Text)).ToString();
            }
        }
    }
}