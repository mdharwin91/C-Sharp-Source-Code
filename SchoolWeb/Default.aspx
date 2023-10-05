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
            width: 73%;
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
            width:73%;
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
            width: 66%;
            background-color: Transparent;
        }
        </style>
   

</head>
<!--<body background="Img\speed-internet-technology-background.jpg">-->
<body>
    <div>
            <div class="Sec-header">
                <div>
                    <div class="Sec-logo"><img src="Img\emblem_png.png" class="style_img" /></div>
                    <div class="Sec-title"><h1>VASANTHAM NURSERY AND PRIMARY SCHOOL</h1></div>
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
    <br /><br />
    
    <form id="form1" runat="server" style="width:100%;">
        <br />
    <br />
    <br /><br />
    <br /><br />
    
    <!-- Entire Page-->
    <div style="width:100%; height:500px;">
        <!-- Left Page-->
        <div style="width:49.9%;float:left;">
            <asp:Image ID="Image1" runat="server" Height="40%" Width="40%" style="margin-left:20%; margin-top:15%; margin-right:15%;" ImageUrl="~/Img/School-Intro-WO-Audio-unscreen.gif" />
        </div>
        <!-- Right Page-->
        <div style="width:35%; float:right; margin-top:8%; border-style:solid; border-color:black; border-radius:25px; margin-right:10%;">
            <!-- Right Page Line 1 -->
           <div style="margin-top:10%;">
                <div style="width:25%; float:left; margin-left:15%;" class="labelClass">Login Here...</div>
               <div style="width:25%; float:right; margin-right:15%;"><asp:TextBox ID="TextBox4" runat="server" class="textBoxClass" ></asp:TextBox></div>
           </div> <br /> <br /><br />
           <!-- Right Page Line 2 -->
           <div>
                <div style="width:25%; float:left; margin-left:15%;" class="labelClass">Username</div>
               <div style="width:25%; float:right; margin-right:15%;"><asp:TextBox ID="TextBox1" runat="server" class="textBoxClass"></asp:TextBox></div>
    
            
           </div> <br /> <br /><br />
            <!-- Right Page Line 3 -->
           <div>
                <div style="width:25%; float:left; margin-left:15%;" class="labelClass">Password</div>
               <div style="width:25%; float:right; margin-right:15%;"><asp:TextBox ID="TextBox2" runat="server" TextMode="Password" class="textBoxClass"></asp:TextBox></div>
           </div> <br /> <br /><br />
            <!-- Right Page Line 4 -->
           <div>
                <div style="width:25%; float:left; margin-left:25%;"><asp:Button ID="Button1" runat="server" Text="Clear" class="buttonClass" Width="120px" OnClick="Button1_Click1"/><asp:TextBox ID="name" runat="server" Visible="False"></asp:TextBox>
                </div>
               <div style="width:25%; float:right; margin-right:15%;"><asp:Button ID="Button2" runat="server" Text="Login" class="buttonClassAdmin" Width="120px" OnClick="Button2_Click"/></div><br /> <br />
           </div> <br /> <br />
        </div>

    </div>
    <div style="width:100%; background-color:black; margin-top:8%; height:30px; color:wheat; font-family:Cambria; font-size:22px;">
        <div style="width:24%; float:left;"> COPYRIGHT © 2023 Vasantham School </div>
        <div style="width:24%; float:left;">Computer Name::<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label> </div>
        <div style="width:24%; float:left;">Local IP : <asp:Label ID="Label3" runat="server"></asp:Label></div>
        <div style="width:24%; float:left;"> Public IP:<asp:Label ID="Label5" runat="server"></asp:Label></div>
    </div>
    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Web_App_Details</asp:LinkButton>
   
      
    
    <marquee class="style17">WELCOME to Vasantham School   WebSite - www.vasanthamschool.co.in </marquee>
  
    </form>
    
    
    </body>
</html>
