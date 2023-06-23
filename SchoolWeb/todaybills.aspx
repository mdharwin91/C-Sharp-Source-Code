<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="todaybills.aspx.cs" Inherits="SchoolWeb.todaybills" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link rel="Stylesheet" type="text/css" href="style.css" />
    <title>Today Bill Details</title><script type="text/javascript" language="javascript">
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
            color: #FFFF00;
        }
        .style22
        {
            width: 987px;
        }
        </style>
</head>
<body bgcolor="#000000">

    <div>
            <div class="Sec-header">
                <div>
                    <div class="Sec-logo"><img src="Img/emblem_png.png" class="style_img" /></div>
                    <div class="Sec-title"><h1>VASANTHAM NURSERY AND PRIMARY SCHOOL</h1></div>
                    <div class="Sec-logo2"><img src="Img/UNTITLED_001_1421299653802.jpg" class="style_img" /></div>
                </div>
                <div class="Sec-titlebar">
                    <div style="width:20%; float:left; color:forestgreen; font-size:x-large;">User : <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("default.aspx") %>"><li style="color:red;">Logout</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("adminactivities.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Admin</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("todaybills.aspx") + "?val=" + Label1.Text %>"><li style="color:aqua;">Day Bill</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("billedbetween.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Between</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("oldbill.aspx") + "?val=" +  Label1.Text%>"><li style="color:red;">Old Bill</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("stafflogindata.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Staff Data</li></a></div>
                    <div style="width:15%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("classchange.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Class Change</li></a></div>
                </div>
            </div>
        </div>




    <form id="form1" runat="server" style="color: #FFFFFF; " class="style22">
    <div>
    
        <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>
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
        Width="150px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
        Height="27px" onclick="Button11_Click"/>
            &nbsp;<asp:Button ID="Button12" runat="server" Text="Day Bill Details" BorderStyle="None" 
        BackColor="Transparent"  
        Width="140px" Font-Bold="True" Font-Size="Large" ForeColor="#FFFF66" 
        Height="27px" onclick="Button12_Click"/>
            <asp:Button ID="Button16" runat="server" Text="Admin" BorderStyle="None" 
        BackColor="Transparent"  
        Width="100px" Font-Bold="True" Font-Size="Large" ForeColor="#FFFF66" 
        Height="27px" style="color: #FFFFFF" onclick="Button16_Click" />
            <asp:Button ID="Button15" runat="server" Text="Logout" BorderStyle="None" 
        BackColor="Transparent"  
        Width="100px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
        Height="27px" onclick="Button15_Click" />
        </span></p>
        <p>
            <span class="style10" lang="en-us" 
            
            
                style="background-image: url('file:///C:/Users/DHARWIN/Documents/Visual Studio 2008/Projects/SchoolWeb/SchoolWeb/login-page-background-images-hd-7.jpg'); color: #FFFFFF;">
            <span lang="en-us"></span>&nbsp;
        </span></p>
    
    </div>
    <span lang="en-us" style="font-weight: bold; font-size: medium">
    <span class="style20">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
        Day Bill Details<br />
    </span><br />
    Date:&nbsp;
      <asp:TextBox ID="TextBox1" runat="server" ForeColor="White" 
        BackColor="#CCFFCC" BorderStyle="None" BorderColor="#FFFFCC"></asp:TextBox>
        <asp:ImageButton ID="ImageButton2" runat="server" Height="22px" ImageUrl="~/Img/calendar.png" OnClick="ImageButton2_Click" Width="24px" />
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" Width="220px">
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar>
    </span>
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Back" 
        Visible="False" />
    <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Get" 
        Width="50px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button17" runat="server" OnClick="Button17_Click" Text="Today Detail" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
    <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" 
        ImageUrl="~/Img/267px-PDF_file_icon.svg.png" onclick="ImageButton1_Click" 
        Width="38px" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="bill_num" DataSourceID="SqlDataSource1" Height="237px" 
        Width="962px" BackColor="White" BorderColor="#CC9966" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" PageSize="25" 
        BackImageUrl="~/Website_BG.jpg">
        <RowStyle BackColor="White" ForeColor="#330099" />
        <Columns>
            <asp:BoundField DataField="bill_num" HeaderText="Bill No." ReadOnly="True" 
                SortExpression="bill_num" />
            <asp:BoundField DataField="admi_num" HeaderText="Ad No." 
                SortExpression="admi_num" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="mon" HeaderText="Mon" SortExpression="mon" />
            <asp:BoundField DataField="amt" HeaderText="Amt" SortExpression="amt" />
            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" >
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="std" HeaderText="STD" SortExpression="std" >
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="billby" HeaderText="Billed By" 
                SortExpression="billby" >
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
        SelectCommand="SELECT * FROM [bill] WHERE ([date] = @date) ORDER BY [bill_num] DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="date" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
