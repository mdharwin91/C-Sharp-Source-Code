<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="construct.aspx.cs" Inherits="SchoolWeb.construct" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            font-size: xx-large;
        }
        .style3
        {
            height: 95px;
        }
        .style7
        {
            margin-top: 0px;
        }
        .style5
        {
            height: 22px;
        }
        .style4
        {
            height: 16px;
        }
        .style6
        {
            margin-left: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
    <div style="text-align: center">
        <h1 class="style3">
            <asp:Image ID="Image1" runat="server" Height="168px" 
            ImageUrl="~/School_Entrance.png" Width="594px" CssClass="style7" 
                ImageAlign="AbsBottom" />
        </h1>
    </div>
    <div style="text-align: center" class="style5">
        <h1 class="style4">
            <span class="style2">VASANTHAM<span lang="en-us"> </span>Nursery and Primary 
            School </span>
        </h1>
        <h3>
            1/293 , Main Road, Maruthakulam, Tirunelveli - 627151</h3>
        &nbsp;</div>
<p>
    &nbsp;</p>
        <p class="style6">
            <span lang="en-us">&nbsp;</span></p>
    
        <span class="style2" lang="en-us">
        <br />
        !!!UNDER CONSTRUCTION!!!
    </div>
<p>
    <span lang="en-us"> <marquee>THANK YOU ... Please visit afterwards </marquee>  </span>
</p>
    <asp:Button ID="Button1" runat="server" Height="39px" onclick="Button1_Click" 
        Text="Back" Width="100px" />
    </form>
</body>
</html>
