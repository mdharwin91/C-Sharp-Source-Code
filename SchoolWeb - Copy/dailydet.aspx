<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dailydet.aspx.cs" Inherits="SchoolWeb.dailydet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link rel="Stylesheet" type="text/css" href="style.css" />
    <title>Daily Fee Details</title><script type="text/javascript" language="javascript">
    window.onload = function () {
        noBack();
    }
    function noBack() {
        window.history.forward();
    }
</script>
    <style type="text/css">
        .style1
        {
            height: 525px;
        }
        .style3
        {
            font-size: xx-large;
        }
        .style4
        {
            font-size: x-large;
        }
        .style6
        {
            height: 7px;
            width: 980px;
            background-color: #FFFFFF;
        }
        .style7
        {
            height: 35px;
            width: 980px;
            background-color: #FFFFFF;
        }
        .style8
        {
            background-color: #FFFFFF;
        }
        .style9
        {
            height: 637px;
            width: 952px;
        }
        </style>
</head>
<body>

    <form id="form1" runat="server" class="style9">

        <div>
            <div class="Sec-header">
                <div>
                    <div class="Sec-logo"><img src="Img/emblem_png.png" class="style_img" /></div>
                    <div class="Sec-title"><h1>VASANTHAM</h1><br/><h3>NURSERY AND PRIMARY SCHOOL</h3></div>
                    <div class="Sec-logo2"><img src="Img/UNTITLED_001_1421299653802.jpg" class="style_img" /></div>
                </div>
                <div class="Sec-titlebar">
                    <div style="width:20%; float:left; color:forestgreen; font-size:x-large;">User : <asp:Label ID="Label11" runat="server"></asp:Label></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("default.aspx") %>"><li style="color:red;">Logout</li></a></div>
                    <div style="width:15%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("dailydet.aspx") + "?val=" + Label5.Text %>"><li style="color:aqua;">Daily Details</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("bill_2.aspx") + "?val=" + Label10.Text +"&val1="+ Label5.Text%>"><li style="color:red;">Bill</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("first.aspx") + "?val=" + Label5.Text %>"><li style="color:red;">Students</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("enquiry.aspx") + "?val=" + Label5.Text %>"><li style="color:red;">Enquiry</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("CommonTab.aspx") + "?val=" + Label5.Text %>"><li style="color:red;">Common</li></a></div>
                </div>
            </div>
        </div>



        <br /><br /><br /><br /><br /><br /><br /><br />
        <div style="width:100%; float:left;">
        <div style="width:49%; float:left; border:dotted;">
            <div style="width:100%; float:left; text-align:center;" class="style3"><strong>Fee Collection Details</strong></div><br /><br /><br />
            <div style="width:50%; float:left;">Logged in as :</div><div style="width:50%; float:left;"><asp:Label ID="Label1" runat="server"></asp:Label><asp:Label ID="Label10" runat="server" Text="Label" Visible="False"></asp:Label></div>  <br /><br />
            <div style="width:50%; float:left;">Refrence No. :</div><div style="width:50%; float:left;"><asp:TextBox ID="TextBox1" runat="server"  BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="Yellow" ></asp:TextBox></div><br /><br />
            <div style="width:50%; float:left;">Date :</div><div style="width:50%; float:left;"><asp:TextBox ID="TextBox2" runat="server" BorderStyle="None" BackColor="Transparent"  Font-Size="Medium" Font-Bold="True" ForeColor="Yellow"></asp:TextBox><asp:TextBox ID="TextBox9" runat="server" Visible="False" Width="10px"></asp:TextBox></div><br /><br />
            <div style="width:50%; float:left;">Today</div><div style="width:50%; float:left;"></div><br /><br />
            <div style="width:50%; float:left;">Total Billed Collection</div><div style="width:50%; float:left;"><asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Meiryo UI" Font-Size="X-Large"></asp:Label></div><br /><br />
            <div style="width:50%; float:left;">School Fee :</div><div style="width:50%; float:left;"><asp:TextBox ID="TextBox3" runat="server" ontextchanged="TextBox3_TextChanged"></asp:TextBox><asp:TextBox ID="TextBox10" runat="server" Visible="False" Width="10px"></asp:TextBox></div><br /><br />
            <div style="width:50%; float:left;">Smart Class Fee :</div><div style="width:50%; float:left;"><asp:TextBox ID="TextBox4" runat="server" ontextchanged="TextBox4_TextChanged" Visible="False"></asp:TextBox></div><br /><br />
            <div style="width:50%; float:left;">Book Money :</div><div style="width:50%; float:left;"><asp:TextBox ID="TextBox5" runat="server" ontextchanged="TextBox5_TextChanged" Visible="False"></asp:TextBox></div><br /><br />
            <div style="width:50%; float:left;">Other Fees :</div><div style="width:50%; float:left;"><asp:TextBox ID="TextBox6" runat="server" ontextchanged="TextBox6_TextChanged"></asp:TextBox><asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Calculate" BorderStyle="Outset" Visible="False" /></div><br /><br />
            <div style="width:50%; float:left;">Other Fees For :</div><div style="width:50%; float:left;"><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></div><br /><br />
            <div style="width:50%; float:left;">Total Fees :</div><div style="width:50%; float:left;"><asp:TextBox ID="TextBox8" runat="server" BorderStyle="None" BackColor="Transparent" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></div><br /><br />
            <div style="width:50%; float:left;"><asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Back" /></div><div style="width:50%; float:left;"><asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="SAVE" style="height: 26px" /></div><br /><br />
        </div>
        <div style="width:49.5%; float:right; border:dotted;">
            <div style="width:100%; float:left; text-align:center;" class="style3"><strong>Stock Sold Details</strong></div><br /><br /><br />
            <div style="width:50%; float:left;">Item :</div><div style="width:50%; float:left;"><asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem Value="diary_aq">Diary</asp:ListItem>
            <asp:ListItem Value="tie_aq">Tie</asp:ListItem>
            <asp:ListItem Value="uniform_aq">Uniform</asp:ListItem>
            <asp:ListItem Value="belt_aq">Belt</asp:ListItem>
            <asp:ListItem Value="_4line_note_aq">4 Line Note</asp:ListItem>
            <asp:ListItem Value="maths_note_aq">Maths Note</asp:ListItem>
            <asp:ListItem Value="_1line_note_aq">1 Line Note</asp:ListItem>
            <asp:ListItem Value="square_note_aq">Square Note</asp:ListItem>
            <asp:ListItem Value="longsize_note_aq">LongSize Note</asp:ListItem>
            <asp:ListItem Value="lkg_1_aq">LKG Term-I</asp:ListItem>
            <asp:ListItem Value="lkg_2_aq">LKG Term-II</asp:ListItem>
            <asp:ListItem Value="lkg_3_aq">LKG Term-III</asp:ListItem>
            <asp:ListItem Value="ukg_1_aq">UKG Term-I</asp:ListItem>
            <asp:ListItem Value="ukg_2_aq">UKG Term-II</asp:ListItem>
            <asp:ListItem Value="ukg_3_aq">UKG Term-III</asp:ListItem>
            <asp:ListItem Value="i_1_aq">STD-I Term-I</asp:ListItem>
            <asp:ListItem Value="i_2_aq">STD-I Term-II</asp:ListItem>
            <asp:ListItem Value="i_3_aq">STD-I Term-III</asp:ListItem>
            <asp:ListItem Value="ii_1_aq">STD-II Term-I</asp:ListItem>
            <asp:ListItem Value="ii_2_aq">STD-II Term-II</asp:ListItem>
            <asp:ListItem Value="ii_3_aq">STD-II Term-III</asp:ListItem>
            <asp:ListItem Value="iii_1_aq">STD-III Term-I</asp:ListItem>
            <asp:ListItem Value="iii_2_aq">STD-III Term-II</asp:ListItem>
            <asp:ListItem Value="iii_3_aq">STD-III Term-III</asp:ListItem>
            <asp:ListItem Value="iv_1_aq">STD-IV Term-I</asp:ListItem>
            <asp:ListItem Value="iv_2_aq">STD-IV Term-II</asp:ListItem>
            <asp:ListItem Value="iv_3_aq">STD-IV Term-III</asp:ListItem>
            <asp:ListItem Value="v_1_aq">STD-V Term-I</asp:ListItem>
            <asp:ListItem Value="v_2_aq">STD-V Term-II</asp:ListItem>
            <asp:ListItem Value="v_3_aq">STD-V Term-III</asp:ListItem>
            </asp:DropDownList></div>  <br /><br />
            <div style="width:50%; float:left;">Available Quantity</div><div style="width:50%; float:left;"><asp:TextBox ID="TextBox11" runat="server"  BackColor="Transparent" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="Black" ></asp:TextBox></div><br /><br />
            <div style="width:50%; float:left;">Sold Count</div><div style="width:50%; float:left;"><asp:TextBox ID="TextBox12" runat="server" BorderStyle="Solid" BackColor="Transparent"  Font-Size="Medium" Font-Bold="True" ForeColor="Black"></asp:TextBox><asp:TextBox ID="TextBox13" runat="server" Visible="False" Width="10px"></asp:TextBox></div><br /><br />
            <div style="width:50%; float:left;"><asp:Button ID="Button7" runat="server" Text="Update Stock" OnClick="Button7_Click" /></div><div style="width:50%; float:left;"><asp:Button ID="Button14" runat="server" Text="Clear" OnClick="Button14_Click" /></div><br /><br />
            <div style="width:100%; float:left;"><asp:TextBox ID="TextBox14" runat="server" TextMode="MultiLine" Width="100%" Height="200px"></asp:TextBox></div>
        </div>
        </div>








        <h1 style="margin: 0px; padding: 0px; " 
        class="style6">
            &nbsp;</h1>
    <h1 style="margin: 0px; padding: 0px; " 
        class="style7">
        <span class="style3"><span class="style4">
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
        ForeColor="White" Text="User : " Visible="False"></asp:Label>
    </span></span>
    
    &nbsp;<asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
        <span class="style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></h1>
    <h1 style="margin: 0px; padding: 0px; " 
        class="style7">
        &nbsp;&nbsp;&nbsp;<asp:Button 
        ID="Button11" runat="server" BorderStyle="None" 
        BackColor="Transparent" Text="Common" 
        Width="87px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
        Height="27px" onclick="Button11_Click" Visible="False"  />
    &nbsp;&nbsp;
    <asp:Button ID="Button6" runat="server" BorderStyle="None" 
        BackColor="Transparent" Text="Students" 
        Width="87px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
        Height="27px" onclick="Button1_Click" Visible="False" />
&nbsp;<asp:Button ID="Button10" runat="server" BackColor="Transparent" 
        BorderStyle="None" Font-Bold="True" 
        Font-Size="Large" ForeColor="White" Text="Bill" 
        onclick="Button10_Click" Visible="False"  />
    <asp:Button ID="Button8" runat="server" BackColor="Transparent" BorderStyle="None" 
        Text="Daily Details" Font-Bold="True" Font-Size="Large" ForeColor="#FFFF66" 
        Height="27px" onclick="Button3_Click" Visible="False" />
    <asp:Button ID="Button9" runat="server" BackColor="Transparent" 
        BorderStyle="None" Font-Bold="True" 
        Font-Size="Large" ForeColor="White"  onclick="Button9_Click" Text="Logout" 
            Visible="False" />
    </h1>
    <h1 style="margin: 0px; padding: 0px; " 
        class="style7">
    <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
    &nbsp;<asp:TextBox ID="usercode" runat="server" Visible="False"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>
    <div class="style1">
    
        <span lang="en-us">
       
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="TEMP" 
            Visible="False" />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button13" runat="server" 
            onclick="Button13_Click" Text="TS" Visible="False" Width="23px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button5" 
            runat="server" onclick="Button5_Click" Text="Button" Visible="False" />
        <asp:Button ID="Button12" runat="server" onclick="Button12_Click" 
            Text="emaillog" Visible="False" />
        &nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" 
            Text="Label" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" DataKeyNames="date" DataSourceID="SqlDataSource1" 
            Height="65px" Width="950px" HorizontalAlign="Justify" PageSize="1">
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" HorizontalAlign="Center" />
            <Columns>
                <asp:BoundField DataField="refno" HeaderText="Ref No." SortExpression="refno" />
                <asp:BoundField DataField="date" HeaderText="Date" ReadOnly="True" 
                    SortExpression="date" />
                <asp:BoundField DataField="schoolfee" HeaderText="School Fee" 
                    SortExpression="schoolfee" />
                <asp:BoundField DataField="smartfee" HeaderText="Smart Fee" 
                    SortExpression="smartfee" />
                <asp:BoundField DataField="bookfee" HeaderText="Book Fee" 
                    SortExpression="bookfee" />
                <asp:BoundField DataField="otherfee" HeaderText="Other Fee" 
                    SortExpression="otherfee" />
                <asp:BoundField DataField="updateby" HeaderText="Update by" 
                    SortExpression="updateby" />
                <asp:BoundField DataField="total" HeaderText="Total" SortExpression="total" />
                <asp:BoundField DataField="reason" HeaderText="Reason" 
                    SortExpression="reason" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
            SelectCommand="SELECT [refno], [date], [schoolfee], [smartfee], [bookfee], [otherfee], [updateby], [total], [reason] FROM [dailydetails] ORDER BY [refno] DESC">
        </asp:SqlDataSource>
        </span>
    
    </div>
    </form>
</body>
</html>
