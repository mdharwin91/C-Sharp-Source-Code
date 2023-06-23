<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paiddetails.aspx.cs" Inherits="SchoolWeb.paiddetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link rel="Stylesheet" type="text/css" href="style.css" />
    <title>Fees Paid List</title>
<script language="javascript" type="text/javascript">
// <!CDATA[



// ]]>
</script>
    <style type="text/css">
        .style1
        {
            font-weight: bold;
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
                    <div style="width:25%; float:right; font-size:large;"><a href="<%= ResolveUrl("Studentview.aspx") %>"><li style="color:red;">Student Details</li></a></div>
                    <div style="width:10%; float:right; font-size:large;"><a href="<%= ResolveUrl("UnPaid.aspx") %>"><li style="color:red;">Unpaid Details</li></a></div>
                    <div style="width:10%; float:right; font-size:large;"><a href="<%= ResolveUrl("paiddetails.aspx") %>"><li style="color:aqua;">Paid Details</li></a></div>
                    <div style="width:10%; float:right; font-size:large;"><a href="<%= ResolveUrl("staff.aspx")%>"><li style="color:red;">Staff</li></a></div>
                    <div style="width:10%; float:right; font-size:large;"><a href="<%= ResolveUrl("default.aspx")%>"><li style="color:red;">Login</li></a></div>
                </div>
            </div>
        </div>

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    <form id="form1" runat="server">
    
    <p>
        <span class="style1" lang="en-us">OverAll Fee Paid Details:</span></p>
    <p>
        &nbsp;</p>
    <p>
        <span lang="en-us"><asp:RadioButton ID="RadioButton1" runat="server" 
            oncheckedchanged="RadioButton1_CheckedChanged" Text="Admission Number" 
            GroupName="Paid" />
        &nbsp;<asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" 
            oncheckedchanged="RadioButton2_CheckedChanged" Text="STD " 
            GroupName="Paid" />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>I</asp:ListItem>
            <asp:ListItem>II</asp:ListItem>
            <asp:ListItem>III</asp:ListItem>
            <asp:ListItem>IV</asp:ListItem>
            <asp:ListItem>V</asp:ListItem>
            <asp:ListItem>L.K.G</asp:ListItem>
            <asp:ListItem>U.K.G</asp:ListItem>
        </asp:DropDownList>
        </span></p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Get" />
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" />
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Back" />
    </p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="Double" BorderWidth="1px" CellPadding="4" DataKeyNames="bill_num" 
        DataSourceID="PaidList" Height="114px" HorizontalAlign="Center" 
        onselectedindexchanged="GridView1_SelectedIndexChanged1" PageSize="50" 
        Width="980px" Visible="False">
        <RowStyle BackColor="White" ForeColor="#003399" />
        <Columns>
            <asp:BoundField DataField="bill_num" HeaderText="Bill No" ReadOnly="True" 
                SortExpression="bill_num">
                <ItemStyle Width="40px" Wrap="True" />
            </asp:BoundField>
            <asp:BoundField DataField="admi_num" HeaderText="Ad No" 
                SortExpression="admi_num">
                <ItemStyle Width="40px" />
            </asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name">
                <ItemStyle Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="mon" HeaderText="Month" SortExpression="mon">
                <ItemStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="amt" HeaderText="Amount" SortExpression="amt">
                <ItemStyle Width="60px" />
            </asp:BoundField>
            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date">
                <ItemStyle Width="75px" />
            </asp:BoundField>
            <asp:BoundField DataField="std" HeaderText="STD" SortExpression="std">
                <ItemStyle Width="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="billby" HeaderText="Billed By" 
                SortExpression="billby">
                <ItemStyle Width="75px" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <EmptyDataTemplate>
            Ad No.
        </EmptyDataTemplate>
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    </asp:GridView>
    <asp:SqlDataSource ID="PaidList" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
        
        SelectCommand="SELECT * FROM [bill] WHERE ([std] = @std) ORDER BY [bill_num] DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="std" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
        SelectCommand="SELECT * FROM [bill_det]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
        SelectCommand="SELECT * FROM [bill_det] WHERE ([ad_num] = @ad_num)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="ad_num" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="bill_num" 
        DataSourceID="SqlDataSource2" Height="183px" 
        onselectedindexchanged="GridView3_SelectedIndexChanged" Width="980px" 
        AllowSorting="True" BorderColor="Lime" BorderStyle="Double" 
        BorderWidth="2px">
        <Columns>
            <asp:BoundField DataField="bill_num" HeaderText="Bill No" ReadOnly="True" 
                SortExpression="bill_num">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="admi_num" HeaderText="Ad Num" 
                SortExpression="admi_num">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="mon" HeaderText="Mon" SortExpression="mon">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="amt" HeaderText="Amount" SortExpression="amt">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="std" HeaderText="STD" SortExpression="std">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="billby" HeaderText="Billed By" 
                SortExpression="billby">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <HeaderStyle BackColor="Yellow" />
        <AlternatingRowStyle BackColor="#33CC33" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
        SelectCommand="SELECT * FROM [bill] WHERE ([admi_num] = @admi_num)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="admi_num" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ad_num" DataSourceID="SqlDataSource3" Height="178px" 
        Width="977px" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="ad_num" HeaderText="Ad Num" ReadOnly="True" 
                SortExpression="ad_num" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="std" HeaderText="STD" SortExpression="std" />
            <asp:BoundField DataField="freeedu" HeaderText="Free Edu" 
                SortExpression="freeedu" />
            <asp:BoundField DataField="term1" HeaderText="Term 1" SortExpression="term1" />
            <asp:BoundField DataField="term2" HeaderText="Term 2" SortExpression="term2" />
            <asp:BoundField DataField="term3" HeaderText="Term 3" SortExpression="term3" />
        </Columns>
        <HeaderStyle BackColor="Yellow" />
        <AlternatingRowStyle BackColor="#66FFCC" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
        
        SelectCommand="SELECT [ad_num], [name], [std], [freeedu], [term1], [term2], [term3] FROM [bill_det] WHERE ([std] = @std2)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="std2" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    </form>
</body>
</html>
