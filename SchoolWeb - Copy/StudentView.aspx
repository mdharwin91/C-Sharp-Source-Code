<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentView.aspx.cs" Inherits="SchoolWeb.StudentView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link rel="Stylesheet" type="text/css" href="style.css" />
    <title>Student details</title>
    <style type="text/css">
        .style1
        {
            width: 978px;
        }
        .style2
        {
            font-weight: bold;
            font-family: Cambria;
            font-size: large;
        }
        .style3
        {
            text-align: center;
            width: 973px;
        }
        .style4
        {
            width: 979px;
        }
        .style5
        {
            text-align: center;
            width: 976px;
        }
        .style6
        {
            text-align: center;
            width: 975px;
        }
        .style7
        {
            font-weight: bold;
            font-size: large;
        }
        .style8
        {
            width: 978px;
            font-size: x-large;
            font-weight: bold;
            font-family: Cambria;
        }
    </style>
</head>
<body>


    <div>
            <div class="Sec-header">
                <div>
                    <div class="Sec-logo"><img src="Img/emblem_png.png" class="style_img" /></div>
                    <div class="Sec-title"><h1>VASANTHAM</h1><br/><h3>NURSERY AND PRIMARY SCHOOL</h3></div>
                    <div class="Sec-logo2"><img src="Img/UNTITLED_001_1421299653802.jpg" class="style_img" /></div>
                </div>
                <div class="Sec-titlebar">
                    <div style="width:25%; float:right; font-size:large;"><a href="<%= ResolveUrl("Studentview.aspx") %>"><li style="color:aqua;">Student Details</li></a></div>
                    <div style="width:10%; float:right; font-size:large;"><a href="<%= ResolveUrl("UnPaid.aspx") %>"><li style="color:red;">Unpaid Details</li></a></div>
                    <div style="width:10%; float:right; font-size:large;"><a href="<%= ResolveUrl("paiddetails.aspx") %>"><li style="color:red;">Paid Details</li></a></div>
                    <div style="width:10%; float:right; font-size:large;"><a href="<%= ResolveUrl("staff.aspx")%>"><li style="color:red;">Staff</li></a></div>
                    <div style="width:10%; float:right; font-size:large;"><a href="<%= ResolveUrl("default.aspx")%>"><li style="color:red;">Login</li></a></div>
                </div>
            </div>
        </div>
    <br />
    <br />    <br />
    <br />    <br />
    <br /><br />
    <form id="form1" runat="server">
    <div class="style4">
    
    
        <br />
        <br />
    
    </div>
    <p>
        <span lang="en-us">Student Details :</span></p>
    <h2 class="style1">
        &nbsp;</h2>
    <h2 class="style1">
        <span lang="en-us">Search By :
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Search" 
            oncheckedchanged="RadioButton1_CheckedChanged" Text="Adm No" />
&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Search" 
            oncheckedchanged="RadioButton2_CheckedChanged" Text="Name" />
&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Search" 
            oncheckedchanged="RadioButton3_CheckedChanged" Text="STD" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" CssClass="style7" 
            Font-Names="Cambria" Height="27px" Width="193px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" CssClass="style2" 
            onclick="Button1_Click" Text="Search" />
        </span>
    </h2>
    <p class="style8">
        &nbsp;</p>
    <p class="style8">
        <span lang="en-us">Students :
        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="Student" 
            oncheckedchanged="RadioButton4_CheckedChanged" Text="Full Student List" />
&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton5" runat="server" GroupName="Student" 
            oncheckedchanged="RadioButton5_CheckedChanged" Text="Current" />
        </span>
    </p>
    <p class="style1">
        &nbsp;</p>
    <p class="style1">
        <asp:Button ID="Button2" runat="server" CssClass="style2" 
            onclick="Button2_Click" Text="Back" Width="68px" />
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:Button ID="Button3" runat="server" CssClass="style2" 
            onclick="Button3_Click" Text="Clear" />
    </p>
    <p class="style1">
        &nbsp;</p>
    <p class="style1">
        <span lang="en-us">Total Records Found are&nbsp; :         <asp:Label ID="Label1" runat="server"></asp:Label>
        </span></p>
    <div class="style5">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" DataKeyNames="admi_num" 
            DataSourceID="StudentsDetails" Font-Names="Cambria" Width="110%" 
            HorizontalAlign="Center" >
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <Columns>
                <asp:BoundField DataField="admi_num" HeaderText="Ad No" ReadOnly="True" 
                    SortExpression="admi_num" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" >
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="std" HeaderText="STD" SortExpression="std" />
                <asp:BoundField DataField="doj" HeaderText="DOJ" SortExpression="doj" />
                <asp:BoundField DataField="emis" HeaderText="EMIS" SortExpression="emis" />
                <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
                <asp:BoundField DataField="dol" HeaderText="DOL" SortExpression="dol" />
                <asp:BoundField DataField="freeedu" HeaderText="Free Edu" 
                    SortExpression="freeedu" />
                <asp:BoundField DataField="mob" HeaderText="Mobile" SortExpression="mob" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="StudentsDetails" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
            SelectCommand="SELECT * FROM [stddet] WHERE ([admi_num] = @admi_num)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="admi_num" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <div class="style6">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" DataKeyNames="admi_num" 
            DataSourceID="SqlDataSource1" Font-Names="Cambria" Width="100%">
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <Columns>
                <asp:BoundField DataField="admi_num" HeaderText="Ad No" ReadOnly="True" 
                    SortExpression="admi_num" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" >
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="std" HeaderText="STD" SortExpression="std" />
                <asp:BoundField DataField="doj" HeaderText="DOJ" SortExpression="doj" />
                <asp:BoundField DataField="emis" HeaderText="EMIS" SortExpression="emis" />
                <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
                <asp:BoundField DataField="dol" HeaderText="DOL" SortExpression="dol" />
                <asp:BoundField DataField="freeedu" HeaderText="Free Edu" 
                    SortExpression="freeedu" />
                <asp:BoundField DataField="mob" HeaderText="Mobile" SortExpression="mob" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
            SelectCommand="SELECT * FROM [stddet] WHERE ([name] LIKE '%' + @name + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <br />
    <div class="style3">
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" DataKeyNames="admi_num" 
            DataSourceID="SqlDataSource2" Font-Names="Cambria" Width="100%">
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <Columns>
                <asp:BoundField DataField="admi_num" HeaderText="Ad No" ReadOnly="True" 
                    SortExpression="admi_num" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" >
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="std" HeaderText="STD" SortExpression="std" />
                <asp:BoundField DataField="doj" HeaderText="DOJ" SortExpression="doj" />
                <asp:BoundField DataField="emis" HeaderText="EMIS" SortExpression="emis" />
                <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
                <asp:BoundField DataField="dol" HeaderText="DOL" SortExpression="dol" />
                <asp:BoundField DataField="freeedu" HeaderText="Free Edu" 
                    SortExpression="freeedu" />
                <asp:BoundField DataField="mob" HeaderText="Mobile" SortExpression="mob" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
            SelectCommand="SELECT * FROM [stddet] WHERE (([std] = @std) AND ([std] NOT LIKE '%' + @std2 + '%'))">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="std" PropertyName="Text" 
                    Type="String" />
                <asp:Parameter DefaultValue="(LEFT)" Name="std2" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" DataKeyNames="admi_num" 
            DataSourceID="SqlDataSource3" Font-Names="Cambria" Width="100%">
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <Columns>
                <asp:BoundField DataField="admi_num" HeaderText="Ad No" ReadOnly="True" 
                    SortExpression="admi_num" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" >
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="std" HeaderText="STD" SortExpression="std" />
                <asp:BoundField DataField="doj" HeaderText="DOJ" SortExpression="doj" />
                <asp:BoundField DataField="emis" HeaderText="EMIS" SortExpression="emis" />
                <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
                <asp:BoundField DataField="dol" HeaderText="DOL" SortExpression="dol" />
                <asp:BoundField DataField="freeedu" HeaderText="Free Edu" 
                    SortExpression="freeedu" />
                <asp:BoundField DataField="mob" HeaderText="Mobile" SortExpression="mob" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
            SelectCommand="SELECT * FROM [stddet] WHERE ([std] LIKE '%' + @std + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="std" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
