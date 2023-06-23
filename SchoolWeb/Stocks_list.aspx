<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stocks_list.aspx.cs" Inherits="SchoolWeb.Stocks_list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 56px">
    <form id="form1" runat="server">
        <div style="height: 55px">
            <h1 style="margin: 0px; padding: 0px; list-style: none; text-decoration: none; color: rgb(0, 0, 128); font-family: &quot;Cooper Black&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); height: 29px;">VASANTHAM</h1>
            <h3 style="margin: 0px; padding: 0px; list-style: none; text-decoration: none; color: rgb(0, 0, 128); font-family: &quot;Cooper Black&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">NURSERY AND PRIMARY SCHOOL</h1>
        </div><br /><br />
        <div>
            <div style="width:20%;  float:left;">Update Number</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="upd_num" runat="server" TabIndex="1"></asp:TextBox></div>
            <div style="width:20%;  float:left;">Update Date</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="upd_date" runat="server" TabIndex="2"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:Button ID="get_stk_num" runat="server" Text="Get" OnClick="get_stk_num_Click" />     <asp:Button ID="load_stk" runat="server" Text="Load" OnClick="load_stk_Click1" />     <asp:Button ID="save_stk" runat="server" Text="Bulk Save" OnClick="save_stk_Click" /><asp:Button ID="IV_In_Stock" runat="server" Text="Button" Visible="False" OnClick="IV_In_Stock_Click" /></div><br /><br />
         
        <div style="width:100%; border-block:solid;"> 
            <div style="width:20%;  float:left;">Product Name</div>
            <div style="width:20%;  float:left;">Available Quantity</div>
            <div style="width:20%;  float:left;">Quantity Sold</div>
            <div style="width:20%;  float:left;">Additional Quantity</div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;">Add</div><div style="width:50%;  float:left;">In Stock</div></div><br /><br />
            
            <div style="width:20%;  float:left;">Diary</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="Diary_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="Diary_QS" runat="server" TabIndex="3"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="Diary_Add" runat="server" TabIndex="4"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="Diary_Add_Button" runat="server" Text="Add Stocks" OnClick="Diary_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="Diary_IS" runat="server" Width="100px"></asp:TextBox></div></div><br /><hr />
         
            <div style="width:20%;  float:left;">Tie</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="Tie_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="Tie_QS" runat="server" TabIndex="5"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="Tie_Add" runat="server" TabIndex="6"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="Tie_Add_Button" runat="server" Text="Add Stocks" OnClick="Tie_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="Tie_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">Uniform</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="Uniform_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="Uniform_QS" runat="server" TabIndex="7"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="Uniform_Add" runat="server" TabIndex="8"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="Uniform_Add_Button" runat="server" Text="Add Stocks" OnClick="Uniform_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="Uniform_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">Belt</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="Belt_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="Belt_QS" runat="server" TabIndex="9"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="Belt_Add" runat="server" TabIndex="10"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="Belt_Add_Button" runat="server" Text="Add Stocks" OnClick="Belt_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="Belt_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">4 Line Note</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="_4_Line_Note_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="_4_Line_Note_QS" runat="server" TabIndex="11"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="_4_Line_Note_Add" runat="server" TabIndex="12"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="_4_Line_Note_Add_Button" runat="server" Text="Add Stocks" OnClick="_4_Line_Note_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="_4_Line_Note_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">Maths Note</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="Maths_Note_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="Maths_Note_QS" runat="server" TabIndex="13"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="Maths_Note_Add" runat="server" TabIndex="14"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="Maths_Note_Add_Button" runat="server" Text="Add Stocks" OnClick="Maths_Note_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="Maths_Note_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">1 Line Note</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="_1_Line_Note_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="_1_Line_Note_QS" runat="server" TabIndex="15"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="_1_Line_Note_Add" runat="server" TabIndex="16"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="_1_Line_Note_Add_Button" runat="server" Text="Add Stocks" OnClick="_1_Line_Note_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="_1_Line_Note_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">Square Note</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="Square_Note_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="Square_Note_QS" runat="server" TabIndex="17"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="Square_Note_Add" runat="server" TabIndex="18"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="Square_Note_Add_Button" runat="server" Text="Add Stocks" OnClick="Square_Note_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="Square_Note_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">LongSize Note</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="LongSize_Note_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="LongSize_Note_QS" runat="server" TabIndex="19"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="LongSize_Note_Add" runat="server" TabIndex="20"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="LongSize_Note_Add_Button" runat="server" Text="Add Stocks" OnClick="LongSize_Note_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="LongSize_Note_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">LKG Term-I</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="LKG_Term_I_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="LKG_Term_I_QS" runat="server" TabIndex="21"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="LKG_Term_I_Add" runat="server" TabIndex="22"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="LKG_Term_I_Add_Button" runat="server" Text="Add Stocks" OnClick="LKG_Term_I_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="LKG_Term_I_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">LKG Term-II</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="LKG_Term_II_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="LKG_Term_II_QS" runat="server" TabIndex="23"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="LKG_Term_II_Add" runat="server" TabIndex="24"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="LKG_Term_II_Add_Button" runat="server" Text="Add Stocks" OnClick="LKG_Term_II_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="LKG_Term_II_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">LKG Term-III</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="LKG_Term_III_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="LKG_Term_III_QS" runat="server" TabIndex="25"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="LKG_Term_III_Add" runat="server" TabIndex="26"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="LKG_Term_III_Add_Button" runat="server" Text="Add Stocks" OnClick="LKG_Term_III_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="LKG_Term_III_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">UKG Term-I</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="UKG_Term_I_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="UKG_Term_I_QS" runat="server" TabIndex="27"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="UKG_Term_I_Add" runat="server" TabIndex="28"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="UKG_Term_I_Add_Button" runat="server" Text="Add Stocks" OnClick="UKG_Term_I_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="UKG_Term_I_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">UKG Term-II</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="UKG_Term_II_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="UKG_Term_II_QS" runat="server" TabIndex="29"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="UKG_Term_II_Add" runat="server" TabIndex="30"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="UKG_Term_II_Add_Button" runat="server" Text="Add Stocks" OnClick="UKG_Term_II_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="UKG_Term_II_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">UKG Term-III</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="UKG_Term_III_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="UKG_Term_III_QS" runat="server" TabIndex="31"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="UKG_Term_III_Add" runat="server" TabIndex="32"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="UKG_Term_III_Add_Button" runat="server" Text="Add Stocks" OnClick="UKG_Term_III_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="UKG_Term_III_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">STD-I Term-I</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_I_Term_I_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_I_Term_I_QS" runat="server" TabIndex="33"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_I_Term_I_Add" runat="server" TabIndex="34"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="STD_I_Term_I_Add_Button" runat="server" Text="Add Stocks" OnClick="STD_I_Term_I_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="STD_I_Term_I_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">STD-I Term-II</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_I_Term_II_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_I_Term_II_QS" runat="server" TabIndex="35"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_I_Term_II_Add" runat="server" TabIndex="36"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="STD_I_Term_II_Add_Button" runat="server" Text="Add Stocks" OnClick="STD_I_Term_II_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="STD_I_Term_II_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">STD-I Term-III</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_I_Term_III_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_I_Term_III_QS" runat="server" TabIndex="37"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_I_Term_III_Add" runat="server" TabIndex="38"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="STD_I_Term_III_Add_Button" runat="server" Text="Add Stocks" OnClick="STD_I_Term_III_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="STD_I_Term_III_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">STD-II Term-I</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_II_Term_I_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_II_Term_I_QS" runat="server" TabIndex="39"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_II_Term_I_Add" runat="server" TabIndex="40"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="STD_II_Term_I_Add_Button" runat="server" Text="Add Stocks" OnClick="STD_II_Term_I_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="STD_II_Term_I_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">STD-II Term-II</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_II_Term_II_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_II_Term_II_QS" runat="server" TabIndex="41"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_II_Term_II_Add" runat="server" TabIndex="42"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="STD_II_Term_II_Add_Button" runat="server" Text="Add Stocks" OnClick="STD_II_Term_II_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="STD_II_Term_II_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">STD-II Term-III</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_II_Term_III_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_II_Term_III_QS" runat="server" TabIndex="43"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_II_Term_III_Add" runat="server" TabIndex="44"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="STD_II_Term_III_Add_Button" runat="server" Text="Add Stocks" OnClick="STD_II_Term_III_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="STD_II_Term_III_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">STD-III Term-I</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_III_Term_I_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_III_Term_I_QS" runat="server" TabIndex="45"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_III_Term_I_Add" runat="server" TabIndex="46"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="STD_III_Term_I_Add_Button" runat="server" Text="Add Stocks" OnClick="STD_III_Term_I_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="STD_III_Term_I_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">STD-III Term-II</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_III_Term_II_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_III_Term_II_QS" runat="server" TabIndex="47"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_III_Term_II_Add" runat="server" TabIndex="48"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="STD_III_Term_II_Add_Button" runat="server" Text="Add Stocks" OnClick="STD_III_Term_II_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="STD_III_Term_II_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">STD-III Term-III</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_III_Term_III_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_III_Term_III_QS" runat="server" TabIndex="49"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_III_Term_III_Add" runat="server" TabIndex="50"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="STD_III_Term_III_Add_Button" runat="server" Text="Add Stocks" OnClick="STD_III_Term_III_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="STD_III_Term_III_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">STD-IV Term-I</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_IV_Term_I_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_IV_Term_I_QS" runat="server" TabIndex="51"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_IV_Term_I_Add" runat="server" TabIndex="52"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="STD_IV_Term_I_Add_Button" runat="server" Text="Add Stocks" OnClick="STD_IV_Term_I_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="STD_IV_Term_I_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">STD-IV Term-II</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_IV_Term_II_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_IV_Term_II_QS" runat="server" TabIndex="53"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_IV_Term_II_Add" runat="server" TabIndex="54"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="STD_IV_Term_II_Add_Button" runat="server" Text="Add Stocks" OnClick="STD_IV_Term_II_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="STD_IV_Term_II_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">STD-IV Term-III</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_IV_Term_III_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_IV_Term_III_QS" runat="server" TabIndex="55"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_IV_Term_III_Add" runat="server" TabIndex="56"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="STD_IV_Term_III_Add_Button" runat="server" Text="Add Stocks" OnClick="STD_IV_Term_III_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="STD_IV_Term_III_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">STD-V Term-I</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_V_Term_I_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_V_Term_I_QS" runat="server" TabIndex="57"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_V_Term_I_Add" runat="server" TabIndex="58"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="STD_V_Term_I_Add_Button" runat="server" Text="Add Stocks" OnClick="STD_V_Term_I_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="STD_V_Term_I_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">STD-V Term-II</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_V_Term_II_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_V_Term_II_QS" runat="server" TabIndex="59"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_V_Term_II_Add" runat="server" TabIndex="60"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="STD_V_Term_II_Add_Button" runat="server" Text="Add Stocks" OnClick="STD_V_Term_II_Add_Button_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="STD_V_Term_II_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

            <div style="width:20%;  float:left;">STD-V Term-III</div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_V_Term_III_AQ" runat="server" TabIndex="0"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_V_Term_III_QS" runat="server" TabIndex="61"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><asp:TextBox ID="STD_V_Term_III_Add" runat="server" TabIndex="62"></asp:TextBox></div>
            <div style="width:20%;  float:left;"><div style="width:50%;  float:left;"><asp:Button ID="STD_V_Term_III_Add_Buttton" runat="server" Text="Add Stocks" OnClick="STD_V_Term_III_Add_Buttton_Click" /></div><div style="width:50%;  float:left;"><asp:TextBox ID="STD_V_Term_III_IS" runat="server" Width="100px"></asp:TextBox></div></div> <br /><hr />

        </div>
        
           
    </form>
</body>
</html>
