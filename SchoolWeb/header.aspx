<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="header.aspx.cs" Inherits="SchoolWeb.header" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link rel="Stylesheet" type="text/css" href="style.css" />
    <title>Untitled Page</title>
    </head>
<body>
    <form id="form1" runat="server">
    <div class="header">
        <div class="logo">
            <img src="emblem_png.png" class="style_img" /> 
        </div>
        <div class="logo2">
            <img src="UNTITLED_001_1421299653802.jpg" class="style_img" /> 
            </div>
        <div class="title">
            <div class="schoolname"><h1>VASANTHAM NURSERY AND PRIMARY SCHOOL</h1>
            </div>
            <ul class="navigation">
            <a href="<%= ResolveUrl("CommonTab.aspx") + "?val=" + Label2.Text %>"><li>Common</li></a>
            <a href="<%= ResolveUrl("first.aspx") + "?val=" + Label2.Text %>"><li>Students</li></a>
            <a href="<%= ResolveUrl("bill_2.aspx") + "?val=" + Label3.Text +"&val1="+ Label2.Text%>"><li>Bill</li></a>
            <a href="<%= ResolveUrl("dailydet.aspx") + "?val=" + Label2.Text %>"><li>Daily Details</li></a>
            <a href="<%= ResolveUrl("default.aspx") %>"><li>Logout</li></a>
            
            </ul>
            
            <div class="username">
                  User : <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </div>  
            
               
        </div>
        
        
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </p>
    </form>
</body>
</html>
