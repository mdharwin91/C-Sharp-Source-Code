<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Yearly.aspx.cs" Inherits="SchoolWeb.printwithbillnumber" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Yearly Change</title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            font-weight: bold;
        }
        .style2
        {
            height: 43px;
            font-weight: bold;
        }
        .style3
        {
            font-size: xx-large;
        }
        .style4
        {
            text-align: center;
        }
        .style5
        {
            font-size: x-large;
        }
    </style>
</head>
<body bgcolor="#000000">
    <form id="form1" runat="server">
    <p class="style4">
        <span class="style1" lang="en-us" 
            style="color: #FF0000; background-color: #000000;">Below has to be done 
        yearly once:</span></p>
    <p>
        <span lang="en-us" style="color: #FFFF00">Username : </span>
        <asp:Label ID="Label1" runat="server" ForeColor="Yellow" Text="Label"></asp:Label>
    </p>
    <p style="color: #FFFF00">
        <span lang="en-us">1. <span class="style5">Backup Current paid List :</span><asp:Button ID="Button1" 
            runat="server" BorderColor="Yellow" BorderStyle="Ridge" onclick="Button1_Click" 
            Text="Backup" Width="103px" />
        <asp:TextBox ID="TextBox1" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox7" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox8" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox9" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox10" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox11" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox12" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox13" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox14" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox15" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox16" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox22" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox23" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox24" runat="server" Visible="False" Width="17px"></asp:TextBox>
        </span>
    </p>
    <p style="color: #FFFF00">
        <span lang="en-us">2. <span class="style5">Clear paid Bill List</span>:</span><asp:Button ID="Button2" 
            runat="server" onclick="Button2_Click" Text="Clear" Width="84px" />
    </p>
    <p style="color: #FFFF00">
        <span lang="en-us">3. <span class="style5">Class Change for all students </span>:<asp:Button ID="Button3" 
            runat="server" onclick="Button3_Click" Text="Class Change" Width="126px" />
        </span></p>
    <p style="color: #FFFF00">
        <span lang="en-us">4. <span class="style5">Add student data to paid bill :
        </span> 
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
            Text="Add Student data" Width="129px" />
        <asp:TextBox ID="TextBox17" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox18" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox19" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox20" runat="server" Visible="False" Width="17px"></asp:TextBox>
        <asp:TextBox ID="TextBox21" runat="server" Visible="False" Width="17px"></asp:TextBox>
        </span>
    </p>
    <p style="color: #FFFF00" class="style2">
        <span class="style3" lang="en-us">MESSAGE&nbsp; :&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </span>
    </p>
    <p style="color: #FFFF00">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="Database_Change_log" AllowPaging="True" BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            GridLines="Vertical" HorizontalAlign="Center" Width="982px">
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <Columns>
                <asp:BoundField DataField="db_name" HeaderText="Database Name" 
                    SortExpression="db_name" />
                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                <asp:BoundField DataField="done_by" HeaderText="By" 
                    SortExpression="done_by" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#DCDCDC" />
        </asp:GridView>
        <asp:SqlDataSource ID="Database_Change_log" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
            SelectCommand="SELECT * FROM [db_change_log] ORDER BY [date] DESC">
        </asp:SqlDataSource>
    </p>
    <p style="color: #FFFF00">
        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Back" />
    </p>
    </form>
</body>
</html>
