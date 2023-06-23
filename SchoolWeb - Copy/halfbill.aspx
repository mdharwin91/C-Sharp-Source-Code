<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="halfbill.aspx.cs" Inherits="SchoolWeb.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Pending Fee</title>
    <style type="text/css">
        .style1
        {
            margin-bottom: 437px;
        }
        .style2
        {
            height: 119px;
        }
        .style3
        {
            height: 19px;
            margin-top: 8px;
        }
        .style5
        {
            margin-left: 3px;
        }
        .style7
        {
            height: 8px;
        }
        .style8
        {
            height: 14px;
        }
        .style9
        {
            font-family: Batang;
        }
    </style>
</head>
<body bgcolor ="fuchsia" >
    <form id="form1" runat="server">
    <div class="style2">
    
        <br />
        <h1 style="margin-left: 1px; text-align: center; " align="center" 
            class="style7">
            <asp:Image ID="Image1" runat="server" Height="73px" ImageAlign="Left" 
                ImageUrl="~/Emblem_NoBG.png" Width="70px" />
        VASANTHAM </h1>
        <h1 style="margin-left: 1px; text-align: center; " align="center" 
            class="style8">
            <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp; </span>Nursery and Primary Schoo<span 
                lang="en-us">L</span></h1>
        <p style="margin-left: 1px; text-align: center; " align="right" class="style3">
            &nbsp;<span class="style9" lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span>I<span lang="en-us">nstallment Fee Payee&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                ID="Label4" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            Date:
            <asp:Label ID="Label3" runat="server"></asp:Label>
            </span></p>
    
    </div>
    <asp:Panel ID="Panel1" runat="server" CssClass="style1" Height="457px" 
        BackColor="#FFFF99">
        <span lang="en-us">&nbsp;<span lang="en-us"><br />
        &nbsp;&nbsp;&nbsp;&nbsp; Ref no :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <span lang="en-us">&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Fetch" 
            style="height: 26px" />
        &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Get Ref No" />
        &nbsp;<span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ad. No :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <span lang="en-us">&nbsp; </span>
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="Get Details" />
        <br />
        <span lang="en-us">
        <br />
        </span><span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp; Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:TextBox ID="TextBox3" runat="server" BorderStyle="None" BackColor="Transparent"  Font-Bold="True" 
            Font-Size="Large"></asp:TextBox>
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span lang="en-us">Total 
        to Pay&nbsp; :&nbsp; </span>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        </span>
        <br />
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp; Previously Paid :&nbsp; </span>
        <asp:TextBox ID="TextBox5" runat="server" BorderStyle="None" Font-Size="Large" BackColor="Transparent"
            Width="145px" Font-Bold="True"></asp:TextBox>
        <span lang="en-us">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Current Paid :
        </span>
        <asp:TextBox ID="TextBox6" runat="server" ontextchanged="TextBox6_TextChanged"></asp:TextBox>
        <span lang="en-us">&nbsp;&nbsp; </span>
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
            Text="Add this amount" />
        <asp:TextBox ID="TextBox9" runat="server" Visible="False" Width="39px"></asp:TextBox>
        <br />
        <br />
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp; Bal To Pay :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:TextBox ID="TextBox7" runat="server" BorderStyle="None" 
            BackColor="Transparent" Font-Bold="True" Font-Size="Large" ></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last paid on :&nbsp;&nbsp;<asp:TextBox 
            ID="TextBox8" runat="server" BackColor ="Transparent" BorderStyle="None"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
            Text="Back" />
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="SAVE" />
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:Button ID="Button7" runat="server" onclick="Button7_Click" Text="Update" 
            Visible="False" />
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:Button ID="Button8" runat="server" BackColor="#99FF66" 
            onclick="Button8_Click" Text="Reset" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            ForeColor="#3333CC"></asp:Label>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <asp:Panel ID="Panel2" runat="server" CssClass="style5" Height="319px">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                DataKeyNames="refno" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                GridLines="None" Height="315px" HorizontalAlign="Center" Width="986px">
                <PagerSettings PageButtonCount="5" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                <Columns>
                    <asp:BoundField DataField="refno" HeaderText="Ref No." ReadOnly="True" 
                        SortExpression="refno" />
                    <asp:BoundField DataField="adno" HeaderText="Ad No" SortExpression="adno" />
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                    <asp:BoundField DataField="ttp" HeaderText="Total To Pay" 
                        SortExpression="ttp" />
                    <asp:BoundField DataField="paid" HeaderText="Paid" SortExpression="paid" />
                    <asp:BoundField DataField="btp" HeaderText="Balance To Pay" 
                        SortExpression="btp" />
                    <asp:BoundField DataField="updatedate" HeaderText="Updated Date" 
                        SortExpression="updatedate" />
                    <asp:BoundField DataField="date" HeaderText="Date" 
                        SortExpression="date" />
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
                    HorizontalAlign="Center" VerticalAlign="Middle" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
                
                SelectCommand="SELECT [refno], [adno], [name], [ttp], [paid], [btp], [updatedate], [date] FROM [pending] ORDER BY [refno] DESC">
            </asp:SqlDataSource>
        </asp:Panel>
        &nbsp;</span></span>
    </asp:Panel>
    </form>
</body>
</html>
