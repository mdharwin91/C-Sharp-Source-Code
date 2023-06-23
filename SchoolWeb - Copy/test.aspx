<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="SchoolWeb.test" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">

<link rel="Stylesheet" type="text/css" href="style.css" />
    <title>Test Page</title>
    
<script language="javascript" type="text/javascript">
// <!CDATA[

function File1_onclick() {

}

// ]]>
</script>
    <style type="text/css">
        .style1
        {
            height: 582px;
        }
        .style2
        {
            font-family: Cambria;
        }
    </style>
</head>
<body>
 <div class="header">
    <div style="width:100%">
        <div class="logo"><img src="emblem_png.png" class="style_img" />

        </div>
        <div class="title"><h1>VASANTHAM</h1><br/><h3>NURSERY AND PRIMARY SCHOOL</h3>
        </div>
        <div class="logo2"><img src="UNTITLED_001_1421299653802.jpg" class="style_img" />

        </div>

    </div><br/><br/><br/><br/><br/><br/>
    <div style="width:100%;">
        <div class="username">User : Dharwin M</div>
        <div class="navigation"><ul>
             <a href="<%= ResolveUrl("CommonTab.aspx") + "?val=" + Label2.Text %>"><li>Common</li></a>
            <a href="<%= ResolveUrl("first.aspx") + "?val=" + Label2.Text %>"><li>Students</li></a>
            <a href="<%= ResolveUrl("bill.aspx") + "?val=" + Label3.Text +"&val1="+ Label2.Text%>"><li>Bill</li></a>
            <a href="<%= ResolveUrl("dailydet.aspx") + "?val=" + Label2.Text %>"><li>Daily Details</li></a>
            <a href="<%= ResolveUrl("default.aspx") %>"><li>Logout</li></a></ul>
        </div>
    </div>
  </div>

    <form id="form1" runat="server" class="style1" title="Pull">
    <span class="style2">ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </span>
    <br class="style2" />
    <span class="style2">NAME :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </span>
    <br class="style2" />
    <br class="style2" />
    <span lang="en-us"><span class="style2">AGE:<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
    </span>
    <br class="style2" />
    <br class="style2" />
    <span class="style2">GENDER:<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
    </span>
    <br class="style2" />
    <br class="style2" />
    <span class="style2">NATIONALITY: </span> </span>
    <span class="style2">
    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
    <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="upload" />
    </span>
    <br class="style2" />
    <span class="style2">Image :
    <asp:Image ID="Image1" ImageUrl="test.ashx?roll_no=" runat="server" Height="125px" Width="100px" />
    </span>
    <br class="style2" />
    <span class="style2">
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
        Text="Get Image" />
    </span>
    <br class="style2" />
    <hr />
    <span class="style2">
    <asp:Label ID="Label1" runat="server" Text="To upload the image"></asp:Label>
    </span>
    <br class="style2" />
    <span class="style2">ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </span>
    <br class="style2" />
    <span class="style2">Name&nbsp;
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </span>
    <br class="style2" />
    <span class="style2">
    <asp:FileUpload ID="FileUpload1" runat="server" />
    </span>
    <br class="style2" />
    <span class="style2">
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="upload" />
    </span>
    <br class="style2" />
    <span class="style2">
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
        Text="Send Email" />
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </span>
    <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
    
    <br class="style2" />
    <hr />
    <span lang="en-us"><span class="style2">Ad No
    </span>
    <br class="style2" />
    <span class="style2">From:</span></span><span class="style2"><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    </span>
    <span lang="en-us">
    <br class="style2" />
    <span class="style2">To:&nbsp;&nbsp;&nbsp; </span> </span>
    <span class="style2">
    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
    </span>
    <span lang="en-us">
    <br class="style2" />
    <span class="style2">Name: </span> </span>
    <span class="style2">
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    </span>
    <span lang="en-us" class="style2">Initial:</span><span class="style2"><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    </span>
    <span lang="en-us" class="style2">Name:</span><span class="style2"><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Update" />
    </span>
    <br class="style2" />
    
    <hr />
        
    <span class="style2">
        
    <asp:Button ID="Button5" runat="server" onclick="Button5_Click1" Text="Excel" />
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <span lang="en-us">Reg No:
    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
    Name: </span>
    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
    <span lang="en-us">Gender: </span>
    <asp:TextBox ID="TextBox15" runat="server" Width="180px"></asp:TextBox>
    <asp:Button ID="Button8" runat="server" onclick="Button8_Click" Text="GET" />
    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    <br />
    </span>
    <asp:FileUpload ID="FileUpload2" runat="server" />
    <br class="style2" />
    <span class="style2">
    <asp:Button ID="Button7" runat="server" onclick="Button7_Click" Text="upload" />
    </span>
    <asp:GridView ID="GridView1" runat="server" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2">
        <RowStyle BackColor="#FFF7E7" BorderColor="Black" ForeColor="#8C4510" />
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" Font-Size="Large" 
            ForeColor="Maroon" />
    </asp:GridView>
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    <asp:Button ID="Button9" runat="server" onclick="Button9_Click" 
        Text="Download" />
    <br />
    <br />
    <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
    <br />
    <br />
    <span lang="en-us">From</span><asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
    <span lang="en-us">To</span><asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
    <br />
    <br />
    <span lang="en-us">OLD DATE Format </span>
    <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
    <br />
    <br />
    <span lang="en-us">New Date Format </span>
    <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Button ID="Button10" runat="server" onclick="Button10_Click2" Text="Get" />
    <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
    <asp:Button ID="Button11" runat="server" onclick="Button11_Click" Text="Put" />
        <br />
        <br />
        To Update Student details from Student Table to Bill Table:<br />
        <br />
        Admi No :<asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
        <asp:Button ID="Button13" runat="server" OnClick="Button13_Click" Text="Get" />
        <br />
        Name :<asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
        <br />
        STD :<asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
    <br />
        <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="Upload" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:MultiView ID="MultiView1" runat="server" 
        onactiveviewchanged="MultiView1_ActiveViewChanged">
        <span lang="en-us">Hello</span>
    </asp:MultiView>
    <br />
    <br />
</form>
    
    </body>
</html>
