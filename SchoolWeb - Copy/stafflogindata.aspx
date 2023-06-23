<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stafflogindata.aspx.cs" Inherits="SchoolWeb.stafflogindata" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link rel="Stylesheet" type="text/css" href="style.css" />
    <title>Staff Data</title><script type="text/javascript" language="javascript">
    window.onload = function () {
        noBack();
    }
    function noBack() {
        window.history.forward();
    }
</script>
    <style type="text/css">


        .style10
        {
            font-weight: bold;
        }
        .style20
        {
            text-decoration: underline;
            font-size: medium;
            font-weight: bold;
        }
        .style22
        {
            text-decoration: underline;
        }
        .style23
        {
            font-size: medium;
            font-weight: bold;
        }
        .style24
        {
            color: #FFFF00;
            font-weight: bold;
        }
        .style27
        {
            color: #FFFF00;
        }
        .style28
        {
            color: #FFFFFF;
        }
        </style>
<script language="javascript" type="text/javascript">
// <!CDATA[

function File1_onclick() {

}

// ]]>
</script>
</head>
<body bgcolor="#000000">
    <div>
            <div class="Sec-header">
                <div>
                    <div class="Sec-logo"><img src="Img/emblem_png.png" class="style_img" /></div>
                    <div class="Sec-title"><h1>VASANTHAM</h1><br/><h3>NURSERY AND PRIMARY SCHOOL</h3></div>
                    <div class="Sec-logo2"><img src="Img/UNTITLED_001_1421299653802.jpg" class="style_img" /></div>
                </div>
                <div class="Sec-titlebar">
                    <div style="width:20%; float:left; color:forestgreen; font-size:x-large;">User : <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("default.aspx") %>"><li style="color:red;">Logout</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("adminactivities.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Admin</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("todaybills.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Day Bill</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("billedbetween.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Between</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("oldbill.aspx") + "?val=" +  Label1.Text%>"><li style="color:red;">Old Bill</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("stafflogindata.aspx") + "?val=" + Label1.Text %>"><li style="color:aqua;">Staff Data</li></a></div>
                    <div style="width:15%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("classchange.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Class Change</li></a></div>
                </div>
            </div>
        </div>




    <form id="form1" runat="server" style="color: #FFFFFF"><br /><br /><br /><br /><br /><br /><br /><br />
        <div>
            <span class="style20"><span class="style27">Staff Login Details:</span><br /><br /><br />
                <div style="width:50%; float:left;">
                    <div style="width:50%; float:left;">Staff ID :</div>
                    <div style="width:20%; float:left; margin-left:150px;"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></div>
                </div><br /><br /><br />
                <div style="width:50%; float:left;">
                    <div style="width:30%; float:left;"><asp:RadioButton ID="RadioButton3" runat="server" Text="Range" GroupName="DATE" /><br />From : <div style="float:right;">
            <span class="style20"><span class="style22">
        <asp:DropDownList ID="DropDownList3" runat="server" 
            onselectedindexchanged="DropDownList3_SelectedIndexChanged" 
            DataSourceID="SQL_YEAR" DataTextField="year" DataValueField="yr_val" 
            Height="22px">
            <asp:ListItem>Year</asp:ListItem>
            <asp:ListItem>2020</asp:ListItem>
            <asp:ListItem>2019</asp:ListItem>
            <asp:ListItem>2018</asp:ListItem>
            <asp:ListItem>2017</asp:ListItem>
            <asp:ListItem>2016</asp:ListItem>
            <asp:ListItem>2015</asp:ListItem>
            <asp:ListItem>2014</asp:ListItem>
            <asp:ListItem>2013</asp:ListItem>
            <asp:ListItem>2012</asp:ListItem>
            <asp:ListItem>2011</asp:ListItem>
            <asp:ListItem>2010</asp:ListItem>
            <asp:ListItem>2009</asp:ListItem>
            <asp:ListItem>2008</asp:ListItem>
            <asp:ListItem>2007</asp:ListItem>
            <asp:ListItem>2006</asp:ListItem>
            <asp:ListItem>2005</asp:ListItem>
            <asp:ListItem>2004</asp:ListItem>
            <asp:ListItem>2003</asp:ListItem>
            <asp:ListItem>2002</asp:ListItem>
            <asp:ListItem>2001</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SQL_YEAR" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
            SelectCommand="SELECT * FROM [d_year]"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList4" runat="server" Height="22px" 
            onselectedindexchanged="DropDownList4_SelectedIndexChanged" Width="44px" 
            DataSourceID="SQL_MON" DataTextField="month" DataValueField="mon_val">
            <asp:ListItem>Month</asp:ListItem>
            <asp:ListItem Value="01">1</asp:ListItem>
            <asp:ListItem Value="02">2</asp:ListItem>
            <asp:ListItem Value="03">3</asp:ListItem>
            <asp:ListItem Value="04">4</asp:ListItem>
            <asp:ListItem Value="05">5</asp:ListItem>
            <asp:ListItem Value="06">6</asp:ListItem>
            <asp:ListItem Value="07">7</asp:ListItem>
            <asp:ListItem Value="08">8</asp:ListItem>
            <asp:ListItem Value="09">9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SQL_MON" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
            SelectCommand="SELECT * FROM [d_mon]"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList5" runat="server" 
            onselectedindexchanged="DropDownList3_SelectedIndexChanged" 
            DataSourceID="SQL_DAY" DataTextField="day" DataValueField="day_val" 
            Height="22px">
            <asp:ListItem>Day</asp:ListItem>
            <asp:ListItem Value="01">1</asp:ListItem>
            <asp:ListItem Value="02">2</asp:ListItem>
            <asp:ListItem Value="03">3</asp:ListItem>
            <asp:ListItem Value="04">4</asp:ListItem>
            <asp:ListItem Value="05">5</asp:ListItem>
            <asp:ListItem Value="06">6</asp:ListItem>
            <asp:ListItem Value="07">7</asp:ListItem>
            <asp:ListItem Value="08">8</asp:ListItem>
            <asp:ListItem Value="09">9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>16</asp:ListItem>
            <asp:ListItem>17</asp:ListItem>
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>21</asp:ListItem>
            <asp:ListItem>22</asp:ListItem>
            <asp:ListItem>23</asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>26</asp:ListItem>
            <asp:ListItem>27</asp:ListItem>
            <asp:ListItem>28</asp:ListItem>
            <asp:ListItem>29</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>31</asp:ListItem>
        </asp:DropDownList>
            <asp:SqlDataSource ID="SQL_DAY" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
            SelectCommand="SELECT * FROM [d_day]"></asp:SqlDataSource>
            </span>
        </span></div><br /><br />
            To:<div style="float:right;"><span class="style20"><span class="style22"><asp:DropDownList 
            ID="DropDownList6" runat="server" 
            onselectedindexchanged="DropDownList3_SelectedIndexChanged" 
            DataSourceID="SQL_YEAR" DataTextField="year" DataValueField="yr_val" 
            Height="22px">
            <asp:ListItem>Year</asp:ListItem>
            <asp:ListItem>2020</asp:ListItem>
            <asp:ListItem>2019</asp:ListItem>
            <asp:ListItem>2018</asp:ListItem>
            <asp:ListItem>2017</asp:ListItem>
            <asp:ListItem>2016</asp:ListItem>
            <asp:ListItem>2015</asp:ListItem>
            <asp:ListItem>2014</asp:ListItem>
            <asp:ListItem>2013</asp:ListItem>
            <asp:ListItem>2012</asp:ListItem>
            <asp:ListItem>2011</asp:ListItem>
            <asp:ListItem>2010</asp:ListItem>
            <asp:ListItem>2009</asp:ListItem>
            <asp:ListItem>2008</asp:ListItem>
            <asp:ListItem>2007</asp:ListItem>
            <asp:ListItem>2006</asp:ListItem>
            <asp:ListItem>2005</asp:ListItem>
            <asp:ListItem>2004</asp:ListItem>
            <asp:ListItem>2003</asp:ListItem>
            <asp:ListItem>2002</asp:ListItem>
            <asp:ListItem>2001</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList7" runat="server" Height="22px" 
            onselectedindexchanged="DropDownList4_SelectedIndexChanged" Width="44px" 
            DataSourceID="SQL_MON" DataTextField="month" DataValueField="mon_val">
            <asp:ListItem>Month</asp:ListItem>
            <asp:ListItem Value="01">1</asp:ListItem>
            <asp:ListItem Value="02">2</asp:ListItem>
            <asp:ListItem Value="03">3</asp:ListItem>
            <asp:ListItem Value="04">4</asp:ListItem>
            <asp:ListItem Value="05">5</asp:ListItem>
            <asp:ListItem Value="06">6</asp:ListItem>
            <asp:ListItem Value="07">7</asp:ListItem>
            <asp:ListItem Value="08">8</asp:ListItem>
            <asp:ListItem Value="09">9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList8" runat="server" 
            onselectedindexchanged="DropDownList3_SelectedIndexChanged" 
            DataSourceID="SQL_DAY" DataTextField="day" DataValueField="day_val" 
            Height="22px">
            <asp:ListItem>Day</asp:ListItem>
            <asp:ListItem Value="01">1</asp:ListItem>
            <asp:ListItem Value="02">2</asp:ListItem>
            <asp:ListItem Value="03">3</asp:ListItem>
            <asp:ListItem Value="04">4</asp:ListItem>
            <asp:ListItem Value="05">5</asp:ListItem>
            <asp:ListItem Value="06">6</asp:ListItem>
            <asp:ListItem Value="07">7</asp:ListItem>
            <asp:ListItem Value="08">8</asp:ListItem>
            <asp:ListItem Value="09">9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>16</asp:ListItem>
            <asp:ListItem>17</asp:ListItem>
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>21</asp:ListItem>
            <asp:ListItem>22</asp:ListItem>
            <asp:ListItem>23</asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>26</asp:ListItem>
            <asp:ListItem>27</asp:ListItem>
            <asp:ListItem>28</asp:ListItem>
            <asp:ListItem>29</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>31</asp:ListItem>
        </asp:DropDownList><br /><div style="width:30%;"> <asp:Button ID="Button5" runat="server" Text="Get Details" OnClick="Button5_Click" /></div></div></div>




                    <div style="width:25%; float:left; margin-left:30px;"><asp:RadioButton ID="RadioButton4" runat="server" Text="Current Month" GroupName="DATE" /> <br /><asp:Button ID="Button6" runat="server" Text="Get Details" OnClick="Button6_Click" /></div>
                    <div style="width:25%; float:left; margin-left:30px;"><asp:RadioButton ID="RadioButton5" runat="server" Text="Previous Month" GroupName="DATE"/><br /> <asp:Button ID="Button7" runat="server" Text="Get Details" OnClick="Button7_Click" /></div>
        <br /><br /><br /><br /><br />
        <div style="width:50%; float:left">
        </div>
                    <br /><br /><br />
        <div style="width:50%;">Working Days : <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox></div>
        </div>
       
                
            <div style="width:49%; float:right;"><asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="86px" 
        Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" >
                <ItemStyle HorizontalAlign="Center" Width="80px" />
            </asp:BoundField>
            <asp:BoundField DataField="staff_id" HeaderText="Staff No" 
                SortExpression="staff_id" >
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" >
                <ItemStyle HorizontalAlign="Center"  Width="80px"/>
            </asp:BoundField>
            <asp:BoundField DataField="login" HeaderText="Login" SortExpression="login" >
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="logout" HeaderText="Logout" 
                SortExpression="logout" >
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="count" HeaderText="Count" 
                SortExpression="count" >
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView></div>



        </div>


    <div>
    
        
        <p style="background-color: #0000FF" class="hidden">
            <span class="style10" lang="en-us" >
        <asp:Button 
            ID="Button13" runat="server" Text="Class Change" BorderStyle="None" 
        BackColor="Transparent"  
        Width="140px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
        Height="27px" onclick="Button13_Click"/>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button14" runat="server" Text="Staff Login Data" BorderStyle="None" 
        BackColor="Transparent"  
        Width="150px" Font-Bold="True" Font-Size="Large" ForeColor="#FFFF66" 
        Height="27px" onclick="Button14_Click"/>
        &nbsp;<asp:Button ID="Button10" runat="server" Text="Old Bill Detail" BorderStyle="None" 
        BackColor="Transparent"  
        Width="150px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
        Height="27px" onclick="Button10_Click"/>
        <asp:Button ID="Button11" runat="server" Text="Billed Between" BorderStyle="None" 
        BackColor="Transparent"  
        Width="150px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
        Height="27px" onclick="Button11_Click"/>
        <asp:Button ID="Button12" runat="server" Text="Day Bill Details" BorderStyle="None" 
        BackColor="Transparent"  
        Width="140px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
        Height="27px" onclick="Button12_Click"/>
            <asp:Button ID="Button19" runat="server" Text="Admin" BorderStyle="None" 
        BackColor="Transparent"  
        Width="100px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
        Height="27px" onclick="Button19_Click" />
            <asp:Button ID="Button15" runat="server" Text="Logout" BorderStyle="None" 
        BackColor="Transparent"  
        Width="100px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
        Height="27px" onclick="Button15_Click" />
        </span></p>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
        <p>
            <span class="style10" lang="en-us" 
            
            
                style="background-image: url('file:///C:/Users/DHARWIN/Documents/Visual Studio 2008/Projects/SchoolWeb/SchoolWeb/login-page-background-images-hd-7.jpg'); color: #FFFFFF;">
            <span lang="en-us">&nbsp;</span></span></p>
    
        <br />
        <span lang="en-us">
            
        <br />
        </span>
            
            <span class="style23">
            <span lang="en-us" style="color: #FFFFFF">
            </span>
        </span>
        <br />
    
    </div>
    <asp:TextBox ID="TextBox1" runat="server" ToolTip="yyyy-mm-dd" Visible="False"></asp:TextBox>
    <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
    <asp:TextBox ID="TextBox2" runat="server" ToolTip="yyyy-mm-dd" Visible="False"></asp:TextBox>
    <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
    <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" />
    <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Back" 
        Visible="False" />
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
        SelectCommand="SELECT * FROM [staffatten] WHERE (([date] &gt;= @date) AND ([date] &lt;= @date2) AND ([staff_id] = @staff_id)) ORDER BY [date]">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="date" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="date2" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="TextBox3" Name="staff_id" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
        <asp:Button ID="Button16" runat="server" Text="View Staff Details" 
            Visible="False" />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
            CellPadding="2" DataKeyNames="staff_id" DataSourceID="SqlDataSource2" 
            ForeColor="Black" GridLines="None" Height="50px" Width="327px">
            <FooterStyle BackColor="Tan" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                HorizontalAlign="Center" />
            <Fields>
                <asp:TemplateField HeaderText="Employee ID" SortExpression="staff_id">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("staff_id") %>'></asp:Label>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("staff_id") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("staff_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="dateofjoin" HeaderText="DOJ" 
                    SortExpression="dateofjoin" />
                <asp:BoundField DataField="dateofleave" HeaderText="DOL" 
                    SortExpression="dateofleave" />
                <asp:BoundField DataField="userid" HeaderText="User ID" 
                    SortExpression="userid" />
                <asp:BoundField DataField="pwd" HeaderText="Password" SortExpression="pwd" />
            </Fields>
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
            SelectCommand="SELECT * FROM [staffdet] WHERE ([staff_id] = @staff_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox3" Name="staff_id" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </span>
        <asp:Button ID="Button17" runat="server" onclick="Button17_Click" 
            Text="Click here to ADD Photo" />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Staff ID  :"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
        <asp:Button ID="Button18" runat="server" onclick="Button18_Click" 
            Text="Upload" />
        <br />
    <div>
    <div style="width:25%; float:left;"><span class="style24">Adding/Updating Staff Details:</span><br />
        <div style="float:left"> Staff ID :</div>
        <div style="float:right"><asp:TextBox ID="TextBox5" runat="server" Width="76px"></asp:TextBox><asp:Button ID="Button20" runat="server" onclick="Button20_Click" Text="Fetch" 
            Width="75px" /></div>
        <br /><br />
        <div style="float:left">Name :</div>    
        <div style="float:right"><asp:TextBox ID="TextBox6" runat="server" Width="150px"></asp:TextBox></div>
    <br /><br />
                <div style="float:left">DoJ :</div>
    <div style="float:right"><asp:DropDownList ID="DropDownList9" runat="server" DataSourceID="SQL_YEAR" 
        DataTextField="year" DataValueField="yr_val">
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList10" runat="server" DataSourceID="SQL_MON" 
        DataTextField="month" DataValueField="mon_val">
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList11" runat="server" DataSourceID="SQL_DAY" 
        DataTextField="day" DataValueField="day_val">
    </asp:DropDownList>
    <asp:TextBox ID="TextBox9" runat="server" Width="75px"></asp:TextBox>
    <asp:TextBox ID="TextBox11" runat="server" Visible="False" Width="35px"></asp:TextBox></div>
    <br /><br />
    <div style="float:left">DoL:</div>     
    <div style="float:right"><asp:DropDownList ID="DropDownList12" runat="server" DataSourceID="SQL_YEAR" 
        DataTextField="year" DataValueField="yr_val">
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList13" runat="server" DataSourceID="SQL_MON" 
        DataTextField="month" DataValueField="mon_val">
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList14" runat="server" DataSourceID="SQL_DAY" 
        DataTextField="day" DataValueField="day_val">
    </asp:DropDownList>
    <asp:TextBox ID="TextBox10" runat="server" Width="75px"></asp:TextBox></div>
    <br /><br />
    <div style="float:left">User ID :</div> 
    <div style="float:right"><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></div>
    <br /><br />
    <div style="float:left">Password :</div>
    <div style="float:right"><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></div>
    <br /><br />
    <div style="float:left">Status :</div>
    <div style="float:right"><asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></div>
        
        
        
    <br /><br />
    <div style="float:left"><asp:Button ID="Button21" runat="server" onclick="Button21_Click" Text="Add" 
        Width="121px" /></div>
    <div style="float:right"><asp:Button ID="Button22" runat="server" Text="Update" Width="140px" 
        onclick="Button22_Click" /></div>
    </div>    
        <br /><br /></div>
    <div class="style28">Staff Data:
        <div>
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Current" 
                GroupName="Staff_retrive" />         
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         
        <asp:RadioButton ID="RadioButton2" runat="server" Text="All" 
                GroupName="Staff_retrive" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" runat="server" Text="Get" />
            </asp:GridView>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="staff_id" DataSourceID="Staff_Details" Width="800px" BorderColor="White" BorderStyle="Solid" CellSpacing="1">
                <Columns>
                    <asp:BoundField DataField="staff_id" HeaderText="Staff ID" ReadOnly="True" 
                        SortExpression="staff_id" />
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                    <asp:BoundField DataField="dateofjoin" HeaderText="DoJ" 
                        SortExpression="dateofjoin" />
                    <asp:BoundField DataField="dateofleave" HeaderText="DoL" 
                        SortExpression="dateofleave" />
                    <asp:BoundField DataField="userid" HeaderText="UserID" 
                        SortExpression="userid" />
                    <asp:BoundField DataField="pwd" HeaderText="Password" SortExpression="pwd" />
                    <asp:BoundField DataField="status" HeaderText="Status" 
                        SortExpression="status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="Staff_Details" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
                
                SelectCommand="SELECT [staff_id], [name], [dateofjoin], [dateofleave], [userid], [pwd], [status] FROM [staffdet] WHERE ([dateofleave] IS NOT NULL)">
            </asp:SqlDataSource>
        </div>
    </div>
    </form>
    </body>
</html>
