<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="classchange.aspx.cs" Inherits="SchoolWeb.Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link rel="Stylesheet" type="text/css" href="style.css" />
    <title>Class Change</title><script type="text/javascript" language="javascript">
    window.onload = function () {
        noBack();
    }
    function noBack() {
        window.history.forward();
    }
</script>
    <style type="text/css">

        .style8
        {
            height: 81px;
            width: 980px;
        }
        .style10
        {
            font-weight: bold;
            font-size: large;
        }
        .style20
        {
            text-decoration: underline;
            color: #FFFF66;
        }
        .style21
        {
        	visibility:hidden;
            font-size: small;
        }
        .style22
        {
            width: 978px;
            margin-top: 0px;
            background-color: #000000;
        }
        .style23
        {
            text-align: left;
        }
        </style>
</head>
<body bgcolor="#000000">
    <form id="form1" runat="server" style="color: #FFFFFF; font-size: medium; margin-bottom: 39px; background-color: #000000;">
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
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("stafflogindata.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Staff Data</li></a></div>
                    <div style="width:15%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("classchange.aspx") + "?val=" + Label1.Text %>"><li style="color:aqua;">Class Change</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("CommonTab.aspx") + "?val=" + Label1.Text %>"><li style="color:navy;">Common</li></a></div>
                </div>
            </div>
        </div>
    
        <!-- Line --><br /><br /><br /><br /><br /><br /><br /><br /><br />
        <div style="width:100%;">            
            <div style="width:20%; float:left;" class="labelClass">Class Change</div>
            <div style="width:39%; float:left;" class="labelClass">Date:</div>
            <div style="width:39%; float:left;"></div>
        </div><br /><br /><br /><br />
        <!-- Line --><br /><br />
        <div style="width:100%;">            
            <div style="width:20%; float:left;" class="labelClass">Admission Number:</div>
            <div style="width:39%; float:left;"><asp:TextBox ID="TextBox7" runat="server" TabIndex="10"  class="textBoxClass"></asp:TextBox></div>
            <div style="width:39%; float:left;"><asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Fetch" class="buttonClassAdmin" TabIndex="11" Height="26px" /></div>
        </div><br /><br /><br /><br />
        <!-- Line -->
        <div style="width:100%;">            
            <div style="width:20%; float:left;" class="labelClass">Name:</div>
            <div style="width:39%; float:left;"><asp:TextBox ID="TextBox8" runat="server" TabIndex="12" class="textBoxClass"></asp:TextBox></div>
            <div style="width:39%; float:left;"></div>
        </div><br /><br /><br /><br />
        <!-- Line -->
        <div style="width:100%;">            
            <div style="width:20%; float:left;" class="labelClass">Standard:</div>
            <div style="width:39%; float:left;">From<br /><asp:TextBox ID="TextBox9" runat="server" TabIndex="15"  class="textBoxClass"></asp:TextBox></div>
            <div style="width:39%; float:left;">To<br /><asp:TextBox ID="TextBox10" runat="server" TabIndex="15"  class="textBoxClass"></asp:TextBox></div>
        </div><br /><br /><br /><br /><br />
        <!-- Line -->
        <div style="width:100%;">            
            <div style="width:20%; float:left; " class="labelClass"></div>
            <div style="width:39%; float:left;"><asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Change STD" class="buttonClassAdmin" Width="125px" /></div>
            <div style="width:39%; float:left;"><asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="Update" class="buttonClassAdmin"/></div>
        </div><br /><br /><br /><br />
        <!-- Line -->
        <div style="width:100%;">            
            <div style="width:20%; float:left;" class="labelClass">Admission Number :</div>
            <div style="width:39%; float:left;">From:<br /><asp:TextBox ID="TextBox11" runat="server" TabIndex="10"  class="textBoxClass"></asp:TextBox></div>
            <div style="width:39%; float:left;">To:<br /><asp:TextBox ID="TextBox15" runat="server" TabIndex="10"  class="textBoxClass"></asp:TextBox></div>
        </div><br /><br /><br /><br /><br />
        <!-- Line -->
        <div style="width:100%;">            
            <div style="width:20%; float:left;" class="labelClass">Name</div>
            <div style="width:39%; float:left;"><asp:TextBox ID="TextBox12" runat="server" TabIndex="12" class="textBoxClass"></asp:TextBox></div>
            <div style="width:39%; float:left;"></div>
        </div><br /><br /><br /><br />
        <!-- Line -->
        <div style="width:100%;">            
            <div style="width:20%; float:left;" class="labelClass">Standard</div>
            <div style="width:39%; float:left;">From:<br /><asp:TextBox ID="TextBox13" runat="server" TabIndex="15" class="textBoxClass"></asp:TextBox></div>
            <div style="width:39%; float:left;">To:<br /><asp:TextBox ID="TextBox14" runat="server" TabIndex="15"  class="textBoxClass"></asp:TextBox></div>
            
        </div><br /><br /><br /><br />
        <!-- Line -->
        <div style="width:100%; ">            
            <div style="width:20%; float:left;" class="labelClass"></div>
            <div style="width:39%; float:left;"></div>
            <div style="width:39%; float:left;"></div>
        </div><br /><br /><br /><br />
        <!-- Line -->
        <div style="width:100%;">            
            <div style="width:20%; float:left;"class="labelClass"></div>
            <div style="width:39%; float:left;"><asp:Button ID="Button9" runat="server" Text="Clear" onclick="Button_9Click" class="buttonClassAdmin"/></div>
            <div style="width:39%; float:left;"><asp:Button ID="Button8" runat="server" onclick="Button8_Click" Text="Change All" class="buttonClassAdmin" /></div>
        </div><br /><br />
        <asp:TextBox ID="TextBox16" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBox18" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBox17" runat="server" BackColor="Transparent" ForeColor="White" BorderColor="Transparent" BorderStyle="None" Visible="False"></asp:TextBox>
       
    </form>
</body>
</html>
