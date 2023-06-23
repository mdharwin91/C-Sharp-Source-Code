<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminactivities.aspx.cs" Inherits="SchoolWeb.Adminactivities" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link rel="Stylesheet" type="text/css" href="style.css" />
    <title>Admin Page</title><script type="text/javascript" language="javascript">
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
        .style22
        {
            color: #000000;
            font-size: large;
            font-family: Aparajita;
        }
        #form1
        {
            color: #FFFFFF;
        }
        .style23
        {
            color: #FFFF00;
            font-weight: bold;
            font-size: large;
        }
        .style24
        {
            font-size: x-small;
            font-weight: bold;
        }
        .style25
        {
            font-size: x-small;
        }
        .style26
        {
            font-size: large;
        }
        .style27
        {
            color: #FFFF00;
            width: 979px;
            font-family: Aparajita;
        }
        .style28
        {
            color: #FFFFFF;
        }
        .style30
        {
            color: #000000;
        }
        .style31
        {
            color: #000000;
            font-weight: bold;
            font-size: large;
        }
        .style32
        {
            font-weight: bold;
            font-size: large;
        }
        .style34
        {
            width: 978px;
        }
        .style35
        {
            width: 981px;
            color: #FFFFFF;
            font-weight: 700;
            font-family: Aparajita;
        }
        .style36
        {
            width: 980px;
            color: #FFFF00;
            font-weight: 700;
            font-family: Aparajita;
        }
        .style37
        {
            width: 981px;
            height: 1302px;
            margin-bottom: 5px;
        }
        .style38
        {
            font-size: x-large;
        }
        .style39
        {
            text-decoration: underline;
            font-family: Aparajita;
        }
        .style40
        {
            color: #FFFF00;
            font-weight: bold;
            font-size: x-large;
        }
    .style4
    {
        font-size: xx-large;
    }
        .style41
        {
            color: #FFFF00;
            font-weight: bold;
        }
        .style42
        {
            font-family: Aparajita;
        }
        .style43
        {
            color: #FFFF00;
            font-weight: bold;
            font-size: x-large;
            font-family: Aparajita;
        }
        .style44
        {
            font-size: x-large;
            font-family: Aparajita;
        }
        .style45
        {
            font-size: large;
            font-family: Aparajita;
        }
        .style46
        {
            font-weight: bold;
            font-size: large;
            font-family: Aparajita;
        }
        .style47
        {
            color: #000000;
            font-family: Aparajita;
        }
        .style48
        {
            color: #FFFF00;
            font-weight: bold;
            font-size: large;
            font-family: Aparajita;
        }
        .style49
        {
            width: 980px;
            color: #FFFFFF;
            font-weight: 700;
            font-family: Aparajita;
        }
        </style>
</head>
<body bgcolor="Black">


    <div>
            <div class="Sec-header">
                <div>
                    <div class="Sec-logo"><img src="Img/emblem_png.png" class="style_img" /></div>
                    <div class="Sec-title"><h1>VASANTHAM</h1><br/><h3>NURSERY AND PRIMARY SCHOOL</h3></div>
                    <div class="Sec-logo2"><img src="Img/UNTITLED_001_1421299653802.jpg" class="style_img" /></div>
                </div>
                <div class="Sec-titlebar">
                    <div style="width:20%; float:left; color:forestgreen; font-size:x-large;">User : <asp:Label ID="Label1" runat="server" meta:resourcekey="Label1Resource1"></asp:Label></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("default.aspx") %>"><li style="color:red;">Logout</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("adminactivities.aspx") + "?val=" + Label1.Text %>"><li style="color:aqua;">Admin</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("todaybills.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Day Bill</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("billedbetween.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Between</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("oldbill.aspx") + "?val=" +  Label1.Text%>"><li style="color:red;">Old Bill</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("stafflogindata.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Staff Data</li></a></div>
                    <div style="width:15%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("classchange.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Class Change</li></a></div>
                </div>
            </div>
        </div>


    <form id="form1" runat="server" class="style37">
    <div><br /><br /><br /><br /><br /><br /><br /><br /></div>

        <div style="width:100%;">
            <div style="width:49%; float:left;">Today Fees </div> <div style="width:49%; float:right;"><asp:Label ID="Label2" runat="server" Text="Label" meta:resourcekey="Label2Resource1"></asp:Label></div><br /><br />
            <div style="width:49%; float:left;">Total Fee for current month (<asp:Label ID="Label3" runat="server" Text="Label" meta:resourcekey="Label3Resource1"></asp:Label>)</div> <div style="width:49%; float:right;"><asp:Label ID="Label4" runat="server" Text="Label" meta:resourcekey="Label4Resource1"></asp:Label></div><br /><br />
            <div style="width:49%; float:left;"><asp:Button ID="Button17" runat="server" onclick="Button17_Click" Text="Get Last Fee Details" Width="100px" CssClass="style42" meta:resourcekey="Button17Resource1" /></div><div style="width:49%; float:left;"><asp:Button ID="Button25" runat="server" onclick="Button25_Click" Text="Sending Text SMS" CssClass="style42" meta:resourcekey="Button25Resource1" Width="100px" /></div><br /><br />
            <div style="width:49%; float:left;">Change No:  </div> <div style="width:49%; float:left;"><asp:TextBox ID="TextBox28" runat="server" BackColor=Transparent Width="50px" BorderStyle="None" style="color: #FFFF00; font-size: large" meta:resourcekey="TextBox28Resource1"></asp:TextBox></div> <br />
            <div style="width:100%; float:left;">Monthly Fees:  </div> <br />
            <div style="width:100%;">
                <div style="width:24%; float:left; border:solid;"><br />
                    <div style="width:49%; float:left;">
                        JAN<br /><br />
                        MAY<br /><br />
                        SEP<br /><br />
                    </div>
                    <div style="width:49%; float:right;">
                        <asp:TextBox ID="TextBox1" runat="server" Width="50px" meta:resourcekey="TextBox1Resource1"></asp:TextBox><br /><br />
                        <asp:TextBox ID="TextBox5" runat="server" Width="50px" meta:resourcekey="TextBox5Resource1"></asp:TextBox><br /><br />
                        <asp:TextBox ID="TextBox9" runat="server" Width="50px" meta:resourcekey="TextBox9Resource1"></asp:TextBox><br /><br />
                    </div>

                </div>
                <div style="width:24%; float:left; border:solid;"><br />
                    <div style="width:49%; float:left;">
                        FEB<br /><br />
                        JUN<br /><br />
                        OCT<br /><br />
                    </div>
                    <div style="width:49%; float:right;">
                        <asp:TextBox ID="TextBox2" runat="server" Width="50px" meta:resourcekey="TextBox2Resource1"></asp:TextBox><br /><br />
                        <asp:TextBox ID="TextBox6" runat="server" Width="50px" meta:resourcekey="TextBox6Resource1"></asp:TextBox><br /><br />
                        <asp:TextBox ID="TextBox10" runat="server" Width="50px" meta:resourcekey="TextBox10Resource1"></asp:TextBox><br /><br />
                    </div>

                </div>
                <div style="width:24%; float:left; border:solid;"><br />
                    <div style="width:49%; float:left;">
                        MAR<br /><br />
                        JUL<br /><br />
                        NOV<br /><br />
                    </div>
                    <div style="width:49%; float:right;">
                        <asp:TextBox ID="TextBox3" runat="server" Width="50px" meta:resourcekey="TextBox3Resource1"></asp:TextBox><br /><br />
                        <asp:TextBox ID="TextBox7" runat="server" Width="50px" meta:resourcekey="TextBox7Resource1"></asp:TextBox><br /><br />
                        <asp:TextBox ID="TextBox11" runat="server" Width="50px" meta:resourcekey="TextBox11Resource1"></asp:TextBox><br /><br />
                    </div>

                </div>
                <div style="width:24%; float:left; border:solid;"><br />
                    <div style="width:49%; float:left;">
                        APR<br /><br />
                        AUG<br /><br />
                        DEC<br /><br />
                    </div>
                    <div style="width:49%; float:right;">
                        <asp:TextBox ID="TextBox4" runat="server" Width="50px" meta:resourcekey="TextBox4Resource1"></asp:TextBox><br /><br />
                        <asp:TextBox ID="TextBox8" runat="server" Width="50px" meta:resourcekey="TextBox8Resource1"></asp:TextBox><br /><br />
                        <asp:TextBox ID="TextBox12" runat="server" Width="50px" meta:resourcekey="TextBox12Resource1"></asp:TextBox><br /><br />
                    </div>

                </div>

            </div> <br />
            <div style="width:100%; float:left;">JUNE Month Fees:  </div> <br />
            <div style="width:100%; float:left; border:solid;">
                <div style="width:24%; float:left;"><br />
                    <div style="width:49%; float:left;">
                        App Fee<br /><br />
                        Term Fee<br /><br />
                    </div>
                    <div style="width:49%; float:right;">
                        <asp:TextBox ID="TextBox13" runat="server" Width="50px" meta:resourcekey="TextBox13Resource1"></asp:TextBox><br /><br />
                        <asp:TextBox ID="TextBox17" runat="server" Width="50px" meta:resourcekey="TextBox17Resource1"></asp:TextBox><br /><br />
                    </div>
                </div>
                <div style="width:24%; float:left;"><br />
                    <div style="width:49%; float:left;">
                        Adm Fee<br /><br />
                        Spec Fee<br /><br />
                    </div>
                    <div style="width:49%; float:right;">
                        <asp:TextBox ID="TextBox14" runat="server" Width="50px" meta:resourcekey="TextBox14Resource1"></asp:TextBox><br /><br />
                        <asp:TextBox ID="TextBox18" runat="server" Width="50px" meta:resourcekey="TextBox18Resource1"></asp:TextBox><br /><br />
                    </div>
                </div>
                <div style="width:24%; float:left;"><br />
                    <div style="width:49%; float:left;">
                        Tut Fee<br /><br />
                        Misc Fee<br /><br />
                    </div>
                    <div style="width:49%; float:right;">
                        <asp:TextBox ID="TextBox15" runat="server" Width="50px" meta:resourcekey="TextBox15Resource1"></asp:TextBox><br /><br />
                        <asp:TextBox ID="TextBox19" runat="server" Width="50px" meta:resourcekey="TextBox19Resource1"></asp:TextBox><br /><br />
                    </div>
                </div>
                <div style="width:24%; float:left;"><br />
                    <div style="width:49%; float:left;">
                        Other Fee<br /><br />
                        Smart Fee<br /><br />
                    </div>
                    <div style="width:49%; float:right;">
                        <asp:TextBox ID="TextBox16" runat="server" Width="50px" meta:resourcekey="TextBox16Resource1"></asp:TextBox><br /><br />
                        <asp:TextBox ID="TextBox20" runat="server" Width="50px" meta:resourcekey="TextBox20Resource1"></asp:TextBox><br /><br />
                    </div>
                </div>
            </div> <br />
            <div style="width:100%; float:left;">Book Fees:  </div> <br />
            <div style="width:100%; float:left; border:solid;">
            <div style="width:24%; float:left;"><br />
                    <div style="width:49%; float:left;">
                        L.K.G<br /><br />
                        III-STD<br /><br />
                    </div>
                    <div style="width:49%; float:right;">
                        <asp:TextBox ID="TextBox21" runat="server" Width="50px" meta:resourcekey="TextBox21Resource1"></asp:TextBox><br /><br />
                        <asp:TextBox ID="TextBox25" runat="server" Width="50px" meta:resourcekey="TextBox25Resource1"></asp:TextBox><br /><br />
                    </div>
            </div>
            <div style="width:24%; float:left;"><br />
                    <div style="width:49%; float:left;">
                        U.K.G<br /><br />
                        IV-STD<br /><br />
                    </div>
                    <div style="width:49%; float:right;">
                        <asp:TextBox ID="TextBox22" runat="server" Width="50px" meta:resourcekey="TextBox22Resource1"></asp:TextBox><br /><br />
                        <asp:TextBox ID="TextBox26" runat="server" Width="50px" meta:resourcekey="TextBox26Resource1"></asp:TextBox><br /><br />
                    </div>
            </div>
            <div style="width:24%; float:left;"><br />
                    <div style="width:49%; float:left;">
                        I-STD<br /><br />
                        V-STD<br /><br />
                    </div>
                    <div style="width:49%; float:right;">
                        <asp:TextBox ID="TextBox23" runat="server" Width="50px" meta:resourcekey="TextBox23Resource1"></asp:TextBox><br /><br />
                        <asp:TextBox ID="TextBox27" runat="server" Width="50px" meta:resourcekey="TextBox27Resource1"></asp:TextBox><br /><br />
                    </div>
            </div>
            <div style="width:24%; float:left;"><br />
                    <div style="width:49%; float:left;">
                        II-STD<br /><br />
                    </div>
                    <div style="width:49%; float:right;">
                        <asp:TextBox ID="TextBox24" runat="server" Width="50px" meta:resourcekey="TextBox24Resource1"></asp:TextBox><br /><br /><br /><br /><br />
                    </div>
            </div>
            </div> <br />
            <div style="width:100%; float:left;">Term Fees:  </div> <br />
            <div style="width:100%;">
                <div style="width:24%; float:left;">
                    <div style="width:49%; float:left;">
                        Term - I
                    </div>
                    <div style="width:49%; float:right;">
                        <asp:TextBox ID="TextBox36" runat="server" meta:resourcekey="TextBox36Resource1" Width="58px"></asp:TextBox>
                    </div>

                </div>
                 <div style="width:24%; float:left;">
                    <div style="width:49%; float:left;">
                        Term - II
                    </div>
                    <div style="width:49%; float:right;">
                        <asp:TextBox ID="TextBox37" runat="server" meta:resourcekey="TextBox37Resource1" Width="58px"></asp:TextBox>
                    </div>

                </div>
                 <div style="width:24%; float:left;">
                    <div style="width:49%; float:left;">
                        Term - III
                    </div>
                    <div style="width:49%; float:right;">
                        <asp:TextBox ID="TextBox38" runat="server" meta:resourcekey="TextBox38Resource1" Width="58px"></asp:TextBox>
                    </div>

                </div>
                 <div style="width:24%; float:left;">
                    <div style="width:100%; float:left;">
                        <asp:Button ID="Button18" runat="server" Text="Update" Width="59px" onclick="Button18_Click" CssClass="style42" meta:resourcekey="Button18Resource1" />
                    </div>

                </div>
            </div> <br />
            <div style="width:100%; float:left;"><br />
                        <div style="width:49%; float:left;">Will enable on on June and July :</div> <div style="width:50%; float:right;"><asp:Button ID="Button21" runat="server" onclick="Button21_Click" Text="Yearly Change" Width="85px" CssClass="style42" meta:resourcekey="Button21Resource1" /></div> <br /><br />
                         <div style="width:50%; float:right;"><asp:TextBox ID="TextBox29" runat="server" TextMode="Password" meta:resourcekey="TextBox29Resource1"></asp:TextBox>
                             <asp:Button ID="Button20" runat="server" onclick="Button20_Click" Text="Proceed" meta:resourcekey="Button20Resource1" /></div><br /><br />
                        <div style="width:50%; float:right;"><br /></div>

            </div> 
        </div>


    <span class="style39">APPLICATION VERSION UPDATE:</span><br class="style39" />
    </span></span>
    </span>
    <span class="style23"><span class="style26"><span class="style24">
    <br class="style42" />
    </span>
    </span></span>
    <span lang="en-us"><span class="style10"><span class="style43">Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</span></span><span class="style23"><span class="style24"><span class="style26"><span 
        class="style42"><asp:TextBox ID="TextBox30" runat="server" BackColor="Black" 
        BorderStyle="None" CssClass="style38" Font-Bold="True" ForeColor="Yellow" 
        meta:resourcekey="TextBox30Resource1"></asp:TextBox>
    <asp:TextBox ID="TextBox33" runat="server" Visible="False" Width="28px" 
        meta:resourcekey="TextBox33Resource1"></asp:TextBox>
    <asp:TextBox ID="TextBox34" runat="server" Visible="False" Width="28px" 
        meta:resourcekey="TextBox34Resource1"></asp:TextBox>
    <asp:TextBox ID="TextBox35" runat="server" Visible="False" Width="28px" 
        meta:resourcekey="TextBox35Resource1"></asp:TextBox>
    </span>
    <br class="style42" />
    </span></span>
    </span><span class="style10"><span class="style43">Version&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</span></span><span class="style26"><span class="style24"><span class="style23"><span 
        class="style42"><asp:TextBox 
        ID="TextBox31" runat="server" CssClass="style38" 
        meta:resourcekey="TextBox31Resource1"></asp:TextBox>
    <asp:Button ID="Button24" runat="server" onclick="Button24_Click" 
        Text="Get Version" Width="90px" meta:resourcekey="Button24Resource1" />
    </span>
    <br class="style42" />
    </span></span>
    </span><span class="style41"><span class="style10"><span class="style44">Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    :</span></span></span><span class="style23"><span class="style24"><span class="style26"><span class="style4" lang="en-us"><span 
        class="style42"><asp:DropDownList ID="DropDownList1" runat="server" 
        Height="30px" Width="152px" meta:resourcekey="DropDownList1Resource1">
        <asp:ListItem meta:resourcekey="ListItemResource1">New Features</asp:ListItem>
        <asp:ListItem meta:resourcekey="ListItemResource2">Defect</asp:ListItem>
    </asp:DropDownList>
    </span>
    </span>
    <br class="style42" />
    </span></span>
    </span><span class="style10"><span class="style43">Description&nbsp;&nbsp;&nbsp; :</span></span></span><span class="style23"><span class="style24"><span class="style26"><span 
        class="style42"><asp:TextBox ID="TextBox32" 
        runat="server" CssClass="style38" Width="343px" 
        meta:resourcekey="TextBox32Resource1"></asp:TextBox>
    </span>
    <span lang="en-us" class="style42">&nbsp;&nbsp;&nbsp; </span>
    <span class="style42">
    <asp:Button ID="Button22" runat="server" onclick="Button22_Click" 
        Text="Add Data" Width="99px" BackColor="Aqua" BorderColor="Yellow" 
        CssClass="style32" Height="33px" meta:resourcekey="Button22Resource1" />
    </span>
    <br class="style42" />
    <br class="style42" />
    <br class="style42" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="4" CellSpacing="4" DataSourceID="SqlDataSource1" 
        HorizontalAlign="Center" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="947px" 
        CssClass="style42" meta:resourcekey="GridView1Resource1">
        <RowStyle BackColor="White" ForeColor="#330099" />
        <Columns>
            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" 
                meta:resourcekey="BoundFieldResource1">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="version" HeaderText="Version" 
                SortExpression="version" meta:resourcekey="BoundFieldResource2">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="type" HeaderText="Change Type" SortExpression="type" 
                meta:resourcekey="BoundFieldResource3">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="description" HeaderText="Description" 
                SortExpression="description" meta:resourcekey="BoundFieldResource4">
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <AlternatingRowStyle BackColor="#CC3300" BorderColor="#FF3300" 
            BorderStyle="Solid" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
        SelectCommand="SELECT * FROM [app_details] ORDER BY [date] DESC">
    </asp:SqlDataSource>
    <span class="style42">
    <asp:Button ID="Button23" runat="server" onclick="Button23_Click" 
        Text="Test Page" meta:resourcekey="Button23Resource1" />
    </span>
    <br class="style42" />
    <br class="style42" />
    </span></span>
    </form>
</body>
</html>
