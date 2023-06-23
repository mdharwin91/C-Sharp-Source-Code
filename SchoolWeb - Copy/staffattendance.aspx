<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staffattendance.aspx.cs" Inherits="SchoolWeb.staffattendance" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link rel="Stylesheet" type="text/css" href="style.css" />
    <title>Staff Attendance</title>
    <style type="text/css">
        .style9
        {
            margin-bottom: 0px;
            
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <div class="Sec-header">
                <div>
                    <div class="Sec-logo"><img src="Img/emblem_png.png" class="style_img" /></div>
                    <div class="Sec-title"><h1>VASANTHAM</h1><br/><h3>NURSERY AND PRIMARY SCHOOL</h3></div>
                    <div class="Sec-logo2"><img src="Img/UNTITLED_001_1421299653802.jpg" class="style_img" /></div>
                </div>
                <div class="Sec-titlebar">
                    <div style="width:25%; float:right; font-size:large;"><a href="<%= ResolveUrl("Studentview.aspx") %>"><li style="color:red;">Student Details</li></a></div>
                    <div style="width:10%; float:right; font-size:large;"><a href="<%= ResolveUrl("UnPaid.aspx") %>"><li style="color:red;">Unpaid Details</li></a></div>
                    <div style="width:10%; float:right; font-size:large;"><a href="<%= ResolveUrl("paiddetails.aspx") %>"><li style="color:red;">Paid Details</li></a></div>
                    <div style="width:10%; float:right; font-size:large;"><a href="<%= ResolveUrl("staffattendance.aspx")%>"><li style="color:aqua;">Staff</li></a></div>
                    <div style="width:10%; float:right; font-size:large;"><a href="<%= ResolveUrl("default.aspx")%>"><li style="color:red;">Login</li></a></div>
                </div>
            </div>
        </div>


    <br /> <br /><br /><br /><br /><br /><br /><br /><br />
        <div style="width:50%; float:left; font-size:large; border-block-color:black; border-style:solid;">
            <div style="width:50%; float:left; margin-left:50px;">Date  :</div>
            <div style="width:35%; float:right;"><asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></div>
            <br /><br /><br />
            <div style="width:50%; float:left; margin-left:50px;">Employee ID :</div>
            <div style="width:35%; float:right;"><asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" ontextchanged="TextBox1_TextChanged" Width="78px" Font-Size="Large" Height="30px"  ></asp:TextBox><asp:Button ID="Button3"  runat="server" onclick="Button3_Click" Text="Get" /></div>
            <br /><br /><br />
            <div style="width:50%; float:left; margin-left:50px;">Name :</div>
            <div style="width:35%; float:right;"><asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Larger"></asp:Label><asp:TextBox ID="TextBox2" runat="server" BackColor="Transparent" Font-Bold="True" Font-Size="Large" Visible="false"></asp:TextBox></div>
            <br /><br /><br />
            <div style="width:30%; float:left; margin-left:150px;"><asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Log In" style="width: 150px" /></div>
            <div style="width:35%; float:right;"><asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Log Out" style="width: 150px" /></div>
            <br /><br /><br />
            <div style="width:80%; float:left; margin-left:150px;">Logged In At :<asp:Label ID="Label2" runat="server"></asp:Label></div><br /><br /><br />
            <div style="width:80%; float:left; margin-left:150px;">Logged Out At:<asp:Label ID="Label3" runat="server"></asp:Label></div>
            <br /><br /><br />

            <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Back" />

        </div>






        <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
            Height="36px" HorizontalAlign="Center" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" Width="989px" 
            PageSize="2">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
            <Columns>
                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                <asp:BoundField DataField="staff_id" HeaderText="Staff ID" 
                    SortExpression="staff_id" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="login" HeaderText="Login" 
                    SortExpression="login" />
                <asp:BoundField DataField="logout" HeaderText="Logout" 
                    SortExpression="logout" />
                <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
            </Columns>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
        SelectCommand="SELECT [staff_id], [name], [login], [count], [logout], [date] FROM [staffatten] WHERE ([date] LIKE '%' + @date + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label4" Name="date" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
