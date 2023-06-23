<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="version.aspx.cs" Inherits="SchoolWeb.version" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Application Details</title>
    <style type="text/css">

    .style1
    {
        color: #FFFFFF;
        text-align: center;
    }
    .style2
    {
        font-family: Cambria;
        font-size: xx-large;
        text-decoration: underline;
    }
    .style3
    {
        color: #FFFF00;
    }
    .style4
    {
        font-size: xx-large;
    }
        .style5
        {
            height: 680px;
        }
        .style6
        {
            font-weight: bold;
            font-size: x-large;
        }
        .style7
        {
            font-size: x-large;
        }
        .style8
        {
            font-family: Cambria;
            font-size: xx-large;
        }
        .style9
        {
            color: #00FFCC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="style5" 
    style="background-color: #000000">
    <p class="style1">
        <span class="style2" lang="en-us">Application Details</span></p>
    <p class="style9">
        <span lang="en-us" style="background-color: #000000">Application Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vasantham School Bill Management System</span></p>
    <p class="style9">
        <span lang="en-us">Application Owner :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Dharwin M</span></p>
    <p class="style9">
        <span lang="en-us">Application Build No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="Label1" runat="server" Text="Label"></asp:Label>
        </span></p>
    <p class="style9">
        <span lang="en-us">Application Build Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </span></p>
    <p class="style9">
        &nbsp;</p>
    <p class="style9">
        &nbsp;</p>
    <p class="style3">
        <span class="style4" lang="en-us">Date :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><asp:TextBox ID="TextBox1" 
            runat="server" Height="30px" ontextchanged="TextBox1_TextChanged" 
            BackColor="Black" BorderStyle="None" CssClass="style6" ForeColor="Yellow" 
            Width="139px"></asp:TextBox>
    </p>
    <p class="style3">
        <span class="style4" lang="en-us">Version No: </span>
        <asp:TextBox ID="TextBox2" 
            runat="server" Height="30px" CssClass="style7" Width="143px" 
            Visible="False"></asp:TextBox>
    </p>
    <p class="style3">
        <span class="style4" lang="en-us">Type :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="152px">
            <asp:ListItem>New Features</asp:ListItem>
            <asp:ListItem>Defect</asp:ListItem>
        </asp:DropDownList>
        </span>
    </p>
    <p class="style3">
        <span class="style4" lang="en-us">Description: </span>
        <asp:TextBox ID="TextBox3" 
            runat="server" Height="30px" Width="474px" CssClass="style7" 
            Visible="False"></asp:TextBox>
        <span lang="en-us">&nbsp; </span>
        <asp:Button ID="Button1" runat="server" BorderColor="Fuchsia" 
            BorderStyle="Dashed" Height="30px" onclick="Button1_Click" Text="Add Data" 
            Width="95px" Visible="False" />
        <span class="style8" lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <span class="style2" lang="en-us">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="52px" 
            ImageUrl="~/back.jpg" onclick="ImageButton1_Click" Width="64px" />
        </span>
    </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#FFFF66" BorderStyle="Inset" BorderWidth="5px" 
        CellPadding="4" DataSourceID="App_Detail" CellSpacing="4" HorizontalAlign="Center" 
        Width="954px" PageSize="4">
        <RowStyle BackColor="White" ForeColor="#330099" HorizontalAlign="Center" />
        <Columns>
            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
            <asp:BoundField DataField="version" HeaderText="Version" 
                SortExpression="version" />
            <asp:BoundField DataField="type" HeaderText="Change Type" 
                SortExpression="type" />
            <asp:BoundField DataField="description" HeaderText="Description" 
                SortExpression="description" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <AlternatingRowStyle BackColor="#FF6666" BorderStyle="Dashed" />
    </asp:GridView>
    <asp:SqlDataSource ID="App_Detail" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
        SelectCommand="SELECT * FROM [app_details] ORDER BY [date] DESC">
    </asp:SqlDataSource>
    </form>
</body>
</html>
