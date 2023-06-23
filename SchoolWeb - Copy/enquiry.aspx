<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="enquiry.aspx.cs" Inherits="SchoolWeb.enquiry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="Stylesheet" type="text/css" href="style.css" />
    <title></title>
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
                    <div style="width:20%; float:left; color:forestgreen; font-size:x-large;">User : <asp:Label ID="Label2" runat="server"></asp:Label></div>
                    <div style="width:10%; float:right; font-size:x-large;"> <a href="<%= ResolveUrl("default.aspx") %>"><li style="color:red;">Logout</li></a></div>
                    <div style="width:15%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("dailydet.aspx") + "?val=" + Label2.Text %>"><li style="color:red;">Daily Details</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("bill_2.aspx") + "?val=" + Label6.Text +"&val1="+ Label2.Text%>"><li style="color:red;">Bill</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("first.aspx") + "?val=" + Label2.Text %>"><li style="color:red;">Students</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("enquiry.aspx") + "?val=" + Label2.Text %>"><li style="color:aqua;">Enquiry</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("CommonTab.aspx") + "?val=" + Label2.Text %>"><li style="color:red;">Common</li></a></div>
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
<br />
        <div style="width:100%;">
            <div style="width:25%; float:left; background-color:aquamarine; border-style:solid;"><br />
                <div style="width:25%; float:left;">Enquiry ID</div><div><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></div> <br /> <br /> 
                <div style="width:25%; float:left;">Name</div><div><asp:TextBox ID="TextBox2" runat="server" TabIndex="1"></asp:TextBox></div> <br /> <br /> 
                <div style="width:25%; float:left;">Father Name</div><div><asp:TextBox ID="TextBox3" runat="server" TabIndex="2"></asp:TextBox></div> <br /> <br /> 
                <div style="width:25%; float:left;">Standard</div><div><asp:DropDownList ID="DropDownList1" runat="server" TabIndex="3">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem Value="L.K.G">L.K.G</asp:ListItem>
                <asp:ListItem>U.K.G</asp:ListItem>
                <asp:ListItem>I</asp:ListItem>
                <asp:ListItem>II</asp:ListItem>
                <asp:ListItem>III</asp:ListItem>
                <asp:ListItem>IV</asp:ListItem>
                <asp:ListItem>V</asp:ListItem>
                </asp:DropDownList></div> <br /> <br /> 
                <div style="width:25%; float:left;">Village</div><div><asp:TextBox ID="TextBox5" runat="server" TabIndex="4"></asp:TextBox></div> <br /> <br /> 
                <div style="width:25%; float:left;">Mobile No</div><div><asp:TextBox ID="TextBox6" runat="server" TabIndex="5"></asp:TextBox></div> <br /> <br /> 
                <div style="width:25%; float:left;">Status</div><div><asp:DropDownList ID="DropDownList2" runat="server" TabIndex="6">
                <asp:ListItem>Enquired</asp:ListItem>
                <asp:ListItem>Approved</asp:ListItem>
                <asp:ListItem>Rejected</asp:ListItem>
                </asp:DropDownList></div> <br /> <br /> <br /> 
                <div style="width:25%; float:left; margin-left:50px;"><asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" TabIndex="7" /></div><div style="width:25%; float:left;"><asp:Button ID="Button2" runat="server" Text="Clear" OnClick="Button2_Click" TabIndex="8" /></div>
                <asp:Button ID="Button3" runat="server" Text="Button" Visible="false" OnClick="Button3_Click" /> <br /> <br />
                <div></div>
                

            </div>
            <div style="width:25%; float:left; background-color:burlywood; border-style:solid;"> <br />
                <div style="width:25%; float:left;">Enquiry ID</div><div><asp:TextBox ID="TextBox4" runat="server" Width="85px"></asp:TextBox><asp:Button ID="Button4" runat="server" Text="Get" Width="85px" OnClick="Button4_Click" /></div> <br />
                <div style="width:25%; float:left;">Name</div><div><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox> </div><br />
                <div style="width:25%; float:left;">Father Name</div><div><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></div> <br />
                <div style="width:25%; float:left;">Standard</div><div><asp:TextBox ID="TextBox9" runat="server"></asp:TextBox><asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                <asp:ListItem>L.K.G</asp:ListItem>
                <asp:ListItem>U.K.G</asp:ListItem>
                <asp:ListItem>I</asp:ListItem>
                <asp:ListItem>II</asp:ListItem>
                <asp:ListItem>III</asp:ListItem>
                <asp:ListItem>IV</asp:ListItem>
                <asp:ListItem>V</asp:ListItem>
                </asp:DropDownList></div> <br />
                <div style="width:25%; float:left;">Villages</div><div><asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></div> <br />
                <div style="width:25%; float:left;">Mobile</div><div><asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></div> <br />
                <div style="width:25%; float:left;">Ad Num</div><div><asp:TextBox ID="TextBox13" runat="server"></asp:TextBox></div> <br />
                <div style="width:25%; float:left;">EMIS</div><div><asp:TextBox ID="TextBox14" runat="server"></asp:TextBox></div> <br />
                <div style="width:25%; float:left;">Birth Date</div><div><asp:TextBox ID="TextBox17" runat="server" Width="80px"></asp:TextBox><asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource1" DataTextField="year" DataValueField="yr_val"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" SelectCommand="SELECT * FROM [d_year]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource2" DataTextField="month" DataValueField="mon_val"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" SelectCommand="SELECT * FROM [d_mon]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource3" DataTextField="day" DataValueField="day_val"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" SelectCommand="SELECT * FROM [d_day]"></asp:SqlDataSource>
                </div> <br />
                <div style="width:25%; float:left;">Free</div><div><asp:TextBox ID="TextBox15" runat="server"></asp:TextBox><asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem Value="RTE/FC">Yes</asp:ListItem>
                </asp:DropDownList></div> <br />
                <div style="width:25%; float:left;">Status</div><div><asp:TextBox ID="TextBox12" runat="server">Admitted</asp:TextBox><asp:TextBox ID="TextBox16" runat="server" Visible="false"></asp:TextBox></div> <br />
                
                <div style="float:left;"><asp:Button ID="Button5" runat="server" Text="Add to Students" OnClick="Button5_Click" /></div><div style="float:right; margin-right:100px;"><asp:Button ID="Button6" runat="server" Text="Clear" OnClick="Button6_Click" /></div> <br /> <br /> 
            </div>

            <div>
                <center><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="eq_id" DataSourceID="Enquiry_Table" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="5" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="eq_id" HeaderText="Enquiry ID" ReadOnly="True" SortExpression="eq_id" />
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                        <asp:BoundField DataField="father_name" HeaderText="Father Name" SortExpression="father_name" />
                        <asp:BoundField DataField="std" HeaderText="STD" SortExpression="std" />
                        <asp:BoundField DataField="village" HeaderText="Village" SortExpression="village" />
                        <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
                        <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView></center>
                <asp:SqlDataSource ID="Enquiry_Table" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" SelectCommand="SELECT * FROM [enquiry] ORDER BY [eq_id] DESC"></asp:SqlDataSource>
            </div>

        </div>

          
        <br />
<br />
<br />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label><asp:Label ID="Label6" runat="server" Text="Label" Visible="false"></asp:Label>
    </form>
</body>
</html>
