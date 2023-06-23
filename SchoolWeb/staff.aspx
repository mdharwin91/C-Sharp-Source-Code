<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staff.aspx.cs" Inherits="SchoolWeb.staff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link id="Link1" runat="server" rel="shortcut icon" href="~/Staff_Logo.ico" type= "image/x-icon" />
    <link rel="Stylesheet" type="text/css" href="style.css" />
    <title>Staff Attendance</title>
    <style type="text/css">
        .style9
        {
            margin-bottom: 0px;
            
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="Sec-header">
                <div>
                    <div class="Sec-logo"><img src="Img/emblem_png.png" class="style_img" /></div>
                    <div class="Sec-title"><h1>VASANTHAM NURSERY AND PRIMARY SCHOOL</h1></div>
                    <div class="Sec-logo2"><img src="Img/UNTITLED_001_1421299653802.jpg" class="style_img" /></div>
                </div>
                
            </div>
        </div>


    <br /> <br /><br /><br /><br /><br /><br /><br /><br />
        <div style="width:100%;">
            <div style="width:49%; float:left; font-size:large; border-block-color:black; border-style:solid; background-color:bisque; margin-left:5px; height:420px;">
                <br />
                <div style="width:50%; float:left; margin-left:50px;">Date  :</div>
                <div style="width:35%; float:right;"><asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></div>
                <br /><br /><br />
                <div style="width:50%; float:left; margin-left:50px;">Employee ID :</div>
                <div style="width:35%; float:right;"><asp:TextBox ID="TextBox1" runat="server" BackColor="WhiteSmoke" ontextchanged="TextBox1_TextChanged" Width="78px" Font-Size="Large" Height="27px"  ></asp:TextBox><asp:Button ID="Button3"  runat="server" onclick="Button3_Click" Text="Get" BorderStyle="Ridge"  Width="78px" Font-Size="Large" Height="30px" /></div>
                <br /><br /><br />
                <div style="width:50%; float:left; margin-left:50px;">Name :</div>
                <div style="width:35%; float:right;"><asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Larger"></asp:Label><asp:TextBox ID="TextBox2" runat="server" BackColor="Transparent" Font-Bold="True" Font-Size="Large" Visible="false"></asp:TextBox></div>
                <br /><br /><br />
                <div style="width:30%; float:left; margin-left:150px;"><asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Log In" style="width: 150px" Height="30px" /></div>
                <div style="width:35%; float:right;"><asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Log Out" style="width: 150px" Height="30px" /></div>
                <br /><br /><br />
                <div style="width:20%; float:left;" ><asp:Image ID="Image1" runat="server" height="120px" Width="100px"/></div>
                <div style="width:60%; float:left; ">Logged In At :<asp:Label ID="Label2" runat="server"></asp:Label></div><br /><br /><br />
                <div style="width:60%; float:left; ">Logged Out At:<asp:Label ID="Label3" runat="server"></asp:Label></div>
                <br /><br /><br />

                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Back" />
                <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
            </div>
            <div style="float:right; width:49%; border-block-color:black; border-style:solid; background-color:bisque; margin-right:5px; height:420px;">
                <div>Announcements :</div><br />
                <p>
                    Today is Thursday<br /><br /><br />
                   <center><h1>“Failure is not the opposite of success: it’s part of success.” <i>-Arianna Huffington</i></h1></center>
                </p>
                <br /><br />
            </div>
        </div>

        <br />
        <div style="background-color:bisque; border-style:solid; margin-top:425px; margin-left:5px; margin-right:5px;">
            <Marquee><H1>Vasantham School Staff Attendance Logging System</H1></Marquee>

        </div>
    </form>
</body>
</html>
