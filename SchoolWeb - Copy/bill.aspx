<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bill.aspx.cs" Inherits="SchoolWeb.bill" Theme="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta http-equiv="refresh" content ="300" />
    <title>School Fee Bill</title><script type="text/javascript" language="javascript">
    window.onload = function () {
        noBack();
    }
    function noBack() {
        window.history.forward();
    }
</script>
    <script type = "text/javascript">
    function PrintPanel() {
        var panel = document.getElementById("<%=Panel1.ClientID %>");
        var printWindow = window.open('', '', 'height=700,width=1200');
        printWindow.document.write('<html><head><font size=".5"><u><center>CASH RECEIPT</center></u></font></head><body > ');
        printWindow.document.write('<style="FONT-SIZE:13px; COLOR:#000000; LINE-HEIGHT:8px; FONT-FAMILY:Arial,Helvetica,sans-serif"');
        printWindow.document.write(panel.innerHTML);
        printWindow.document.write('</style></body></html>');
        printWindow.document.close();
        setTimeout(function () {
            printWindow.print();
        }, 500);
        return false;
    }
    </script>
    <style type="text/css">
        .style7
        {
            width: 1029px;
            margin-left: 5px;
        }
        .style24
        {
        	margin-left:0px;
        	left:2px;
            height: 85px;
            width: 76px;
            float: left;
           
        }
        .style34
        {
            width: 884px;
            margin-left: 10px;
        }
        .style35
        {
            font-size: medium;
        }
        .style36
        {
            font-size: x-small;
        }
        .style61
        {
            height: 19px;
            margin-left: 6px;
            text-align: left;
        }
        .style64
        {
            margin-top: 0px;
            text-align: right;
            margin-bottom:0px;
        }
        .style66
        {
            width: 903px;
            height: 11px;
            margin-top: 5px;
            margin-bottom: 4px;
        }
        .style67
        {
            height: 17px;
            margin-top: 5px;
            margin-bottom: 4px;
            background-color: #FFFFFF;
            text-align: left;
            margin-left: 0px;
            width: 349px;
            line-height :30px;
            vertical-align :top;
            background-color:Transparent;
        }
        .style77
        {
            height: 3px;
            width: 362px;
            text-align: left;
            margin-left: 0px;
            margin-bottom: 20px;
            line-height:3px;
            margin-top:3px;
            font-size: xx-small;
            
        }
        .style79
        {
            height: 12px;
            margin-top: 5px;
            margin-bottom: 0px;
            background-color: #FFFFFF;
            text-align: left;
            background-color:Transparent;
        }
        .style71
        {
            margin-left: 0px;
        
        }
        .style85
        {
            margin: 0px;
height: 17px;
                text-align: left;
            width: 365px;
            }
        .style78
        {
            font-size: xx-small;
        }
        .style87
        {
            text-align: left;
            height: 264px;
            width: 368px;
        }
        
        .style88
        {
            margin-bottom: 0px;
            margin-top: 0px;
            height: 20px;
            text-align: left;
            width: 367px;
            margin-left: 1px;
            margin-right: 29px;
        }
        .style92
        {
            font-size:xx-large;
            text-align:inherit;
            
        }
        .style93
        {
            margin-bottom: 0px;
            height: 3px;
            text-align: center;
        }
        .style96
        {
            margin-bottom: 0px;
            height: 14px;
            text-align: center;
        }
        .style99
        {
            margin: 0px;
            height: 24px;
            text-align: left;
            width: 376px;
        }
        .style62
        {
            font-size: small;
        }
                
        .style100
        {
            margin-bottom: 0px;
            margin-top: 0px;
            height: 8px;
            text-align: left;
            width: 367px;
            margin-left: 1px;
            margin-right: 29px;
        }
                
        .style101
        {
            width: 878px;
            margin-left: 15px;
        }
        .style102
        {
            width: 877px;
            margin-left: 15px;
        }
                
        .style103
        {
            height: -15px;
        }
                
        .style106
        {
            width: 1016px;
            margin-left: 10px;
        }
                
        .style107
        {
            height: 19px;
            margin-left: 6px;
            text-align: left;
            width: 1094px;
        }
                
        .style108
        {
            width: 1089px;
            height: 636px;
        }
                
        </style>
</head>
<body>
    <form id="form1" runat="server" class="style108">
  

        
    <asp:Panel ID="Panel1" runat="server" Height="444px" Width="373px" 
            BorderStyle="Solid" Font-Size="XX-Small"  CssClass="style64"  
        BackImageUrl="Web_Site3.png" BackColor="#66FFFF">
    <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
    
         <h1 style="font-family: 'Times New Roman', Times, serif; font-size:small ; line-height:8px;" 
        class="style93">
             <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
             <span </span="" background="Web_Site3.png" 
                 style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
             <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
             <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
             <img align="left" width=60pt height=75pt class="style24" 
                 src="emblem1-removebg-preview.png" /></span></span></span></span><hr />
             <h1 
                 class="style96" 
                 style="font-family: 'Times New Roman', Times, serif; font-size:small ; line-height:8px;">
                 <span </span="" background="Web_Site3.png" 
                     style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
                 
                 <span class="style92"  lang="en-us"><span style="font-size:24pt; text-align :center">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;VASANTHAM</span></span></span><p class="style96" 
                     style="font-family: 'Times New Roman', Times, serif; font-size:small ; line-height:8px;">
                     <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nursery and Primary School</span></p>
        </span>
        <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
        <span </span="" background="Web_Site3.png" 
            style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
        <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
        <span </span="" background="Web_Site3.png" 
            style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
        <p align="center"class="style85" 
            style="font-family: 'Times New Roman', Times, serif; font-size:x-small ; line-height:8px;">
            <span class="style78">1/293, Main 
            Road, Maruthakulam, </span><span class="style78">Tirunelve<span lang="en-us">li 
            - 627151</span></span></p>
        <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
        <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
        <p align="left" class="style99" 
            style="font-family: 'Times New Roman', Times, serif; font-size:small ; line-height:8px;">
            &nbsp;</p>
        <p align="left" class="style99" 
            style="font-family: 'Times New Roman', Times, serif; font-size:small ; line-height:8px;">
            <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
            <span </span="" background="Web_Site3.png" 
                style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
            <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
            <span </span="" background="Web_Site3.png" 
                style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
            <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
            <span </span="" background="Web_Site3.png" 
                style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
            <span style="font-size: 10pt; font-weight:bold; line-height :3px;  font-family: 'Times New Roman', Times, serif">
            <span class="style35"><span lang="en-us" 
                style="font-weight: bold; font-family: 'Times New Roman', Times, serif">
            <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
            <span </span="" background="Web_Site3.png" 
                style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
            <span style="font-size: 10pt; font-weight:bold; line-height :3px;  font-family: 'Times New Roman', Times, serif">
            <span style="font-weight:bold; text-align:left; font-family: 'Times New Roman', Times, serif">
            <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
            <span </span="" background="Web_Site3.png" 
                style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
            <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
            <span </span="" background="Web_Site3.png" 
                style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
            <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
            <span </span="" background="Web_Site3.png" 
                style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
            <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
            <span </span="" background="Web_Site3.png" 
                style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
            <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
            <span </span="" background="Web_Site3.png" 
                style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
            <span style="font-size: 10pt; font-weight:bold; line-height :3px;  font-family: 'Times New Roman', Times, serif">
            <span class="style35"><span lang="en-us" 
                style="font-weight: bold; font-family: 'Times New Roman', Times, serif">
            <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
            <span </span="" background="Web_Site3.png" 
                style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
            <span style="font-size: 10pt; font-weight:bold; line-height :3px;  font-family: 'Times New Roman', Times, serif">
            <span class="style36"><span class="style62"><span class="style35">
            <span style="font-size: 10pt; font-weight:bold; line-height:0px; font-family: 'Times New Roman', Times, serif">
            <span class="style35" 
                style="font-weight:bold;  font-family: 'Times New Roman', Times, serif">
            <span lang="en-us" 
                style="font-size: 10pt; font-weight: bold; font-family: 'Times New Roman', Times, serif">
            <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
            <span </span="" background="Web_Site3.png" 
                style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
            <span style="font-size: 10pt; font-weight:bold; line-height :3px;  font-family: 'Times New Roman', Times, serif">
            <span class="style35"><span lang="en-us" 
                style="font-weight: bold; font-family: 'Times New Roman', Times, serif">
            <span </span="" background="Web_Site3.png" 
                style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
            <span style="font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
            Bill. No.- </span>
            <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
            <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <span class="style35"><b>
            <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <asp:TextBox ID="TextBox2" runat="server" BorderStyle="None" BackColor="Transparent"
                Font-Size="X-Small" Height="16px" ontextchanged="TextBox2_TextChanged" 
                Width="60px"></asp:TextBox>
            </span></b></span></span></span></span></span></span></span></span></span>
            </span></span></span></span></span></span></span></span></span></span></span>
            </span></span></span></span></span></span></span></span></span></span></span>
            </span>Date:</span><span class="style36"><span class="style62"><asp:TextBox 
                ID="TextBox1" runat="server" BackColor="Transparent" BorderStyle="None" 
                Font-Size="X-Small" Height="16px" Width="85px"></asp:TextBox>
            </span></span><span style="font-family: 'Times New Roman', Times, serif">
            <span class="style62" lang="en-us">A</span></span><span class="style62" 
                style="font-weight:bold; line-height:3px; font-family: 'Times New Roman', Times, serif">d. 
            No.</span><span class="style36"><span class="style62"><span class="style35"><asp:TextBox 
                ID="TextBox3" runat="server" BackColor="Transparent" BorderStyle="None" 
                Font-Size="X-Small" Height="14px" ontextchanged="TextBox3_TextChanged" 
                Width="44px" Font-Names="Cambria" TabIndex="1">0</asp:TextBox>
            <span style="font-size: 10pt; font-weight:bold; line-height:0px; font-family: 'Times New Roman', Times, serif">
            <span class="style35" 
                style="font-weight:bold;  font-family: 'Times New Roman', Times, serif">
            <span lang="en-us" 
                style="font-size: 10pt; font-weight: bold; font-family: 'Times New Roman', Times, serif">
            &nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>
        </span></span>
        </span></span></span></span><span </span="" background="Web_Site3.png" 
            style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
        <div align="left" class="style87" style=" border-bottom:0px; padding:0;">
            <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
            <span </span="" background="Web_Site3.png" 
                style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
            <p align="left" class="style88" 
                style="font-family: 'Times New Roman', Times, serif; font-size:small ; line-height:8px;">
                <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
                <span </span="" background="Web_Site3.png" 
                    style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
                <span style="font-size: 10pt; font-weight:bold; line-height :3px;  font-family: 'Times New Roman', Times, serif">
                <span class="style35"><span lang="en-us" 
                    style="font-weight: bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
                <span </span="" background="Web_Site3.png" 
                    style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35"><b>
                <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
                <span </span="" background="Web_Site3.png" 
                    style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35"><b><span lang="en-us">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35"><b><span lang="en-us">
                <span style="font-size: 10pt; font-weight:bold;line-height:5px;  font-family: 'Times New Roman', Times, serif">
                <span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold;line-height:5px;  font-family: 'Times New Roman', Times, serif"><span class="style35"><b>Name:&nbsp;
                <asp:TextBox ID="TextBox50" runat="server" BackColor="Transparent" 
                    BorderStyle="None" Font-Size="Medium" Height="17px" Width="179px"></asp:TextBox>
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">&nbsp; STD<span 
                    lang="en-us">:</span></span><span lang="en-us">&nbsp;&nbsp; </span>
                <asp:TextBox ID="TextBox4" runat="server" BackColor="Transparent" 
                    BorderStyle="None" Font-Size="X-Small" Height="16px" Width="40px"></asp:TextBox>
                </span></b></span></span></span></span></span></span></span></b></span></span>
                </span></span></span></b></span></span></span></span></span></b></span></span>
                </span></span></span></span>&nbsp;</span></span></span></span></span></p>
            <hr class="style103" />
            <p align="left" class="style88" 
                style="font-family: 'Times New Roman', Times, serif; font-size:small ; line-height:8px;">
                <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
                <span> 
                </span="" background="[R]http://localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/[R]http:/localhost/School/Web_Site3.png" 
                
                    style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
                <span style="font-size: 10pt; font-weight:bold; line-height :3px;  font-family: 'Times New Roman', Times, serif">
                <span class="style35"><span lang="en-us" 
                    style="font-weight: bold; font-family: 'Times New Roman', Times, serif">&nbsp;&nbsp;</span></span></span></span></span></p>
            <p align="left" class="style100" 
                
                
                style="font-family: 'Times New Roman', Times, serif; font-size:small ; line-height:8px;">
                <span style="font-size: 5pt; font-weight:bold; line-height :0px; font-family: 'Times New Roman', Times, serif">
                <span </span="" background="Web_Site3.png" 
                    style="background-image : F:\School\Web_Site3.png; width: 500%; height: 50%; background-repeat: no-repeat;">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span "Times New Roman" ,="" class="style35" font-family:="" serif"="" 
                    style= font-weight:bold; line-height:10px; BackColor=" Times,="" 
                    Transparent"=""><span "&gt;&lt;span lang=" class="style35" en-us"="">
                <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>M</span>ont<span lang="en-us">h&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Amount</span></span></span></span></span></span></p>
            </span></span>
            <span style="font-size: 10pt; font-weight:bold; line-height :3px;  font-family: 'Times New Roman', Times, serif">
            <span class="style35">
            <span style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <span lang="en-us">&nbsp;&nbsp;&nbsp; </span>
            <br />
            </span></span></span>
            <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <p class="style79">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; line-height:10px; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span lang="en-us">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; line-height:1px; font-family: 'Times New Roman', Times, serif">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; line-height:10px; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span lang="en-us">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; line-height:1px; font-family: 'Times New Roman', Times, serif">
                <asp:TextBox ID="TextBox7" runat="server" BackColor="Transparent"  
                    BorderStyle="None" CssClass="style71" Font-Bold="True" Height="16px" Rows="2" 
                    Width="131px"  ></asp:TextBox>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span>
            </p>
            <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <span class="style35" 
                style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <span class="style35" 
                style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <h1 class="style77">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    lang="en-us">&nbsp; </span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span>
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span lang="en-us">
                <asp:Label ID="Label4" runat="server" BackColor="Transparent"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <span style="font-size: 10pt;  line-height:10px; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style=" line-height :5px; font-family: 'Times New Roman', Times, serif">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox63" runat="server" BackColor="Transparent" 
                    BorderStyle="None" Height="16px" Width="50px"></asp:TextBox>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span>
            </h1>
            <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <span class="style35" 
                style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <h1 class="style77">
                <span style="font-size: 10pt;  font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    lang="en-us"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span>
                <asp:TextBox ID="TextBox64" runat="server" BackColor="Transparent" 
                    BorderStyle="None" Height="16px" Width="50px"></asp:TextBox>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span>
            </h1>
            </span></span>
            <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <span class="style35" 
                style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <h1 class="style77">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    lang="en-us"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span>
                <asp:TextBox ID="TextBox65" runat="server" BackColor="Transparent" 
                    BorderStyle="None" Height="16px" Width="50px"></asp:TextBox>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span>
            </h1>
            </span></span>
            <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <span class="style35" 
                style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <h1 class="style77">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    lang="en-us"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span>
                <asp:TextBox ID="TextBox66" runat="server" BackColor="Transparent" 
                    BorderStyle="None" Height="16px" Width="50px"></asp:TextBox>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span>
            </h1>
            </span></span>
            <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <span class="style35" 
                style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <h1 class="style77">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    lang="en-us"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span>
                <asp:TextBox ID="TextBox67" runat="server" BackColor="Transparent" 
                    BorderStyle="None" Height="16px" Width="50px"></asp:TextBox>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span>
            </h1>
            </span></span>
            <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <span class="style35" 
                style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <h1 class="style77">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    lang="en-us"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><asp:TextBox ID="TextBox68" runat="server" BackColor="Transparent" 
                    BorderStyle="None" Height="16px" Width="50px"></asp:TextBox>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span>
            </h1>
            </span></span>
            <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <span class="style35" 
                style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <h1 class="style77">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox69" runat="server" BackColor="Transparent" 
                    BorderStyle="None" Height="16px" Width="50px"></asp:TextBox>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span>
            </h1>
            </span></span></span></span></span></span>
            <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <span class="style35" 
                style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
            <p class="style67">
                <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total</span><span lang="en-us"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; line-height:1px; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; line-height:10px; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35" 
                    style="font-weight:bold; line-height:10px; font-family: 'Times New Roman', Times, serif"><span 
                    style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span 
                    class="style35"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; line-height:10px; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; line-height:1px; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; line-height:10px; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; line-height:10px; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><asp:TextBox 
                    ID="TextBox19" runat="server" BackColor="Transparent" 
                    BorderStyle="None" Height="18px" Width="60px" Font-Bold="True" 
                    Font-Size="Medium" Font-Names="Cambria"></asp:TextBox>
                </b></span></span></span></span></span></span></span></span></span></span>
                </span></span></span></span></span></span></span></span></span></span></span>
            </p>
            <p class="style67">
                <span lang="en-us">&nbsp;&nbsp;
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span class="style35" 
                    style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                <span lang="en-us" style="font-family:Monotype Corsiva">
                &nbsp;&nbsp;&nbsp;&nbsp;Billed By :
                <span style="font-size: 10pt; line-height :2px; font-weight:bold; font-family: Arial">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" 
                    Font-Names="Times New Roman" Text="Label"></asp:Label>
                </span></span></span></span></span></span></span></span></span></span></span>
                </span>
            </p>
            <hr />
            </span></span></span>
        </div>
        </span>
        </div>
        <h1>
        </h1>
        <h1>
        </h1>
        <h1>
        </h1>
        <h1>
        </h1>
        <h1>
        </h1>
        </span>
        <h4>
            <asp:TextBox ID="TextBox70" runat="server" Visible="False"></asp:TextBox>
        </h4>
        </span>
        <h1>
        </h1>
        <h1>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
                SelectCommand="SELECT [bill_num], [admi_num], [name], [mon], [amt], [date], [std], [billby] FROM [bill] WHERE ([admi_num] = @admi_num) ORDER BY [bill_num] DESC">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox3" Name="admi_num" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:TextBox ID="TextBox84" runat="server" Visible="False"></asp:TextBox>
        </h1>
        <h1>
        </h1>
        <h1>
            <asp:TextBox ID="TextBox78" runat="server" Visible="False" Width="58px"></asp:TextBox>
            <asp:TextBox ID="TextBox77" runat="server" Visible="False" Width="58px"></asp:TextBox>
            <asp:TextBox ID="TextBox76" runat="server" Visible="False" Width="58px"></asp:TextBox>
            <asp:TextBox ID="TextBox75" runat="server" Visible="False" Width="58px"></asp:TextBox>
            <asp:TextBox ID="TextBox74" runat="server" Visible="False" Width="58px"></asp:TextBox>
            <asp:TextBox ID="TextBox73" runat="server" Visible="False" Width="58px"></asp:TextBox>
            <asp:TextBox ID="TextBox83" runat="server" Visible="False" Width="58px"></asp:TextBox>
            <asp:TextBox ID="TextBox82" runat="server" Visible="False" Width="58px"></asp:TextBox>
            <asp:TextBox ID="TextBox81" runat="server" Visible="False" Width="58px"></asp:TextBox>
            <asp:TextBox ID="TextBox80" runat="server" Visible="False" Width="58px"></asp:TextBox>
            <asp:TextBox ID="TextBox79" runat="server" Visible="False" Width="58px"></asp:TextBox>
            <asp:TextBox ID="TextBox72" runat="server" Visible="False" Width="47px"></asp:TextBox>
        </h1>
        <h1>
        </h1>
        <h1>
        </h1>
        </asp:Panel>
        </span></span></span></span></span></span></span></span>
        
        </span></span></span></span></b></span></span></span>
        <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
        <span class="style35" 
            style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
        </span></span>
        
       
        
             <p class="style107">
                 <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <b>
             
                 <span class="style35">
             
                 <span class="style35" 
                 style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <span lang="en-us" 
                     style="font-size: 10pt; font-weight: bold; font-family: Arial">
                 &nbsp;<span style="font-size: 10pt; font-weight:bold&nbsp;<span style="font-size: 10pt; font-weight:bold; font-family: Arial"><asp:Button 
                     ID="Button8" runat="server" onclick="Button8_Click1" Text="New Bill" 
                     Height="23px" Width="74px"  BorderStyle="None" BackColor="Transparent" 
                     Font-Bold="True" />
                 &nbsp;<span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif"><span class="style35" 
                 style="font-weight:bold; font-family: 'Times New Roman', Times, serif"><asp:Button 
                     ID="Button1" runat="server" onclick="Button1_Click" Text="Generate" 
                     Width="70px" TabIndex="3" />
                 </span></span> &nbsp;&nbsp;
                 
                 &nbsp;&nbsp;
                 
                 &nbsp;&nbsp;
                 
                 <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                     Text="SAVE / Make Bill" Width="42px" Visible="False" />
             
             
             </span>
                 </span></span></span>
             </b></span> <b>
                
                 <span style="font-size: 10pt; font-weight:bold; font-family: Arial">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span lang="en-us" 
                     style="font-size: 10pt; font-weight: bold; font-family: Arial">
                 <asp:Button ID="Button11" 
                     runat="server" onclick="Button11_Click" Text="Save" Width="60px" 
                     TabIndex="5" />
                 &nbsp; </span>
                 <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
                     OnClientClick="return PrintPanel();" Text="Print" Width="60px" 
                     TabIndex="6" />
                 <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 &nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button15" runat="server" onclick="Button15_Click" 
                     Text="Send SMS" Visible="False" Width="16px" />
                 &nbsp;&nbsp; 
                 <asp:DropDownList ID="DropDownList1" runat="server" 
                     onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                     <asp:ListItem Value="Term1">Term 1</asp:ListItem>
                     <asp:ListItem Value="Term2">Term 2</asp:ListItem>
                     <asp:ListItem Value="Term3">Term 3</asp:ListItem>
                 </asp:DropDownList>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                     ID="Button12" runat="server" Text="Temp" onclick="Button12_Click" 
                     Visible="False" Width="16px" />
                 &nbsp;<asp:Button ID="Button13" runat="server" onclick="Button13_Click" 
                     Text="Get Old val" Visible="False" Width="23px" />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                 &nbsp;&nbsp;&nbsp; </span>
                 <asp:Button ID="Button10" runat="server" onclick="Button10_Click" 
                     Text="Fetch Details" Width="100px" TabIndex="2" />
             
             
                 <span lang="en-us">&nbsp;<asp:TextBox 
                     ID="TextBox71" runat="server" BorderStyle="None" Width="60px"></asp:TextBox>
                 </span>
                 &nbsp;<span lang="en-us"><span style="font-size: 10pt; font-weight:bold; font-family: Arial"><span 
                                      lang="en-us" style="font-size: 10pt; font-weight: bold; font-family: Arial"><asp:Button 
                     ID="Button9" runat="server" onclick="Button9_Click" 
                     Text="Get bill details" />
                                  </span>
             </span>
             </span>
                
                 <span lang="en-us" 
                     style="font-size: 10pt; font-weight: bold; font-family: Arial">
                                  <asp:Button ID="Button14" runat="server" 
                     onclick="Button14_Click" Text="Home" Width="60px" />
        </span>&nbsp;</span></asp:TextBox></span></b><span lang="en&nbsp;</span></asp:TextBox></span></b><span lang="en&nbsp;</span></asp:TextBox></span></b><span lang="en&nbsp;</span></asp:TextBox></span></b><span lang="en-us"><asp:GridView 
                     ID="GridView1" runat="server" AllowPaging="True" 
                     AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                     BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                     DataKeyNames="bill_num" DataSourceID="SqlDataSource1" Font-Size="Small" 
                     GridLines="Vertical" Height="10px" HorizontalAlign="Center" PageSize="2" 
                     Width="996px" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                     Visible="False">
                     <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Center" />
                     <Columns>
                         <asp:BoundField DataField="bill_num" HeaderText="bill_num" ReadOnly="True" 
                             SortExpression="bill_num" />
                         <asp:BoundField DataField="admi_num" HeaderText="admi_num" 
                             SortExpression="admi_num" />
                         <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                         <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                         <asp:BoundField DataField="std" HeaderText="std" SortExpression="std" />
                         <asp:BoundField DataField="mon" HeaderText="mon" SortExpression="mon" />
                         <asp:BoundField DataField="amt" HeaderText="amt" SortExpression="amt" />
                         <asp:BoundField DataField="billby" HeaderText="billby" 
                             SortExpression="billby" />
                     </Columns>
                     <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                     <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                     <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                     <AlternatingRowStyle BackColor="Gainsboro" />
                 </asp:GridView>
             </p>
             <p class="style61">
                 &nbsp;</p>
    <p class="style61">
                 &nbsp;</p>
    <p class="style61">
                 &nbsp;</p>
    <p class="style61">
                 &nbsp;</p>
    <p class="style61">
                 <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <b>
             
                 <span class="style35">
             
                 <span class="style35" 
                 style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
             <asp:CheckBox ID="CheckBox1" runat="server" 
                 oncheckedchanged="CheckBox1_CheckedChanged" Text="Jan" Font-Bold="False" />
                 <span lang="en-us">&nbsp;&nbsp;&nbsp; </span></span>
                 </span>
             <asp:TextBox ID="TextBox6" runat="server" BorderStyle="None" Height="18px" 
                 Width="60px">0</asp:TextBox>
                 <span lang="en-us">&nbsp;&nbsp; <span class="style35" 
                 
            
            
                     style="font-weight:bold; font-family: 'Times New Roman', Times, serif; vertical-align: middle;">
                 <asp:CheckBox ID="CheckBox2" runat="server" 
                     oncheckedchanged="CheckBox2_CheckedChanged" Text="Feb" Font-Bold="False" />
                 <span lang="en-us">&nbsp;&nbsp; </span></span><span lang="en-us">
                 
                 <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <span class="style35"><b>
                 <asp:TextBox ID="TextBox9" runat="server" BorderStyle="None" Width="60px">0</asp:TextBox>
                 &nbsp;&nbsp;
                 <span class="style35" 
                     style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <asp:CheckBox ID="CheckBox3" runat="server" 
                     oncheckedchanged="CheckBox3_CheckedChanged" Text="Mar" Font-Bold="False" />
                 <span class="style35" 
                 
            
            
                     style="font-weight:bold; font-family: 'Times New Roman', Times, serif; vertical-align: middle;">
             &nbsp;&nbsp; </span></span>
                 <asp:TextBox ID="TextBox10" runat="server" BorderStyle="None" Height="18px" 
                     Width="60px">0</asp:TextBox>
                 &nbsp;&nbsp;&nbsp;
                 
                 <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <span class="style35" 
                     style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
               
                 <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <span class="style35"><b>
                
                 <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <span class="style35" 
                     style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <span lang="en-us">
                 
                 <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <span class="style35" 
                     style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <asp:CheckBox ID="CheckBox4" runat="server" 
                     oncheckedchanged="CheckBox4_CheckedChanged" Text="Apr" Font-Bold="False" />
                
                 <span class="style35" 
                 
            
            
                     style="font-weight:bold; font-family: 'Times New Roman', Times, serif; vertical-align: middle;">
                 <span lang="en-us">&nbsp;&nbsp; </span></span></span></span></span>
                 </span></span></b></span></span></span></span>
                 <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <span class="style35"><b>
                 <asp:TextBox ID="TextBox11" runat="server" BorderStyle="None" Height="18px" 
                     Width="60px">0</asp:TextBox>
                 &nbsp;&nbsp;
                 <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <span class="style35" 
                     style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <asp:CheckBox ID="CheckBox5" runat="server" 
                     oncheckedchanged="CheckBox5_CheckedChanged" Text="May" Font-Bold="False" />
                 <span class="style35" 
                 
            
            
                     style="font-weight:bold; font-family: 'Times New Roman', Times, serif; vertical-align: middle;">
                 <span lang="en-us">&nbsp;&nbsp; </span></span></span></span>
                 <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <span class="style35"><b>
                 <asp:TextBox ID="TextBox12" runat="server" BorderStyle="None" Height="18px" 
                     Width="60px">0</asp:TextBox>
                 <asp:CheckBox ID="CheckBox12" runat="server" 
                     oncheckedchanged="CheckBox12_CheckedChanged" Text="JUN" />
                 &nbsp;&nbsp;&nbsp;
                 <asp:CheckBox ID="CheckBox13" runat="server" 
                     oncheckedchanged="CheckBox13_CheckedChanged" Text="JUN (Old)" />
                 </b></span></span>
                 </b></span></span></span></span>
                 </b></span></span></span></span>
             </b></span></p>
    <p class="style66">
                 <b>
            
             <span><span class="style35">
            
             <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
             <span class="style35" 
                 style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <span lang="en-us">&nbsp; </span>
             <asp:CheckBox ID="CheckBox6" runat="server" 
                 oncheckedchanged="CheckBox6_CheckedChanged" Text="Jul" Font-Bold="False" />
             </span></span></span></span><span class="style35" 
                 
            
            
                     style="font-weight:bold; font-family: 'Times New Roman', Times, serif; vertical-align: middle;">
                 <span lang="en-us">&nbsp;&nbsp; </span></span>
             <asp:TextBox ID="TextBox13" runat="server" BorderStyle="None" Height="16px" 
                 Width="65px">0</asp:TextBox>
                 <span lang="en-us">&nbsp;
                 <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <span class="style35" 
                     style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <asp:CheckBox ID="CheckBox7" runat="server" 
                     oncheckedchanged="CheckBox7_CheckedChanged" Text="Aug" Font-Bold="False" />
                 <span class="style35" 
                 
            
            
                     style="font-weight:bold; font-family: 'Times New Roman', Times, serif; vertical-align: middle;">
                 <span lang="en-us">&nbsp;&nbsp; </span></span>
                 </span></span><b>
                
                 <asp:TextBox ID="TextBox14" runat="server" BorderStyle="None" Height="18px" 
                     Width="60px">0</asp:TextBox>
                 &nbsp;&nbsp; <b>
                
                 <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <span class="style35">
                
                 <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <span class="style35" 
                     style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <asp:CheckBox ID="CheckBox8" runat="server" 
                     oncheckedchanged="CheckBox8_CheckedChanged" Text="Sep" Font-Bold="False" />
                 <span class="style35" 
                 
            
            
                     style="font-weight:bold; font-family: 'Times New Roman', Times, serif; vertical-align: middle;">
                 <span lang="en-us">&nbsp;&nbsp; </span></span>
                 </span></span>
                 </span></span>
                 <asp:TextBox ID="TextBox15" runat="server" BorderStyle="None" Height="18px" 
                     Width="60px">0</asp:TextBox>
                 &nbsp;&nbsp;&nbsp; <b>
                
                 <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <span class="style35">
                
                 <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <span class="style35" 
                     style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <asp:CheckBox ID="CheckBox9" runat="server" 
                     oncheckedchanged="CheckBox9_CheckedChanged" Text="Oct" Font-Bold="False" />
                 </span></span>
                 </span></span><span class="style35" 
                 
            
            
                     style="font-weight:bold; font-family: 'Times New Roman', Times, serif; vertical-align: middle;">
                 <span lang="en-us">&nbsp;&nbsp; </span></span>
                 <asp:TextBox ID="TextBox16" runat="server" BorderStyle="None" Height="18px" 
                     Width="60px">0</asp:TextBox>
                 &nbsp;&nbsp;&nbsp;&nbsp; <b>
               
                 <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <span class="style35">
               
                 <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <span class="style35" 
                     style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <asp:CheckBox ID="CheckBox10" runat="server" 
                     oncheckedchanged="CheckBox10_CheckedChanged" Text="Nov" 
                     Font-Bold="False" />
                 </span>
              
                 <span class="style35" 
                 
            
            
                     style="font-weight:bold; font-family: 'Times New Roman', Times, serif; vertical-align: middle;">
                 <span lang="en-us">&nbsp;&nbsp; </span></span></span></span></span>
                 <asp:TextBox ID="TextBox17" runat="server" BorderStyle="None" Height="18px" 
                     Width="60px">0</asp:TextBox>
                 &nbsp; <b>
                 <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <span class="style35">
                 <span style="font-size: 10pt; font-weight:bold; font-family: 'Times New Roman', Times, serif">
                
                 <span class="style35" 
                     style="font-weight:bold; font-family: 'Times New Roman', Times, serif">
                 <asp:CheckBox ID="CheckBox11" runat="server" 
                     oncheckedchanged="CheckBox11_CheckedChanged" Text="Dec" 
                     Font-Bold="False" />
                 <span class="style35" 
                 
            
            
                     style="font-weight:bold; font-family: 'Times New Roman', Times, serif; vertical-align: middle;">
                 <span lang="en-us">&nbsp;&nbsp; </span></span>
                 </span></span></span></span>
                 <asp:TextBox ID="TextBox18" runat="server" BorderStyle="None" Height="18px" 
                     Width="60px">0</asp:TextBox>
                 <asp:CheckBox ID="CheckBox14" runat="server" Text="New" />
                 </b>
             </b>
                 </b></b></b>
                 </span>
                
                 <span style="font-size: 10pt; font-weight:bold; font-family: Arial">
                 <asp:TextBox ID="TextBox8" runat="server" Visible="False">1</asp:TextBox>
             
             
             </span>
             </p>
             </span><span style="font-size: 10pt; font-weight:bold; font-family: Arial">
             <p class="style34">
                 <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </span>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="SAVE" 
                     Visible="False" />
                 <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                     lang="en-us" style="font-size: 10pt; font-weight: bold; font-family: Arial"> </span>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             </p>
             
             
             <p class="style102" style="margin-top: 3px;">
                 <b>
                
                 <span lang="en-us" 
                     style="font-size: 10pt; font-weight: bold; font-family: Arial"> &nbsp;&nbsp;&nbsp; </span>
&nbsp;&nbsp;&nbsp; </span>
                 </b>
                 <span style="font-size: 10pt; font-weight:bold; font-family: Arial">
                 <span lang="en-us">&nbsp;&nbsp;&nbsp;</span></span></p>
    <b>
     &nbsp;&nbsp;&nbsp;</span></span><asp:TextBox ID="TextBox87" runat="server" 
        Visible="False" Width="32px"></asp:TextBox>
    <asp:TextBox ID="TextBox88" runat="server" Visible="False" Width="32px"></asp:TextBox>
    <asp:TextBox ID="TextBox89" runat="server" Visible="False" Width="32px"></asp:TextBox>
    <asp:TextBox ID="TextBox90" runat="server" Visible="False" Width="30px"></asp:TextBox>
    </p>
    <b>
                
                 <span style="font-size: 10pt; font-weight:bold; font-family: Arial">
             <p class="style106">
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                
                 <span style="font-size: 10pt; font-weight:bold; font-family: Arial">
                 <b>
                
                 <span lang="en-us">
                 &nbsp;<span style="font-size: 10pt; font-weight:bold; font-family: Arial"><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                 </span>
                 <asp:Button ID="Button7" runat="server" onclick="Button7_Click" Text="Log Out" 
                     style="height: 26px" Visible="False" />
                                  <asp:TextBox ID="TextBox85" runat="server" Visible="False"></asp:TextBox>
                                  <asp:TextBox ID="TextBox86" runat="server" Visible="False"></asp:TextBox>
        </span></b></span>
            </p>
             </span>
             <p class="style101" style="margin-top: 3px;">
                 <span style="font-size: 10pt; font-weight:bold; font-family: Arial">
                 <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                 </span><b><asp:Label ID="Label2" runat="server" Text="Label" Visible="False" 
                     Font-Bold="True" Font-Size="X-Large"></asp:Label>
                 </b>
            </p>
             </span>
             <p class="style7" style="margin-top: 3px;">
                 <span style="font-size: 10pt; font-weight:bold; font-family: Arial">
                 <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                 <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                 <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                 </span></span></p>
             <span style="font-size: 10pt; font-weight:bold; font-family: Arial">
             <asp:TextBox ID="TextBox56" runat="server" Visible="False" Width="69px"></asp:TextBox>
             <span style="font-size: 10pt; font-weight:bold; font-family: Arial">
             <asp:TextBox ID="TextBox57" runat="server" Visible="False" Width="68px"></asp:TextBox>
             <span style="font-size: 10pt; font-weight:bold; font-family: Arial">
             <asp:TextBox ID="TextBox58" runat="server" Visible="False" Width="61px"></asp:TextBox>
             <span style="font-size: 10pt; font-weight:bold; font-family: Arial">
             <asp:TextBox ID="TextBox59" runat="server" Visible="False" Width="65px"></asp:TextBox>
             <span style="font-size: 10pt; font-weight:bold; font-family: Arial">
             <asp:TextBox ID="TextBox60" runat="server" Visible="False" Width="66px"></asp:TextBox>
             <span style="font-size: 10pt; font-weight:bold; font-family: Arial">
             <asp:TextBox ID="TextBox61" runat="server" Visible="False" Width="66px"></asp:TextBox>
              
             </span></span></span></span></span></span></span>
             <asp:TextBox ID="TextBox62" runat="server" Visible="False"></asp:TextBox>
             <h1>
                 <asp:TextBox ID="TextBox51" runat="server" Visible="False" Width="55px"></asp:TextBox>
                 <span style="font-size: 10pt; font-weight:bold; font-family: Arial">
                 <asp:TextBox ID="TextBox53" runat="server" Visible="False" Width="74px"></asp:TextBox>
                 </span>
                 <asp:TextBox ID="TextBox52" runat="server" Visible="False" Width="61px"></asp:TextBox>
                 <span style="font-size: 10pt; font-weight:bold; font-family: Arial">
                 <asp:TextBox ID="TextBox54" runat="server" Visible="False" Width="82px"></asp:TextBox>
                 <span style="font-size: 10pt; font-weight:bold; font-family: Arial">
                 <asp:TextBox ID="TextBox55" runat="server" Visible="False" Width="67px"></asp:TextBox>
                 </span></span>
             </h1>
        </span></span></span></span></span></span></span>
        </span>
    
    
    </form>
    
</body>
</html>
