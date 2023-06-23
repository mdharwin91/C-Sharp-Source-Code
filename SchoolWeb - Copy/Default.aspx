<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SchoolWeb._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<head runat="server">
<link rel="Stylesheet" type="text/css" href="style.css" />

<link id="Link1" runat="server" rel="shortcut icon" href="~/favicon.ico" type= "image/x-icon" />
<link id="Link2" runat="server" rel="icon" href="~/favicon.ico" type="image/ico" />
<title>Vasantham School</title><script type="text/javascript" language="javascript">
    window.onload = function () {
        noBack();
    }
    function noBack() {
        window.history.forward();
    }
    function windowResize(width, height)
     {
       window.resizeTo(width, height)
     }
</script>
    <style type="text/css">
        
        .style2
        {
            text-align: left;
        }
        .style6
        {
            margin-left: 0px;
            width: 992px;
        }
        .style9
        {
            text-align: left;
            margin-left: 11px;
        }
        .style10
        {
            margin-left: 43px;
            width: 243px;
        }
        .style11
        {
            margin-left: 525px;
        }
        .style12
        {
            height: 3px;
            margin-left: 500px;
            width: 769px;
            font-size:large;
        }
        .style13
        {
            margin-left: 316px;
            margin-right: 13px;
            color: #003366;
            font-family: Cambria;
        }
        .style14
        {
            margin-left: 11px;
        }
        .style15
        {
            margin-left: 20px;
            width: 644px;
        }
        .style16
        {
            margin-left: 21px;
            width: 950px;
            height: 8px;
            color: #003366;
            font-family: Cambria;
        }
        .style17
        {
            margin-bottom: 0px;
            font-size:x-large;
            margin-left: 0px;
            color: #ffd800;
            width:100%;
        }
            

        .style8
        {
            height: 2px;
            margin-bottom: 64px;
            width: 978px;
            text-align: left;
        }
        #form1
        {
            width: 950px;
        }
        .style22
        {
            margin-left: 0px;
            width: 100%;
            text-align: left;
            height: 23px;
        }
        #theprogress
        {
            height: 12px;
        }
        .style24
        {
            height: 44px;
            width: 977px;
        }
        .style28
        {
            height: 29px;
            width: 948px;
            color: #003366;
            font-family: Cambria;
        }
        .style30
        {
            margin-left: 12px;
            width: 279px;
        }
        .style31
        {
            margin-left: 0px;
            width:100%;
        }
        .style32
        {
            height: 1px;
            width: 978px;
            color: #003366;
            font-family: Cambria;
            margin-left: 0px;
        }
        .style33
        {
            height: 4px;
            width: 977px;
            margin-left: 0px;
        }
        .style34
        {
            color: #003366;
            width:100%;
        }
        .style35
        {
            margin-left: 525px;
            color: #003366;
            font-family: Cambria;
        }
        .style36
        {
            color: #003366;
            font-family: Cambria;
        }
        .style37
        {
            font-family: Cambria;
            width:100%;
        }
        .style38
        {
            color: #00FFFF;
        }
        .style39
        {
            width: 136%;
            background-color: Transparent;
        }
        .auto-style1 {
            color: #FF0000;
            font-family: Cambria;
        }
        </style>
   

</head>
<body background="Img\speed-internet-technology-background.jpg">

    <div>
            <div class="Sec-header">
                <div>
                    <div class="Sec-logo"><img src="Img\emblem_png.png" class="style_img" /></div>
                    <div class="Sec-title"><h1>VASANTHAM</h1><br/><h3>NURSERY AND PRIMARY SCHOOL</h3></div>
                    <div class="Sec-logo2"><img src="Img\UNTITLED_001_1421299653802.jpg" class="style_img" /></div>
                </div>
                <div class="Sec-titlebar">
                    <div style="width:25%; float:right; font-size:large;"><a href="<%= ResolveUrl("Studentview.aspx") %>"><li style="color:red;">Student Details</li></a></div>
                    <div style="width:10%; float:right; font-size:large;"><a href="<%= ResolveUrl("UnPaid.aspx") %>"><li style="color:red;">Unpaid Details</li></a></div>
                    <div style="width:10%; float:right; font-size:large;"><a href="<%= ResolveUrl("paiddetails.aspx") %>"><li style="color:red;">Paid Details</li></a></div>
                    <div style="width:10%; float:right; font-size:large;"><a href="<%= ResolveUrl("staff.aspx")%>"><li style="color:red;">Staff</li></a></div>
                    <div style="width:10%; float:right; font-size:large;"><a href="<%= ResolveUrl("default.aspx")%>"><li style="color:aqua;">Login</li></a></div>
                </div>
            </div>
        </div>

    <br />
    <br />
    <br /><br /><br />
    <br />
    <br /><br /><br />
    <br />
    <br /><br />
    <br /><br />
    
    <form id="form1" runat="server" style="padding: 0px; margin-right: 0px; margin-top: -13px; margin-bottom: 0px;"  
    class="style33">
    
    <div>
    
    <div class="style8" style="background-color:Transparent; margin-left: 0px;" 
            style="border-style: none; border-width: medium; border-color: #FF0000; padding: inherit; margin: auto; background-color: #FFFFFF; font-family: 'TIMes New Roman', Times, serif; font-size: 40px; font-weight: bolder; font-variant: normal; color: #00FF00; text-transform: capitalize;">
        <span lang="en-us"> 
            <asp:Panel ID="Panel2" runat="server">
        </asp:Panel>
        <br />
            </span>
        </div>
    
    </div>
    <p class="style36">
        </p>
    <h6 style="margin-bottom: 0px; margin-top: 0px;" class="style28">
        </h6>
    <h6 style="margin-bottom: 0px; margin-top: 0px;" class="style24">
        <span lang="en-us" 
            
            
            style="font-size: large; " class="auto-style1">
        Date</span><span lang="en-us" 
            
            
            style="font-size: large; " class="style36">: </span>
            <span class="style34"><span class="style37">
            <asp:TextBox ID="TextBox4" runat="server" BackColor="Transparent" 
                BorderStyle="None" ForeColor="White" ontextchanged="TextBox4_TextChanged" 
                Width="157px" Font-Bold="True" Font-Size="Large" 
            Font-Names="Cambria Math" style="font-family: 'Cambria Math'" 
            Height="21px" CssClass="style38"></asp:TextBox>
        </span></span>
    </h6>
        <p class="style32">
            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
    
            <asp:Image ID="Image1" runat="server" Height="131px" Width="253px" 
                ImageUrl="~/Img/School-Intro-WO-Audio-unscreen.gif" />
    </p>
    <span lang="en-us" class="style36"> </span>
    <div class="style12">
        <asp:Panel ID="Panel1" runat="server" BackColor="#00CC00" CssClass="style13" 
            Height="200px" Width="350px" BorderStyle="Inset" 
            BackImageUrl="~/Img/abstract-lines-square.jpg" BorderColor="Lime " 
            EnableTheming="True" ForeColor="White">
            <p class="style10">
                <span lang="en-us" 
                    style="background-image: url('file:///C:/Users/DHARWIN/Documents/Visual Studio 2008/Projects/SchoolWeb/SchoolWeb/Img/login-page-animation.gif')">Login to continue ...</span></p>
            <p class="style30">
                &nbsp;</p>
            <p class="style30">
                <span lang="en-us">Profile :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="login" 
                    Text="Teachers" />
                <span lang="en-us">&nbsp;&nbsp;&nbsp; </span>
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="login" 
                    Text="Admin" />
            </p>
            <p class="style30">
                &nbsp;</p>
            <p class="style9">
                User Name<span lang="en-us"> </span><span lang="en-us"> </span>
                <asp:TextBox ID="username" runat="server"></asp:TextBox>
                <span lang="en-us">
                <asp:TextBox ID="name" runat="server" BackColor="Transparent" Visible="False" 
                    Width="71px"></asp:TextBox>
                 </span>
            </p>
            <p class="style9">
                &nbsp;</p>
            <div class="style2">
                <p class="style14">
                    Password <span lang="en-us"> &nbsp; </span>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:TextBox ID="usercode" runat="server" BackColor="Transparent" 
                        Visible="False"></asp:TextBox>
                </p>
                <p class="style14">
                    &nbsp;</p>
                <p class="style14">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="33px" 
                        ImageUrl="~/Img/login-button-blue-i8-removebg-preview.png" 
                        onclick="ImageButton1_Click" Width="115px" />
                </p>
                <p class="style14">
                    </p>
            </div>
        </asp:Panel>
        <span class="style34"><span class="style37">
        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" 
                Visible="False" />
        </span></span>
    </div>
    
        <p class="style35">
            <asp:Button ID="Button9" runat="server" Font-Bold="True" Font-Size="Large" 
                Height="28px" onclick="Button9_Click" Text="Staff Login" Width="107px" 
                Visible="False" />
            <asp:Label ID="Label6" runat="server"></asp:Label>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Student Details" 
            Width="110px" Height="40px" Font-Bold="True" Font-Size="Small" 
                Visible="False" />
    <asp:Button 
        ID="Button3" runat="server" onclick="Button3_Click" Text="Half Billed" 
            Width="110px" Height="40px" Font-Bold="True" Font-Size="Medium" 
                Visible="False" />
    </p>
    <p class="style35">
        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
        Text="Daily Details" Height="40px" Width="120px" Font-Bold="True" 
            Font-Size="Medium" Visible="False" />
    <asp:Button 
        ID="Button4" runat="server" onclick="Button4_Click" Text="Bill" Height="40px" 
            Width="110px" Font-Bold="True" Font-Size="Larger" Visible="False" 
            BorderStyle="Ridge" />
    
        <asp:Button ID="Button12" runat="server" onclick="Button12_Click" 
            Text="Sending IP" Visible="False" />
        </p>
    <p class="style11">
        <span lang="en-us">
        <span class="style34"><span class="style37">
        <asp:ImageButton ID="ImageButton2" runat="server" Height="37px" 
            ImageUrl="~/Img/login-button-png-4.jpg" onclick="ImageButton2_Click" 
            Width="106px" Visible="False" />
        </span></span></span></p>
    <p class="style15">
        &nbsp;</p>
    <p class="style15">
        &nbsp;</p>
    <p class="style15">
        &nbsp;</p>
    <p class="style15">
        &nbsp;</p>
    <p class="style15">
        &nbsp;</p>
            <p class="style15">
                &nbsp;</p>
            <p class="style15">
                &nbsp;</p>
            <p class="style15">
                &nbsp;</p>
            <p class="style15">
                &nbsp;</p>
            <p class="style15">
                &nbsp;</p>
            <p class="style15">
                &nbsp;</p>
            <p class="style15">
                &nbsp;</p>
            <p class="style15">
                &nbsp;</p>
            <p class="style15">
                <span lang="en-us"> 
                <span class="style34"><span class="style37"> 
        <asp:Button ID="Button6" 
            runat="server" onclick="Button6_Click" 
        Text="Staff Attendance" Width="112px" Visible="False" />
        
        </span></span>
        </span>
        <span class="style34"><span class="style37">
        <asp:Button ID="Button8" runat="server" onclick="Button8_Click" 
            Text="Paid Bill Details" CssClass="style6" Width="108px" Visible="False" />
        </span></span>
        <span lang="en-us"><span class="style34"><span class="style37"><asp:Button 
            ID="Button13" runat="server" onclick="Button13_Click" Text="Student Details" 
                    Visible="False" />
</span></span></span><span class="style36"><asp:LinkButton ID="LinkButton1" runat="server" 
                    onclick="LinkButton1_Click" Visible="False">Un_Paid</asp:LinkButton>
        </span>
    </p>
    <p class="style16">
        <asp:Button ID="Button7" runat="server" Font-Bold="True" Font-Size="Large" 
            onclick="Button7_Click" Text="Admin Only" Width="125px" 
            BorderStyle="None" BackColor="Transparent" ForeColor="White" 
            style="margin-left: 0px" Visible="False" />
        <asp:Button ID="Button10" runat="server" onclick="Button10_Click" Text="test" 
            Visible="False" />
    </p>
    <p class="style31">
        </p>
    <div class="style39">
    <p class="style31">
        &nbsp;</p>
                <p class="style31">
                    &nbsp;</p>
                <p class="style31">
                    &nbsp;</p>
                <p class="style31">
                    &nbsp;</p>
                <p class="style31">
                    <span lang="en-us" class="style37" >
    <marquee class="style17">WELCOME to Vasantham School   WebSite - www.vasanthamschool.co.in </marquee></span></p>
    <p class="style22" 
        style="background-color: #000000; color: #FFFFFF; ">
        <span style="color: rgb(164, 164, 167); font-family: arial; font-size: 11px; font-style: normal; font-weight: 400; letter-spacing: normal;  text-align: left; text-indent: 0px; text-transform: uppercase; white-space: normal;  word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 0, 0);  display: inline !important; float: none;">        
        <span class="style34"><span class="style37">        
        <asp:Button ID="Button11" runat="server" BackColor="Transparent" ForeColor="White" 
            Height="16px" Text="COPYRIGHT © 2021 Vasantham School" 
            Width="225px" BorderStyle="None" Font-Names="Arial Narrow" 
            onclick="Button11_Click" style="margin-top: 4px" />
        </span></span></span>
        <span 
            class="style34"><span class="style37"><span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>Computer Name::<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
 
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>Local IP :
        <asp:Label ID="Label3" runat="server"></asp:Label>
     
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>Public IP:<asp:Label ID="Label5" runat="server"></asp:Label>
        </span></span>
    </p>
    <span class="style36">
    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Web_App_Details</asp:LinkButton>
    </span>
    </div>
    </form>
    
    
    </body>
</html>
