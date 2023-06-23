<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CommonTab.aspx.cs" Inherits="SchoolWeb.CommonTab" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link rel="Stylesheet" type="text/css" href="style.css" />
    <title>Teachers Page</title>
    <script type="text/javascript" language="javascript">
    window.onload = function () {
        noBack();
    }
    function noBack() {
        window.history.forward();
    }
</script>
    <style type="text/css">
        .style6
        {
            color: #FFFFFF;
        }
        .style7
        {
            height: 66px;
            width: 977px;
            margin-top: 0px;
            margin-bottom: 0px;
        }
        .style8
        {
            width: 128px;
            height: 3px;
            margin-top: 3px;
            margin-bottom: 0px;
        }
        .style9
        {
            font-size: medium;
        }
        .style10
        {
            color: #FFFFFF;
            font-size: medium;
            height: 9px;
        }
        .style14
        {
            color: #FFFFFF;
            font-size: medium;
            height: 6px;
        }
        .style15
        {
            height: 10px;
        }
        .style16
        {
            font-family: Cambria;
        }
        .style17
        {
            font-size: medium;
            font-family: Cambria;
        }
        .style18
        {
            width: 90%;
            height: 100px;
            line-height: 20px;
        }
        .style20
        {
            float: left;
            font-family: Bauhaus 93;
            color: Green;
            margin-left: 50px;
            width: 20%;
        }
        </style>
</head>
<body style="font-size: 35pt" bgcolor="White">
    <form id="form1" runat="server" class="style7">
    <div class="Sec-header">
    <div>
        <div class="Sec-logo"><img src="Img/emblem_png.png" class="style_img" /></div>
        <div class="Sec-title"><h1>VASANTHAM</h1><br/><h3>NURSERY AND PRIMARY SCHOOL</h3></div>
        <div class="Sec-logo2"><img src="Img/UNTITLED_001_1421299653802.jpg" class="style_img" /></div>
    </div>
        <div class="Sec-titlebar">
            <div style="width:20%; float:left; color:forestgreen; font-size:x-large;">User : <asp:Label ID="Label2" runat="server"></asp:Label></div>
            <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("default.aspx") %>"><li style="color:red;">Logout</li></a></div>
            <div style="width:15%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("dailydet.aspx") + "?val=" + Label2.Text %>"><li style="color:red;">Daily Details</li></a></div>
            <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("bill_2.aspx") + "?val=" + Label16.Text +"&val1="+ Label2.Text%>"><li style="color:red";>Bill</li></a></div>
            <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("first.aspx") + "?val=" + Label2.Text %>"><li style="color:red;">Students</li></a></div>
            <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("enquiry.aspx") + "?val=" + Label2.Text %>"><li style="color:red;">Enquiry</li></a></div>
            <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("CommonTab.aspx") + "?val=" + Label2.Text %>"><li class="tab-selected">Common</li></a></div>
        </div>
        </div>

       <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
    <div class="empty"></div>
    <div  style="width:100%;"> <!-- Body Main-->
    <div style="float:left; width:50%;"><!-- Body Left-->
    <div class="img_div">
        <span class="style9">Date :</span> <asp:Label ID="Label3" runat="server" Font-Size="Medium"></asp:Label>
     <p class="style8">
        <asp:Image ID="Image1" 
            runat="server" Height="200px" Width="160px" />
        </p>
        </div>
        <div class="details">
        <asp:Label ID="Label15" runat="server" Text="Name :" ForeColor="Black"></asp:Label>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Label" ForeColor="Black"></asp:Label>
        <br /><br />
        <asp:Label ID="Label9" runat="server" Text="Staff ID :" ForeColor="Black"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Label" ForeColor="Black" ></asp:Label>
        <br /><br />
        <asp:Label ID="Label1" runat="server" Text="DoJ :" ForeColor="Black"></asp:Label>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Label" ForeColor="Black"></asp:Label>
        </div>
    </div>
    <div style="float:left; width:50%; font-size:large; "><!-- Body Right-->
    
    <br /><br />
    <asp:Button ID="Button9" runat="server" BackColor="Transparent" BorderStyle="None" 
            Text="Click here to change password" onclick="Button9_Click" 
            Font-Underline="True" ForeColor="Blue" /><br />
    <asp:Label ID="Label11" runat="server" Text="UserID  :" Visible="False"></asp:Label> 
    <div style="float:right;"><asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Label" 
            ForeColor="Black" Visible="False"></asp:Label></div>
    <br /><br />
    <asp:Label ID="Label12" runat="server" Text="Old Password    :" ForeColor="Black" 
            Visible="False"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div style="float:right;"><asp:TextBox ID="TextBox1" runat="server" Height="15px" 
            ontextchanged="TextBox1_TextChanged" TextMode="Password" Width="175px" 
            Font-Size="Large" Visible="False"></asp:TextBox></div>
        <asp:TextBox ID="TextBox5" runat="server" BackColor="Lime" Visible="false" BorderStyle="None" Width="50px"></asp:TextBox>
    <br /><br />
    <asp:Label ID="Label13" runat="server" Text="New Password   :" ForeColor="Black"  Visible="False"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div style="float:right;"><asp:TextBox ID="TextBox2" runat="server" Height="15px" TextMode="Password" Width="175px" Font-Size="Large" Visible="False"></asp:TextBox></div>
    <br /><br />
    <asp:Label ID="Label14" runat="server" Text="Confirm New Password :" ForeColor="Black" Visible="False"></asp:Label>
    <div style="float:right;"><asp:TextBox ID="TextBox3" runat="server" Height="15px" TextMode="Password" Width="175px" Font-Size="Large" Visible="False"></asp:TextBox></div>
    <br />
    <br />
    <div>
    <asp:Button ID="Button6" runat="server" Font-Bold="True" 
            Font-Size="Medium" onclick="Button6_Click" Text="Change" Width="160px" 
            CssClass="style16" Visible="False" />
    
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Password Doesn't met the expectations -min 8 Char, 1 Uppercase, 1 Lowercase, 1 Number"
            ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$" 
        ControlToValidate="TextBox2" BorderStyle="Dotted"></asp:RegularExpressionValidator>
    
    </div>
    
    
    </div>
    </div>
    <asp:Label ID="Label16" runat="server" Text="Label" Visible="False"></asp:Label>
    <p class="style15">
        <span class="style16"></span><span lang="en-us" class="style16">
        </span><span class="style6"><span class="style9"> 
        <span class="style16"> 
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span> 
        
            </span>
            <span lang="en-us" class="style16"></span><span class="style16">
        
        
        <span lang="en-us"></span>
<span lang="en-us"> </span>
        <span lang="en-us"> </span>
        
        </span>
        </span>
        </span>
        </p>
        <p class="style14">
            <span class="style16"> 
            </span> 
            <span lang="en-us" class="style16">
            </span> <span class="style16"> 
        <span class="style9"><span lang="en-us" class="style16">
        </span></span><span class="style6"><span class="style9"> 
            <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
        </span>
        </span>
            
            
            

            <span lang="en-us"> </span>
            
            </span>
    </p>
    <p class="style10">
            <span class="style6"><span class="style9"><span lang="en-us" class="style16">
        <span class="style16"><span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span></span>
        </span><span class="style16"> 
            </span> 
        <span lang="en-us" class="style16"> </span> 
            <span class="style16"> 

        
            </span>
        </span>
        </span><span class="style17"></span><span class="style6"><span 
            class="style17">
        </span>
        </span><span class="style6"><span class="style9"><span class="style16">

        
        <asp:Button ID="Button8" runat="server" onclick="Button8_Click" 
            Text="AutoClick" Visible="False" Width="50px" />
            </span>
        </span>
        </span>
    </p>
    </form>
</body>
</html>
