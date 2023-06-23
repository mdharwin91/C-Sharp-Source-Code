<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="database.aspx.cs" Inherits="SchoolWeb.database" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Database View</title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            width: 1385px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
        <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Top_Banner.png" 
            Height="101px" HorizontalAlign="Center" Width="981px">
        </asp:Panel>
    </div>
    <br />
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="app_details">Application Detail</asp:ListItem>
        <asp:ListItem Value="bill_amt">Bill Amount View</asp:ListItem>
        <asp:ListItem Value="bill_det">Bill Details</asp:ListItem>
        <asp:ListItem Value="dailydet">Daily Fee Detail</asp:ListItem>
        <asp:ListItem Value="staffdet">Staff Details</asp:ListItem>
        <asp:ListItem Value="stddet">Student details</asp:ListItem>
        <asp:ListItem Value="pending">Pending</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="View DB" />
    <asp:GridView ID="GridView1" runat="server" BackColor="Black" 
        BorderColor="#DEBA84" BorderStyle="Double" BorderWidth="1px" CellPadding="4" 
        CellSpacing="4" HorizontalAlign="Center">
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#FFCC00" />
    </asp:GridView>
    </form>
</body>
</html>
