<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OldBill.aspx.cs" Inherits="SchoolWeb.OldBill" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link rel="Stylesheet" type="text/css" href="style.css" />
    <title>Old Bill Retrive</title><script type="text/javascript" language="javascript">
    window.onload = function () {
        noBack();
    }
    function noBack() {
        window.history.forward();
    }
</script>
    <style type="text/css">

        .style2
        {
            height: 40px;
            width: 981px;
        }
    
        .style10
        {
            font-weight: bold;
        }
        .style20
        {
            font-weight: bold;
            text-decoration: underline;
        }
        .style22
        {
            color: #FFFF00;
        }
        </style>
</head>
<body bgcolor="#000000">
    <form id="form1" runat="server" style="color: #FFFFFF; ">
    <div>
            <div class="Sec-header">
                <div>
                    <div class="Sec-logo"><img src="Img/emblem_png.png" class="style_img" /></div>
                    <div class="Sec-title"><h1>VASANTHAM NURSERY AND PRIMARY SCHOOL</h1></div>
                    <div class="Sec-logo2"><img src="Img/UNTITLED_001_1421299653802.jpg" class="style_img" /></div>
                </div>
                <div class="Sec-titlebar">
                    <div style="width:20%; float:left; color:forestgreen; font-size:x-large;">User : <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("default.aspx") %>"><li style="color:red;">Logout</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("adminactivities.aspx") + "?val=" + Label2.Text %>"><li style="color:red;">Admin</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("oldbill.aspx") + "?val=" +  Label2.Text%>"><li style="color:aqua;">Bill Details</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("stafflogindata.aspx") + "?val=" + Label2.Text %>"><li style="color:red;">Staff Data</li></a></div>
                    <div style="width:15%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("classchange.aspx") + "?val=" + Label2.Text %>"><li style="color:red;">Class Change</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("CommonTab.aspx") + "?val=" + Label2.Text %>"><li style="color:navy;">Common</li></a></div>
                </div>
            </div>
        </div>
        <br />        <br />        <br />        <br />        <br />        <br />        <br />        <br />
        <div style="width:100%; ">
            <!-- Left pane-->
            <div style="width:50%; float:left;">
                <div style="width:100%;">Billed Details for Specific Student</div>
            
                <div style="width:100%; float:left;">                
                <div style="width:33%;float:left;" class="labelClass"><asp:Label ID="Label1" runat="server" Text="Admission Number"></asp:Label></div>
                <div style="width:20%;float:left;"><asp:TextBox ID="TextBox1" runat="server" class="textBoxClass"></asp:TextBox></div>
                <div style="width:30%;float:left;"><asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="GET" class="buttonClassAdmin"/></div>
               </div> <br /><br /><br /><br />
            <div style="width:100%;">Bill Details for Specific Period Details</div>
                 <div style="width:100%; float:left;">                
                    <div style="width:33%;float:left;" class="labelClass">From</div>
                    <div style="width:20%;float:left;" class="labelClass"><asp:TextBox ID="TextBox2" runat="server" TextMode="Date" CssClass="textBoxClass"></asp:TextBox></div>
                    <div style="width:30%;float:left;"></div>
                    </div><br /><br /><br /><br />
                 <div style="width:100%; float:left;">                
                    <div style="width:33%;float:left;" class="labelClass">To</div>
                    <div style="width:20%;float:left;" class="labelClass"><asp:TextBox ID="TextBox3" runat="server" TextMode="Date"   CssClass="textBoxClass"></asp:TextBox></div>
                    <div style="width:30%;float:left;"><asp:Button ID="Button19" runat="server" OnClick="Button19_Click" Text="Get" class="buttonClassAdmin" /></div>
                    </div><br /><br /><br /><br />
                 <div style="width:100%; float:left;">                
                    <div style="width:33%;float:left;"><asp:Button ID="Button17" runat="server" OnClick="Button17_Click" Text="Last Month" class="buttonClassAdmin" Width="125px"/></div>
                    <div style="width:20%;float:left;"><asp:Button ID="Button18" runat="server" OnClick="Button18_Click" Text="Month to Date" class="buttonClassAdmin" Width="150px"/></div>
                    <div style="width:30%;float:left;"><asp:Button ID="Button20" runat="server" Text="Billed Today" class="buttonClassAdmin" Width="150px" OnClick="Button20_Click"/></div>
                    </div><br />         
            </div>
            <!-- Right pane-->
           <div style="width:49%; float:left;">
               <div style="width:100%;">
                   <center>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="56px" HorizontalAlign="Center" PageSize="2" Width="984px" DataKeyNames="ad_num">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="ad_num" HeaderText="Admn No" SortExpression="ad_num" ReadOnly="True">
            </asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name">
            </asp:BoundField>
            <asp:BoundField DataField="std" HeaderText="STD" SortExpression="std">
            </asp:BoundField>
            <asp:BoundField DataField="freeedu" HeaderText="FreeEdu" SortExpression="freeedu">
            </asp:BoundField>
            <asp:BoundField DataField="term1" HeaderText="Term - 1" SortExpression="term1">
            </asp:BoundField>
            <asp:BoundField DataField="term2" HeaderText="Term - 2" SortExpression="term2">
            </asp:BoundField>
            <asp:BoundField DataField="term3" HeaderText="Term - 3" SortExpression="term3">
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
        SelectCommand="SELECT [ad_num], [name], [std], [freeedu], [term1], [term2], [term3] FROM [bill_det] WHERE ([ad_num] = @ad_num)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="ad_num" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
                    </center>
               </div> <br />
               <div style="width:100%;">
                   <center>
                                  
    <asp:GridView ID="GridView2" runat="server" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="bill_num" 
        DataSourceID="SqlDataSource2" 
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
                <asp:ImageButton ID="ImageButton1" runat="server" Height="32px" 
        ImageUrl="~/Img/267px-PDF_file_icon.svg.png" onclick="ImageButton1_Click" 
        Width="29px" />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
        
        SelectCommand="SELECT * FROM [bill] WHERE (([date] &gt;= @date) AND ([date] &lt;= @date2)) ORDER BY [bill_num] DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox2" Name="date" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="TextBox3" Name="date2" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
                   </center>
               </div>
                </div>
        </div>
    
    </form>
</body>
</html>
