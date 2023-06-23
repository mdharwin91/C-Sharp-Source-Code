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

    <div>
            <div class="Sec-header">
                <div>
                    <div class="Sec-logo"><img src="Img/emblem_png.png" class="style_img" /></div>
                    <div class="Sec-title"><h1>VASANTHAM</h1><br/><h3>NURSERY AND PRIMARY SCHOOL</h3></div>
                    <div class="Sec-logo2"><img src="Img/UNTITLED_001_1421299653802.jpg" class="style_img" /></div>
                </div>
                <div class="Sec-titlebar">
                    <div style="width:20%; float:left; color:forestgreen; font-size:x-large;">User : <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("default.aspx") %>"><li style="color:red;">Logout</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("adminactivities.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Admin</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("todaybills.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Day Bill</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("billedbetween.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Between</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("oldbill.aspx") + "?val=" +  Label1.Text%>"><li style="color:red;">Old Bill</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("stafflogindata.aspx") + "?val=" + Label1.Text %>"><li style="color:red;">Staff Data</li></a></div>
                    <div style="width:15%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("classchange.aspx") + "?val=" + Label1.Text %>"><li style="color:aqua;">Class Change</li></a></div>
                </div>
            </div>
        </div>













    <form id="form1" runat="server" class="style8" 
    
    
    style="color: #FFFFFF; font-weight: bold; font-size: medium; margin-bottom: 39px; background-color: #000000;">
    <asp:Panel ID="Panel1" runat="server" 
        Height="100px" Width="980px">
    </asp:Panel>
        <p class="style22">
            <span class="style10" lang="en-us" 
            
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                 
            &nbsp;<asp:Button 
            ID="Button13" runat="server" Text="Class Change" BorderStyle="None" 
        BackColor="Transparent"  
        Width="140px" Font-Bold="True" Font-Size="Large" ForeColor="#FFFF66" 
        Height="27px" onclick="Button13_Click" style="font-size: large"/>
            </span>&nbsp;<span class="style21">
            <asp:Button ID="Button14" runat="server" 
                Text="Staff Login Data" BorderStyle="None" 
        BackColor="Transparent"  
        Width="150px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
        Height="27px" onclick="Button14_Click" style="font-size: large"/>
            &nbsp;<asp:Button ID="Button10" runat="server" Text="Old Bill Detail" BorderStyle="None" 
        BackColor="Transparent"  
        Width="150px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
        Height="27px" onclick="Button10_Click" style="font-size: large"/>
            &nbsp;<asp:Button ID="Button11" runat="server" Text="Billed Between" BorderStyle="None" 
        BackColor="Transparent"  
        Width="150px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
        Height="27px" onclick="Button11_Click" style="font-size: large"/>
            &nbsp;<asp:Button ID="Button12" runat="server" Text="Day Bill Details" BorderStyle="None" 
        BackColor="Transparent"  
        Width="140px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
        Height="27px" onclick="Button12_Click" style="font-size: large"/>
            &nbsp;<asp:Button ID="Button17" runat="server" BorderStyle="None" 
        BackColor="Transparent"
                style="font-size: large; font-weight: 700; color: #FFFFFF" Text="Admin" 
                Width="80px" onclick="Button17_Click" />
            <asp:Button ID="Button15" runat="server" Text="Logout" BorderStyle="None" 
        BackColor="Transparent"  
        Width="80px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
                Height="27px" onclick="Button15_Click" />
            </span>
        </p>
    <p class="style23">
            <span class="style10" lang="en-us" 
            
            
                
                style="background-image: url('file:///C:/Users/DHARWIN/Documents/Visual%20Studio%202008/Projects/SchoolWeb/SchoolWeb/login-page-background-images-hd-7.jpg'); ">
            <span lang="en-us">Date :
            <asp:TextBox ID="TextBox17" runat="server" BackColor="Transparent" ForeColor="White"
                BorderColor="Transparent" BorderStyle="None"></asp:TextBox>
        </span></p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Connect" Visible="False" />
        <br /><span class="style20">Class Change</span>
        <div>
        <div style="float:left; width:30%;">
        <div style="float:left; margin-left:150px;">  Admission Number :</div>
        </div> 
        <div style="float:right"><asp:TextBox ID="TextBox7" runat="server" TabIndex="10" 
                Height="22px" Width="100px"></asp:TextBox><asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Fetch" style="height: 26px" TabIndex="11" Height="26px" />
        </div><br /><br />
        <div style="float:left; margin-left:150px;"> Name :</div>
        <div style="float:right"><asp:TextBox ID="TextBox8" runat="server" TabIndex="12" 
                Height="22px"></asp:TextBox></div>
        <br /><br />
        <div style="float:left; margin-left:150px;">Standard :</div>
        <div style="float:right">From<asp:TextBox ID="TextBox9" runat="server" 
                TabIndex="15" Height="22px"></asp:TextBox>To<asp:TextBox ID="TextBox10" 
                runat="server" TabIndex="15" Height="22px"></asp:TextBox></div>
        <br /><br />
        <div style="float:left; margin-left:700px;"><asp:Button ID="Button5" runat="server" 
                onclick="Button5_Click" Text="Change STD" Height="22px" Width="80px" /></div>
        <div style="float:right"><asp:Button ID="Button6" runat="server" 
                onclick="Button6_Click" Text="Update" Height="22px" Width="70px" /></div>
        <br />
        <br /><br />
        <br />
        
        <div style="width:100%; float:left;">
        <div style="float:left; margin-left:150px;">Admission Number :</div>
        <div style="float:right;">From:<asp:TextBox ID="TextBox11" runat="server" 
                TabIndex="10" Height="22px"></asp:TextBox>To:<asp:TextBox ID="TextBox15" 
                runat="server" TabIndex="10" Height="22px"></asp:TextBox></div>
        <br />
        <br />
        <div style="float:left; margin-left:150px;"> Name :</div>
        <div style="float:right;"><asp:TextBox ID="TextBox12" runat="server" TabIndex="12" 
                Height="22px"></asp:TextBox></div>
        <br />
        <br />
        <div style="float:left; margin-left:150px;">Standard :</div>
        <div style="float:right;">From:<asp:TextBox ID="TextBox13" runat="server" TabIndex="15" Height="22px"></asp:TextBox>To:<asp:TextBox 
                ID="TextBox14" runat="server" TabIndex="15" Height="22px"></asp:TextBox></div>
        <br /><br />
        <div style="float:right; width:100%;">
            <div style="float:left; margin-left:700px;"><asp:Button ID="Button8" runat="server" 
                    onclick="Button8_Click" Text="Change All" Height="22px" Width="70px" /></div>
            <div style="float:left; margin-left:50px;"><asp:Button ID="Button7" runat="server" 
                    onclick="Button7_Click" Text="Log Out" Height="22px" Width="70px" /></div>
            <div style="float:right;"><asp:Button ID="Button9" runat="server" Text="Clear" 
                    onclick="Button_9Click" Height="22px" Width="70px" /></div>
        </div>
        </div>
        </div>
    <br />
        
        <br />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span lang="en-us"> </span>&nbsp;&nbsp;<span 
        lang="en-us"> &nbsp;&nbsp;&nbsp;</span>
    <br />
    <br />
   <span 
            lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
    <br />
    <br />
    &nbsp;&nbsp;<span 
            lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </span>&nbsp;<span lang="en-us"> </span>&nbsp;&nbsp;&nbsp;&nbsp;
    <span lang="en-us">&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </span>
    <br />
    <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
    
    <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
    
    <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
    <br />
    <br />
    <span lang="en-us">&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
    
    &nbsp;&nbsp;
    <br />
    <br />
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox16" runat="server" Visible="False"></asp:TextBox>
    <asp:TextBox ID="TextBox18" runat="server" Visible="False"></asp:TextBox>
    <br />
    <br />
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </span>
    </form>
</body>
</html>
