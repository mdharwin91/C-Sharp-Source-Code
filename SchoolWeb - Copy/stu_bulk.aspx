<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stu_bulk.aspx.cs" Inherits="SchoolWeb.stu_bulk" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link rel="Stylesheet" type="text/css" href="style.css" />
    <title>Student BU</title>
    <style type="text/css">
        .style3
        {
            font-family: "Bookman Old Style";
        }
    </style>
</head>
<body>


    <form id="form1" runat="server"  class="style18">
    
    <%--<div class="header">
        <div class="logo">
            <img src="Img/emblem_png.png" class="style_img" /> 
        </div>
        <div class="logo2">
            <img src="Img/UNTITLED_001_1421299653802.jpg" class="style_img" /> 
            </div>
        <div class="title">
            <div class="schoolname"><h1>VASANTHAM</h1><br/><h3>NURSERY AND PRIMARY SCHOOL</h3>
            </div>
            <ul class="navigation">
            <a href="<%= ResolveUrl("CommonTab.aspx") + "?val=" + Label1.Text %>"><li>Common</li></a>
            <a href="<%= ResolveUrl("first.aspx") + "?val=" + Label1.Text %>"><li>Students</li></a>
            <a href="<%= ResolveUrl("bill.aspx") + "?val=" + Label3.Text +"&val1="+ Label1.Text%>"><li>Bill</li></a>
            <a href="<%= ResolveUrl("dailydet.aspx") + "?val=" + Label1.Text %>"><li>Daily Details</li></a>
            <a href="<%= ResolveUrl("default.aspx") %>"><li>Logout</li>
                </a>
            
            </ul>
            
            <div class="username">
                  User : <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                  
            </div>  
            
               
        </div>
        
        
    </div>--%>
        
        <div>
            <div class="Sec-header">
                <div>
                    <div class="Sec-logo"><img src="Img/emblem_png.png" class="style_img" /></div>
                    <div class="Sec-title"><h1>VASANTHAM</h1><br/><h3>NURSERY AND PRIMARY SCHOOL</h3></div>
                    <div class="Sec-logo2"><img src="Img/UNTITLED_001_1421299653802.jpg" class="style_img" /></div>
                </div>
                <div class="Sec-titlebar">
                    <div style="width:20%; float:left; color:forestgreen; font-size:x-large;">User : <asp:Label ID="Label1" runat="server"></asp:Label></div>
                    <div style="width:10%; float:right; font-size:x-large;"> <a href="<%= ResolveUrl("default.aspx") %>"><li style="color:red;">Logout</li></a></div>
                    <div style="width:15%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("dailydet.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Daily Details</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("bill_2.aspx") + "?val=" + Label3.Text +"&val1="+ Label1.Text%>"><li style="color:red;">Bill</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("first.aspx") + "?val=" + Label1.Text %>"><li style="color:Aqua;">Students</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("enquiry.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Enquiry</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("CommonTab.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Common</li></a></div>
                </div>
            </div>
        </div>
    <br /><br /><br /><br /><br />
    <br />
    <br />
    <br />
    <br />
<br />

    <span class="style3" lang="en-us"></span><span class="style3">
    
    </span>
    <br class="style3" />
    <br class="style3" />
    <span lang="en-us"><span class="style3">Add the file here :
&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:CheckBox 
    ID="CheckBox1" runat="server" Text="Uncheck to skip adding in Bill Table" />
    <asp:TextBox ID="TextBox1" runat="server" Visible="False" Width="59px"></asp:TextBox>
    <asp:TextBox ID="TextBox11" runat="server" Visible="False" Width="33px"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" Visible="False" Width="59px"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" Visible="False" Width="59px"></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server" Visible="False" Width="59px"></asp:TextBox>
    <asp:TextBox ID="TextBox5" runat="server" Visible="False" Width="59px"></asp:TextBox>
    <asp:TextBox ID="TextBox6" runat="server" Visible="False" Width="59px"></asp:TextBox>
    <asp:TextBox ID="TextBox7" runat="server" Visible="False" Width="59px"></asp:TextBox>
    <asp:TextBox ID="TextBox8" runat="server" Visible="False" Width="59px"></asp:TextBox>
    <asp:TextBox ID="TextBox9" runat="server" Visible="False" Width="59px"></asp:TextBox>
    <asp:TextBox ID="TextBox10" runat="server" Visible="False" Width="59px"></asp:TextBox>
    </span>
    <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
    <br class="style3" />
    <br class="style3" />
    <span class="style3">Message :
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </span>
    <br class="style3" />
    <br class="style3" />
    <span class="style3">
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="View the data" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        Text="Bulk Upload" Visible="False" />
        <asp:Button ID="Button3" runat="server" Text="UPLOAD" 
        onclick="Button3_Click" CausesValidation="False" EnableEventValidation="false" />
        
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Clear" />
    </span>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sample_File</asp:LinkButton>
    <br class="style3" />
    <br class="style3" />
    
    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CellSpacing="2" HorizontalAlign="Center" Width="770px" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    </span>
    </form>
</body>
</html>
