<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="billedbetween.aspx.cs" Inherits="SchoolWeb.billedbetween" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link rel="Stylesheet" type="text/css" href="style.css" />
    <title>Billed Between</title><script type="text/javascript" language="javascript">
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
            font-weight: bold;
            text-decoration: underline;
            color: #FFFF00;
        }
        .style21
        {
            width: 100%;
            margin-right: 0px;
        }
        .style22
        {
            width: 979px;
            margin-top: 2px;
        }
        </style>
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
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("billedbetween.aspx") + "?val=" + Label1.Text %>"><li style="color:aqua;">Between</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("oldbill.aspx") + "?val=" +  Label1.Text%>"><li style="color:red;">Old Bill</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("stafflogindata.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Staff Data</li></a></div>
                    <div style="width:15%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("classchange.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Class Change</li></a></div>
                </div>
            </div>
        </div>

    <form id="form1" runat="server" style="color: #FFFFFF; " class="style21">
    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
    <p style="background-color: #0000FF" class="hidden">
        &nbsp;</p>
    <p style="background-color: #0000FF" class="hidden">
        &nbsp;</p>
    <p style="background-color: #0000FF" class="hidden">
        &nbsp;</p>
    <p style="background-color: #0000FF" class="hidden">
        &nbsp;</p>
    <p style="background-color: #0000FF" class="hidden">
        &nbsp;</p>
    <p style="background-color: #0000FF" class="hidden">
        <span class="style10" lang="en-us" 
            
            
            style="background-image: url('file:///C:/Users/DHARWIN/Documents/Visual Studio 2008/Projects/SchoolWeb/SchoolWeb/login-page-background-images-hd-7.jpg'); color: #FFFFFF;">
        <asp:Button 
            ID="Button13" runat="server" Text="Class Change" BorderStyle="None" 
        BackColor="Transparent"  
        Width="140px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
        Height="27px" onclick="Button13_Click"/>
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button14" runat="server" Text="Staff Login Data" BorderStyle="None" 
        BackColor="Transparent"  
        Width="150px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
        Height="27px" onclick="Button14_Click"/>
        <asp:Button ID="Button10" runat="server" Text="Old Bill Detail" BorderStyle="None" 
        BackColor="Transparent"  
        Width="150px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
        Height="27px" onclick="Button10_Click"/>
        &nbsp;<asp:Button ID="Button11" runat="server" Text="Billed Between" BorderStyle="None" 
        BackColor="Transparent"  
        Width="140px" Font-Bold="True" Font-Size="Large" ForeColor="#FFFF66" 
        Height="27px" onclick="Button11_Click"/>
        &nbsp;<asp:Button ID="Button12" runat="server" Text="Day Bill Details" BorderStyle="None" 
        BackColor="Transparent"  
        Width="150px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
        Height="27px" onclick="Button12_Click"/>
        <asp:Button ID="Button16" runat="server" Text="Admin" BorderStyle="None" 
        BackColor="Transparent"  
        Width="100px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
        Height="27px" onclick="Button16_Click"/>
        <asp:Button ID="Button15" runat="server" Text="Logout" BorderStyle="None" 
        BackColor="Transparent"  
        Width="100px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
        Height="27px" onclick="Button15_Click" />
        </span></p>
    <p>
        <span class="style10" lang="en-us" 
            
            
            style="background-image: url('file:///C:/Users/DHARWIN/Documents/Visual Studio 2008/Projects/SchoolWeb/SchoolWeb/login-page-background-images-hd-7.jpg'); color: #FFFFFF;">
        <span lang="en-us"></span>
        &nbsp;
        </span></p>
    <p>
        &nbsp;</p>
    <p class="style20">
        Bill Details for Specific Period</p>
    From : <span lang="en-us">
        &nbsp; 
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    To&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;         
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
        </span>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Get" />
    <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Back" 
        Visible="False" />
    &nbsp;<asp:Button ID="Button17" runat="server" OnClick="Button17_Click" Text="Last Month" />
        <asp:Button ID="Button18" runat="server" OnClick="Button18_Click" Text="Month to Date" />
        
    </span>
    <asp:ImageButton ID="ImageButton1" runat="server" Height="32px" 
        ImageUrl="~/Img/267px-PDF_file_icon.svg.png" onclick="ImageButton1_Click" 
        Width="29px" />
    <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="bill_num" 
        DataSourceID="SqlDataSource1" 
        Height="237px" PageSize="20" Width="939px" 
        HorizontalAlign="Center" ShowFooter="True" BorderStyle="None" 
        BackColor="White" BorderColor="#CC9966" BorderWidth="1px">
        <RowStyle BackColor="White" BorderStyle="Solid" ForeColor="#330099" />
        <Columns>
            <asp:BoundField DataField="bill_num" HeaderText="Bill No" ReadOnly="True" 
                SortExpression="bill_num" />
            <asp:BoundField DataField="admi_num" HeaderText="Ad no" 
                SortExpression="admi_num">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name">
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="mon" HeaderText="Month" SortExpression="mon">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="amt" HeaderText="Amount" SortExpression="amt">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="std" HeaderText="STD" SortExpression="std">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="billby" HeaderText="Billed By" 
                SortExpression="billby">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="Black" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
        
        SelectCommand="SELECT * FROM [bill] WHERE (([date] &gt;= @date) AND ([date] &lt;= @date2)) ORDER BY [bill_num] DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="date" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="date2" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
