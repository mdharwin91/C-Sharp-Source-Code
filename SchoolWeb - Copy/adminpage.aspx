<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminpage.aspx.cs" Inherits="SchoolWeb.adminpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Admin Page</title>
    <style type="text/css">

        .style8
        {
            text-align: center;
            width: 1620px;
            margin-top: 0px;
        }
        .style10
        {
            font-weight: bold;
        }
        .style18
        {
            height: 104px;
            width: 1479px;
        }
        .style2
        {
            text-align: right;
        }
        .style19
        {
            width: 67px;
            height: 75px;
        }
        </style>
</head>
<body background="login-page-background-images-hd-7.jpg">
    <form id="form1" runat="server">
    <div>
    
    <div class="style8" style="background-color:Transparent" 
            
            
            
            
            
            style="border-style: none; border-width: medium; border-color: #FF0000; padding: inherit; margin: auto; background-color: #FFFFFF; font-family: 'TIMes New Roman', Times, serif; font-size: 40px; font-weight: bolder; font-style: inherit; font-variant: normal; color: #00FF00; text-transform: capitalize;">
        <h1 class="style18" 
            style="font-size: 35px; font-family: Utsaah; color: #FFFFFF;">
            <span class="style2" style="font-family: Algerian; font-size: 100px;"><span lang="en-us"> 
            <img class="style19" src="emblem1_backup.jpg" />&nbsp;</span>VASANTHAM SCHOOL</span></h1>
        <h3 style="color: #FFFFFF">
            1/293 , Main Road, Maruthakulam, Tirunelveli - 627151</h3>
        </div>
    
    </div>
    <p>
        <span class="style10" lang="en-us" style="background-color: #00FF00">ADMIN USE:<asp:Button 
            ID="Button8" runat="server" Text="Button" />
        <asp:Button ID="Button9" runat="server" Text="Button" />
        <asp:Button ID="Button10" runat="server" Text="Button" />
        <asp:Button ID="Button11" runat="server" Text="Button" />
        <asp:Button ID="Button12" runat="server" Text="Button" />
        </span></p>
    <asp:Panel ID="Panel1" runat="server" Height="229px" Width="537px" 
        BorderStyle ="Dotted" Font-Bold="True" Font-Size="Large" ForeColor="White">
        <span lang="en-us">Logged in as : </span>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="38px" onclick="Button1_Click" 
            Text="Class Change" Width="113px" />
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:Button ID="Button2" runat="server" Height="33px" onclick="Button2_Click" 
            Text="Staff Login Data" Width="110px" />
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:Button ID="Button7" runat="server" Height="30px" onclick="Button7_Click" 
            Text="Old Bill Detail" Width="113px" />
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" Height="33px" onclick="Button5_Click" 
            Text="Billed Between" Width="113px" />
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:Button ID="Button6" runat="server" Height="28px" onclick="Button6_Click" 
            Text="Today Bill Details" Width="112px" />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" Height="32px" onclick="Button4_Click" 
            Text="Testing page" Width="144px" />
    </asp:Panel>
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Home" />
    </form>
</body>
</html>
