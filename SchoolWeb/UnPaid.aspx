<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UnPaid.aspx.cs" Inherits="SchoolWeb.UnPaid" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link rel="Stylesheet" type="text/css" href="style.css" />
    <title>Un_Paid</title>
    <style type="text/css">
        .style1
        {
            font-family: Cambria;
            font-size: large;
        }
        .style2
        {
            width: 972px;
        }
        .style3
        {
            width: 980px;
        }
        </style>
</head>
<body>
    <div>
            <div class="Sec-header">
                <div>
                    <div class="Sec-logo"><img src="Img/emblem_png.png" class="style_img" /></div>
                    <div class="Sec-title"><h1>VASANTHAM NURSERY AND PRIMARY SCHOOL</h1></div>
                    <div class="Sec-logo2"><img src="Img/UNTITLED_001_1421299653802.jpg" class="style_img" /></div>
                </div>
                <div class="Sec-titlebar">
                    <div style="width:25%; float:right; font-size:large;"><a href="<%= ResolveUrl("Studentview.aspx") %>"><li style="color:red;">Student Details</li></a></div>
                    <div style="width:10%; float:right; font-size:large;"><a href="<%= ResolveUrl("UnPaid.aspx") %>"><li style="color:aqua;">Unpaid Details</li></a></div>
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
    

    <form id="form1" runat="server" class="style3">
    
    <p>
        &nbsp;</p>
    <p>
        <span lang="en-us"><span class="style1">Fees Unpaid List:</span></span></p>
    <p>
        &nbsp;</p>
    <p>
        <span lang="en-us">STD&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>L.K.G</asp:ListItem>
            <asp:ListItem>U.K.G</asp:ListItem>
            <asp:ListItem>I</asp:ListItem>
            <asp:ListItem>II</asp:ListItem>
            <asp:ListItem>III</asp:ListItem>
            <asp:ListItem>IV</asp:ListItem>
            <asp:ListItem>V</asp:ListItem>
        </asp:DropDownList>
        </span>
    </p>
    <p class="style2">
        &nbsp;</p>
    <p class="style2">
        <asp:Button ID="Button1" runat="server" Text="GO" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Back" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" DataKeyNames="ad_num" 
        DataSourceID="SqlDataSource2" style="text-align: left" 
        HorizontalAlign="Center" Width="100%">
        <RowStyle BorderColor="#333300" />
        <Columns>
            <asp:BoundField DataField="ad_num" HeaderText="Ad Num" ReadOnly="True" 
                SortExpression="ad_num">
            </asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name">
            </asp:BoundField>
            <asp:BoundField DataField="std" HeaderText="STD" SortExpression="std" />
            <asp:BoundField DataField="freeedu" HeaderText="Free Edu" 
                SortExpression="freeedu" >
            </asp:BoundField>
            <asp:BoundField DataField="term1" HeaderText="Term 1" SortExpression="term1" />
            <asp:BoundField DataField="term2" HeaderText="Term 2" SortExpression="term2" />
            <asp:BoundField DataField="term3" HeaderText="Term 3" SortExpression="term3" />
        </Columns>
        <HeaderStyle BackColor="Aqua" />
        <EditRowStyle BorderColor="#333300" BorderStyle="Dashed" />
        <AlternatingRowStyle BackColor="#99FF99" BorderColor="#3333CC" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
        SelectCommand="SELECT [ad_num], [name], [std], [freeedu], [term1], [term2], [term3] FROM [bill_det] WHERE ([std] = @std)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="std" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="UnpaidList" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
        SelectCommand="SELECT * FROM [bill_det] WHERE (([jul] IS NOT NULL) AND ([std] = @std))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="std" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</form>
</body>
</html>
