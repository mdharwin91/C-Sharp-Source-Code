<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="textsms.aspx.cs" Inherits="SchoolWeb.textsms" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Text SMS</title>
    <style type="text/css">
        .style1
        {
            height: 801px;
            width: 983px;
        }
        .style4
        {
            width: 979px;
        }
        .style5
        {
            font-family: Cambria;
        }
        .style6
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
    <div class="style4">
    
    <asp:Panel ID="Panel1" runat="server" 
        BackImageUrl="~/emblem_With Name_with_Vasanthi_eDITED.png" Height="100px" 
        Width="980px">
        <br class="style5" />
        <br class="style5" />
        <br class="style5" />
        <br class="style5" />
        <br class="style5" />
        <br />
        <span lang="en-us">Username: </span>
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <span lang="en-us">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span lang="en-us">SMS Balance :<span lang="en-us"><asp:TextBox ID="TextBox7" 
            runat="server" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" 
            Font-Size="Large" Width="71px"></asp:TextBox>
        </span></span></span>
        <br class="style5" />
        <span class="style5" lang="en-us"><i>Please verify the details before sending 
        SMS.</i><br />
        Select the option:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="SMS_Selection" 
            Text="Sending SMS for Fees" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="SMS_Selection" 
            Text="Sending SMS for New Student Admission" />
        <br />
        Name : </span>
        <asp:TextBox ID="TextBox1" runat="server" Width="128px"></asp:TextBox>
        <span lang="en-us">&nbsp;STD: </span>
        <asp:TextBox ID="TextBox2" runat="server" Width="37px"></asp:TextBox>
        <span lang="en-us">&nbsp;Fees: </span>
        <asp:TextBox ID="TextBox3" runat="server" Width="83px"></asp:TextBox>
        <span lang="en-us">&nbsp;Date:
        <asp:TextBox ID="TextBox4" runat="server" Width="100px"></asp:TextBox>
        &nbsp;Mobile: </span>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <span lang="en-us">&nbsp; </span>
        <br />
        <span lang="en-us">Total Number of Records: </span>
        <asp:Label ID="Label1" runat="server" Text="0"></asp:Label>
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="View Details" />
        <span lang="en-us">&nbsp;&nbsp;&nbsp; </span>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Send" />
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Clear" />
        <span lang="en-us"><span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Logout" />
        <br />
        Details of last message sent:<br />
        </span>
        <asp:TextBox ID="TextBox6" runat="server" BackColor="White" Height="60px" 
            TextMode="MultiLine" Width="978px"></asp:TextBox>
        <br />
        <div class="style6">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                BorderColor="#E7E7FF" BorderStyle="Solid" BorderWidth="1px" 
                CellPadding="3" CellSpacing="2" Width="978px">
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <AlternatingRowStyle BackColor="#F7F7F7" />
            </asp:GridView>
        </div>
    </asp:Panel>
    
    </div>
    
    </div>
    </form>
</body>
</html>
