<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stafflogindata.aspx.cs" Inherits="SchoolWeb.stafflogindata" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link rel="Stylesheet" type="text/css" href="style.css" />
    <title>Staff Data</title><script type="text/javascript" language="javascript">
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
        .style20
        {
            text-decoration: underline;
            font-size: medium;
            font-weight: bold;
        }
        .style22
        {
            text-decoration: underline;
        }
        .style23
        {
            font-size: medium;
            font-weight: bold;
        }
        .style24
        {
            color: #FFFF00;
            font-weight: bold;
        }
        .style27
        {
            color: #FFFF00;
        }
        .style28
        {
            color: #FFFFFF;
        }
        </style>
<script language="javascript" type="text/javascript">
// <!CDATA[

function File1_onclick() {

}

// ]]>
</script>
</head>
<body bgcolor="#000000">
    <div>
            <div class="Sec-header">
                <div>
                    <div class="Sec-logo"><img src="Img/emblem_png.png" class="style_img" /></div>
                    <div class="Sec-title"><h1>VASANTHAM NURSERY AND PRIMARY SCHOOL</h1></div>
                    <div class="Sec-logo2"><img src="Img/UNTITLED_001_1421299653802.jpg" class="style_img" /></div>
                </div>
                <div class="Sec-titlebar">
                    <div style="width:20%; float:left; color:forestgreen; font-size:x-large;">User : <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("default.aspx") %>"><li style="color:red;">Logout</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("adminactivities.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Admin</li></a></div>
                   <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("oldbill.aspx") + "?val=" +  Label1.Text%>"><li style="color:red;">Bill Details</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("stafflogindata.aspx") + "?val=" + Label1.Text %>"><li style="color:aqua;">Staff Data</li></a></div>
                    <div style="width:15%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("classchange.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Class Change</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("CommonTab.aspx") + "?val=" + Label1.Text %>"><li style="color:navy;">Common</li></a></div>
                </div>
            </div>
        </div>




    <form id="form1" runat="server" style="color: #FFFFFF"><br /><br /><br /><br /><br /><br /><br /><br />
        <div style="width:50%; float:left">
            <!--L.Line 1 --><div style="width:100%; color:yellow"  class="labelClass">Staff Login Data:</div><br /><br />
            <!--L.Line 2 --><div style="width:100%;">
                <div style="width:30%; float:left;" class="labelClass">Staff ID:</div>
                <div style="width:33%; float:left;"><asp:TextBox ID="TextBox3" runat="server" class="textBoxClass"></asp:TextBox></div>
                <div style="width:33%; float:left;"><asp:Button ID="Button5" runat="server" Text="Get Details" OnClick="Button5_Click" class="buttonClassAdmin"/></div>
            </div><br /><br /><br />
            <!--L.Line 3 -->
            <div style="width:100%;">
                <div style="width:30%; float:left;" class="labelClass">From:</div>
                <div style="width:33%; float:left;"><asp:TextBox ID="TextBox1" runat="server" TextMode="Date" class="textBoxClass"></asp:TextBox></div>
                <div style="width:33%; float:left;"><asp:Button ID="Button6" runat="server" Text="Current Month" OnClick="Button6_Click" class="buttonClassAdmin" Width="175px"/></div>
            </div><br /><br /><br />

            <!--L.Line 4 -->
             <div style="width:100%;">
                <div style="width:30%; float:left;" class="labelClass">To:</div>
                <div style="width:33%; float:left;"><asp:TextBox ID="TextBox2" runat="server" TextMode="Date" class="textBoxClass"> </asp:TextBox></div>
                <div style="width:33%; float:left;"><asp:Button ID="Button7" runat="server" Text="Previous Month" OnClick="Button7_Click" class="buttonClassAdmin" Width="200px"/></div>
            </div><br /><br /><br />

            <!--L.Line 5 -->
             <div style="width:100%;">
                <div style="width:30%; float:left;" class="labelClass">Working days:</div>
                <div style="width:33%; float:left;"><asp:TextBox ID="TextBox13" runat="server" class="textBoxClass"></asp:TextBox></div>
                <div style="width:33%; float:left;"></div>
            </div><br /><br /><br />
            <!--L.Line 6 --><div style="width:100%; color:yellow"  class="labelClass">Adding Photo:</div><br /><br />
            <!--L.Line 7 -->
             <div style="width:100%;">
                <div style="width:30%; float:left;"> <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" class="buttonClassAdmin"/></div>
                <div style="width:33%; float:left;"><asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" class="buttonClassAdmin"/></div>
                <div style="width:33%; float:left;"><asp:Button ID="Button17" runat="server" onclick="Button17_Click" Text="Click here to ADD Photo" class="buttonClassAdmin" Width="250px"/></div>
            </div><br /><br /><br />
            <!--L.Line 8-->
             <div style="width:100%;">
                <div style="width:63%; float:left;"  class="labelClass"><asp:FileUpload ID="FileUpload1" runat="server" Height="37px" Width="455px" class="buttonClass"/></div>
                <div style="width:33%; float:left;"><asp:Button ID="Button18" runat="server" onclick="Button18_Click" Text="Upload" class="buttonClassAdmin"/></div>
            </div><br /><br /><br />
            <!--L.Line --><div style="width:100%; color:yellow"  class="labelClass">Adding/Updating Staff Details:</div><br /><br />
            
             <!--L.Line -->
             <div style="width:100%;">
                <div style="width:30%; float:left;" class="labelClass">Staff ID:</div>
                <div style="width:33%; float:left;"><asp:TextBox ID="TextBox5" runat="server" class="textBoxClass"></asp:TextBox></div>
                <div style="width:33%; float:left;"><asp:Button ID="Button20" runat="server" onclick="Button20_Click" Text="Fetch" class="buttonClassAdmin" Height="35px" /></div>
            </div><br /><br /><br />
            <!--L.Line -->
             <div style="width:100%;">
                <div style="width:30%; float:left;" class="labelClass">Name</div>
                <div style="width:33%; float:left;"><asp:TextBox ID="TextBox6" runat="server" class="textBoxClass"></asp:TextBox></div>
                <div style="width:33%; float:left;"><asp:Button ID="Button21" runat="server" onclick="Button21_Click" Text="Add" class="buttonClassAdmin" /></div>
            </div><br /><br /><br />
            <!--L.Line -->
             <div style="width:100%;">
                <div style="width:30%; float:left;" class="labelClass">DOJ</div>
                <div style="width:33%; float:left;"><asp:TextBox ID="TextBox9" runat="server" TextMode="Date" class="textBoxClass"></asp:TextBox></div>
                <div style="width:33%; float:left;"><asp:Button ID="Button22" runat="server" Text="Update" class="buttonClassAdmin"  onclick="Button22_Click" /></div>
            </div><br /><br /><br />
            <!--L.Line -->
             <div style="width:100%;">
                <div style="width:30%; float:left;" class="labelClass">DOL</div>
                <div style="width:33%; float:left;"><asp:TextBox ID="TextBox10" runat="server" TextMode="Date" class="textBoxClass"></asp:TextBox></div>
                <div style="width:33%; float:left;"><asp:Button ID="Button16" runat="server" Text="View Staff Details" Visible="False" class="buttonClassAdmin"/></div>
            </div><br /><br /><br />
            <!--L.Line -->
             <div style="width:100%;">
                <div style="width:30%; float:left;" class="labelClass">UserID</div>
                <div style="width:33%; float:left;"><asp:TextBox ID="TextBox7" runat="server" class="textBoxClass"></asp:TextBox></div>
                <div style="width:33%; float:left;"><asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Back" class="buttonClassAdmin" Visible="False" /></div>
            </div><br /><br /><br />
            <!--L.Line -->
             <div style="width:100%;">
                <div style="width:30%; float:left;" class="labelClass">Password</div>
                <div style="width:33%; float:left;"><asp:TextBox ID="TextBox8" runat="server" class="textBoxClass"></asp:TextBox></div>
                <div style="width:33%; float:left;"><asp:TextBox ID="TextBox11" runat="server" Visible="False" class="buttonClassAdmin"></asp:TextBox></div>
            </div><br /><br /><br />
            <!--L.Line -->
             <div style="width:100%;">
                <div style="width:30%; float:left;" class="labelClass">Status</div>
                <div style="width:33%; float:left;"><asp:TextBox ID="TextBox12" runat="server" class="textBoxClass"></asp:TextBox></div>
                <div style="width:33%; float:left;"></div>
            </div><br /><br /><br />
             <!--L.Line -->
             <div style="width:100%;">
                <div style="width:30%; float:left;" class="labelClass">Profile</div>
                <div style="width:33%; float:left;"><asp:TextBox ID="TextBox4" runat="server" class="textBoxClass"></asp:TextBox></div>
                <div style="width:33%; float:left;"></div>
            </div><br /><br /><br />
            <!--L.Line -->
             <div style="width:100%;">
                <div style="width:30%; float:left;">C1</div>
                <div style="width:33%; float:left;">C2</div>
                <div style="width:33%; float:left;">C3</div>
            </div><br /><br /><br />
            <!--L.Line -->
             <div style="width:100%;">
                <div style="width:30%; float:left;">C1</div>
                <div style="width:33%; float:left;">C2</div>
                <div style="width:33%; float:left;">C3</div>
            </div><br /><br /><br />


        </div>
        <div style="width:49%; float:right">
            <div style="width:30%; float:left;" class="labelClass">Data:</div><br />
             <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center" DataSourceID="Staff_Details" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="224px" Width="764px">
                            <Columns>
                                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                                <asp:BoundField DataField="staff_id" HeaderText="Staff Id" SortExpression="staff_id" />
                                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                                <asp:BoundField DataField="login" HeaderText="Log-In" SortExpression="login" />
                                <asp:BoundField DataField="logout" HeaderText="Log-Out" SortExpression="logout" />
                                <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#333333" />
                            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#487575" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#275353" />
                        </asp:GridView>

        


    <div style="width:49%">Staff Data:
        <div>
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Current" class="labelClass"
                GroupName="Staff_retrive" />         
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         
        <asp:RadioButton ID="RadioButton2" runat="server" Text="All"  class="labelClass"
                GroupName="Staff_retrive" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" runat="server" Text="Get" class="buttonClassAdmin"/>
            </asp:GridView>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="Staff_Det" Width="800px" BorderColor="White" BorderStyle="Solid" CellSpacing="1" DataKeyNames="staff_id">
                <Columns>
                    <asp:BoundField DataField="staff_id" HeaderText="Staff Id" 
                        SortExpression="staff_id" ReadOnly="True" />
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                    <asp:BoundField DataField="dateofjoin" HeaderText="DOJ" 
                        SortExpression="dateofjoin" />
                    <asp:BoundField DataField="dateofleave" HeaderText="DOL" 
                        SortExpression="dateofleave" />
                    <asp:BoundField DataField="userid" HeaderText="Username" 
                        SortExpression="userid" />
                    <asp:BoundField DataField="pwd" HeaderText="Password" SortExpression="pwd" />
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="Staff_Det" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" SelectCommand="SELECT * FROM [staffdet]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="Staff_Details" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
                
                SelectCommand="SELECT * FROM [staffatten] WHERE (([date] &gt;= @date) AND ([date] &lt;= @date2) AND ([staff_id] = @staff_id))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="date" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox2" Name="date2" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox3" Name="staff_id" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
            </div>
    </form>
    </body>
</html>
