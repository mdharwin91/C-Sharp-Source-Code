<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="first.aspx.cs" Inherits="SchoolWeb.first" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link rel="Stylesheet" type="text/css" href="style.css" />
<meta http-equiv="refresh" content ="300" />

<link id="Link1" runat="server" rel="shortcut icon" href="~/favicon.ico" type= "image/x-icon" />
<link id="Link2" runat="server" rel="icon" href="~/favicon.ico" type="image/ico" hreflang="aa" />
    <title>Students Entry</title><script type="text/javascript" language="javascript">
    window.onload = function () {
        noBack();
    }
    function noBack() {
        window.history.forward();
    }
</script>
    <style type="text/css">
        #form1
        {
            height: 1px;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            margin-left: 0px;
        }
        .style4
        {
            margin-left: 13px;
            margin-bottom: 0px;
        }
        .style6
        {
            margin-bottom: 0px;
        }
        #form2
        {
            height: 1px;
        }
        .style18
        {
            width: 978px;
            height: 1px;
        }
        </style>
</head>
<body >
    <form id="form1" runat="server" class="style18">

        <div>
            <div class="Sec-header">
                <div>
                    <div class="Sec-logo"><img src="Img/emblem_png.png" class="style_img" /></div>
                    <div class="Sec-title"><h1>VASANTHAM</h1><br/><h3>NURSERY AND PRIMARY SCHOOL</h3></div>
                    <div class="Sec-logo2"><img src="Img/UNTITLED_001_1421299653802.jpg" class="style_img" /></div>
                </div>
                <div class="Sec-titlebar">
                    <div style="width:20%; float:left; color:forestgreen; font-size:x-large;">User : <asp:Label ID="Label2" runat="server"></asp:Label></div>
                    <div style="width:10%; float:right; font-size:x-large;"> <a href="<%= ResolveUrl("default.aspx") %>"><li style="color:red;">Logout</li></a></div>
                    <div style="width:15%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("dailydet.aspx") + "?val=" + Label2.Text %>"><li style="color:red;">Daily Details</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("bill_2.aspx") + "?val=" + Label6.Text +"&val1="+ Label2.Text%>"><li style="color:red;">Bill</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("first.aspx") + "?val=" + Label2.Text %>"><li style="color:Aqua;">Students</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("enquiry.aspx") + "?val=" + Label2.Text %>"><li style="color:red;">Enquiry</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("CommonTab.aspx") + "?val=" + Label2.Text %>"><li style="color:red;">Common</li></a></div>
                </div>
            </div>
        </div>








    <br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<div style="width:100%; ">
<div style="width:50%; float:left; margin-left:40px;"> <!-- Body Right-->
<div style="float:right;"> 
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Get App Number" Height="30px" Width="106px" TabIndex="2" 
        BorderStyle="Groove" /></div><br /><br />
        Admission Number : 
        <div style="float:right;"><asp:TextBox ID="TextBox1" runat="server" TabIndex="1"></asp:TextBox></div><br /><br />
        Name :
        <div style="float:right;"><asp:TextBox ID="TextBox2" runat="server" TabIndex="2"></asp:TextBox></div><br /><br />
        Initial :
        <div style="float:right;"><asp:TextBox ID="TextBox20" runat="server" Width="31px" TabIndex="3"></asp:TextBox></div><br /><br />
        Standard :
        <div style="float:right;"><asp:DropDownList 
            ID="DropDownList1" runat="server" Height="22px" 
        style="margin-left: 0px" Width="167px" TabIndex="4">
        <asp:ListItem>I</asp:ListItem>
        <asp:ListItem>II</asp:ListItem>
        <asp:ListItem>III</asp:ListItem>
        <asp:ListItem>IV</asp:ListItem>
        <asp:ListItem>V</asp:ListItem>
        <asp:ListItem>L.K.G</asp:ListItem>
        <asp:ListItem>U.K.G</asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox 
        ID="TextBox3" runat="server" TabIndex="4" Visible="False" Width="16px"></asp:TextBox></div><br /><br />
        Date Of Birth :
        <div style="float:right;">
            <asp:TextBox 
            ID="TextBox4" runat="server" TabIndex="6" MaxLength="10" TextMode="Date"></asp:TextBox>
            </div><br /><br />
        EMIS :
        <div style="float:right;"><asp:TextBox ID="TextBox5" runat="server" TabIndex="8"></asp:TextBox></div><br /><br />
        Date Of Join :
        <div style="float:right;">
            <asp:TextBox ID="TextBox13" runat="server" TabIndex="9" Height="20px" TextMode="Date"></asp:TextBox>
    </div><br /><br />
        Free Education :
        <div style="float:right;"><asp:DropDownList ID="DropDownList12" runat="server" TabIndex="9">
            <asp:ListItem>No</asp:ListItem>
            <asp:ListItem Value="RTE/FC">Yes</asp:ListItem>
        </asp:DropDownList></div><br /><br />
        Mobile :
        <div style="float:right;"><asp:TextBox ID="TextBox18" runat="server" TabIndex="10"></asp:TextBox></div><br /><br />
        <div style="float:right; margin-right:0px">
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Add" 
            TabIndex="11" Height="26px" Width="60px" /></div>
        <div style="float:right; margin-right:20px">
        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Clear" 
            TabIndex="12" Height="26px" Width="60px" /></div>
            <div style="float:left;"><asp:Button ID="Button21" runat="server" onclick="Button21_Click" 
            Text="Click here for bulk upload" Height="26px"/></div>
        
</div>

<div style="width:40%; float:right; "> <!-- Body Right-->

        <div style="float:right;"><asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Fetch" style="height: 26px" TabIndex="13" Height="26px" /></div><br /><br />
        Admission Number :        <div style="float:right;"><asp:TextBox ID="TextBox7" runat="server" TabIndex="12"></asp:TextBox></div><br /><br />
        Name :         <div style="float:right;"><asp:TextBox ID="TextBox8" runat="server" TabIndex="14"></asp:TextBox></div><br /><br />
        Standard :       <div style="float:right;"><asp:TextBox ID="TextBox9" runat="server" TabIndex="15" Width="98px"></asp:TextBox>
            <asp:DropDownList 
            ID="DropDownList2" runat="server" Height="22px" 
        style="margin-left: 0px" Width="60px" TabIndex="15">
        <asp:ListItem>I</asp:ListItem>
        <asp:ListItem>II</asp:ListItem>
        <asp:ListItem>III</asp:ListItem>
        <asp:ListItem>IV</asp:ListItem>
        <asp:ListItem>V</asp:ListItem>
        <asp:ListItem>L.K.G</asp:ListItem>
        <asp:ListItem>U.K.G</asp:ListItem>
            <asp:ListItem>I (LEFT)</asp:ListItem>
            <asp:ListItem>II (LEFT)</asp:ListItem>
            <asp:ListItem>III (LEFT)</asp:ListItem>
            <asp:ListItem>IV (LEFT)</asp:ListItem>
            <asp:ListItem>V (LEFT)</asp:ListItem>
            <asp:ListItem>U.K.G (LEFT)</asp:ListItem>
            <asp:ListItem>L.K.G (LEFT)</asp:ListItem>
            <asp:ListItem>STD</asp:ListItem>
    </asp:DropDownList></div><br /><br />
        Date Of Birth: 
        <div style="float:right;"><asp:TextBox ID="TextBox10" runat="server" Width="106px" Visible="True" TextMode="Date"></asp:TextBox>
    </div><br /><br />
        EMIS : 
        <div style="float:right;"><asp:TextBox ID="TextBox11" runat="server" TabIndex="19"></asp:TextBox></div><br /><br />
        Date Of Leaving:
        <div style="float:right;"><asp:TextBox ID="TextBox12" runat="server" Visible="True" Width="100px" TextMode="Date"></asp:TextBox>
    </div><br /><br />
        Free Education :
        <div style="float:right;"><asp:TextBox ID="TextBox17" runat="server" Width="54px"></asp:TextBox>
            <asp:DropDownList ID="DropDownList13" runat="server" TabIndex="23">
            <asp:ListItem>No</asp:ListItem>
            <asp:ListItem Value="RTE/FC">Yes</asp:ListItem>
        </asp:DropDownList></div><br /><br />
        Mobile :
        <div style="float:right;"><asp:TextBox ID="TextBox19" runat="server" Width="103px" 
                TabIndex="24"></asp:TextBox></div><br /><br /><br /><br />
        
        <div style="float:right; margin-right:0px;"><asp:Button ID="Button4" runat="server" 
                onclick="Button4_Click" Text="Update" 
            style="height: 26px" width="60px" TabIndex="24"/>
        </div>
        <div style="float:right; margin-right:20px;"><asp:Button ID="Button6" 
                runat="server" onclick="Button6_Click" Text="Clear" 
            Height="26px" width="40px" TabIndex="25" /></div>
  </div>
</div>


<div class="body-content">
    
     
    
    
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    
    
    <span lang="en-us"><asp:Label ID="Label3" runat="server" Text="Label" 
    Visible="False"></asp:Label>
<asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
<asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
<asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>

    </span><span 
            lang="en-us"> </span><span lang="en-us"> </span>
    
    
    <asp:Button ID="Button20" runat="server" onclick="Button20_Click" Text="Clr" 
        Visible="False" />
    <br />
    <br />
    <span 
            lang="en-us"> 
        <span lang="en-us">
        
        </span><span 
            lang="en-us">  </span>
    
        <asp:Button ID="Button11" runat="server" onclick="Button11_Click" 
            Text="Temp Button" Visible="False" />
    <br />
    <br />
    <span 
            lang="en-us"> </span>
        
        <span 
            lang="en-us"> </span><span 
            lang="en-us">  </span>
            
        
    <br />
    <br />
         <span lang="en-us"></span> <span lang="en-us">
        </span>
        <span lang="en-us">
    </span><asp:TextBox 
            ID="TextBox14" runat="server" Visible="False" Width="1px"></asp:TextBox>
        <asp:TextBox ID="TextBox15" runat="server" Visible="False" 
            Width="1px"></asp:TextBox>
        
    <span lang="en-us"> </span>
        
    
        <span lang="en-us">
        
        </span><asp:Button ID="Button9" runat="server" Height="19px" 
            onclick="Button9_Click" Text="Change" Width="61px" Visible="False" />
        <br />
        <span lang="en-us">
        </span>
    <br />
   <span 
            lang="en-us"> </span>
        
    <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
        <span lang="en-us"> 
    </span><span lang="en-us"> </span>
    <br />
    <br />
         <span lang="en-us"></span> <span lang="en-us"> </span>
        <span 
            lang="en-us"> </span> 
    
        <span lang="en-us">
        
        </span><asp:Button ID="Button10" runat="server" Height="19px" 
            onclick="Button10_Click" Text="Change" Width="45px" Visible="False" />
        <br />
        <br />
        
        <span lang="en-us"> </span>
        
    <span lang="en-us">
    </span>
        <span lang="en-us"> </span>
        
        
        <br />
    <br />
    <span lang="en-us">
    </span>
    
        <span 
            lang="en-us">    
     </span>
    
        <br />
    <p class="style4">
    <asp:Button ID="Button7" runat="server" onclick="Button7_Click" Text="Back" 
            CssClass="style3" Visible="False" />
                <span lang="en-us">
        </span>
        
    
        <span lang="en-us">
        </span>
    
        <asp:TextBox ID="TextBox16" runat="server" Visible="False"></asp:TextBox>
        
        <span lang="en-us">
        </span>
        
        

        <span lang="en-us">
        </span>

    </p>
    <p class="style4">
        
    </p>
        <span lang="en-us"> </span>
                
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True"  
                AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                DataKeyNames="admi_num" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                GridLines="Vertical" Height="46px" Width="973px" BackColor="Black" 
                PageSize="5" HorizontalAlign="Center" BorderStyle="None" 
         CellSpacing="5">
                <RowStyle BackColor="#99FFCC" BorderStyle="None" Height="25px" />
                <Columns>
                    <asp:BoundField DataField="admi_num" HeaderText="Ad No" ReadOnly="True" 
                        SortExpression="admi_num" >
                    </asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" >
                    </asp:BoundField>
                    <asp:BoundField DataField="std" HeaderText="STD" SortExpression="std" >
                    </asp:BoundField>
                    <asp:BoundField DataField="freeedu" HeaderText="Free Edu" 
                        SortExpression="freeedu" >
                    </asp:BoundField>
                    <asp:BoundField DataField="doj" HeaderText="DOJ" SortExpression="doj" >
                    </asp:BoundField>
                    <asp:BoundField DataField="emis" HeaderText="EMIS" 
                        SortExpression="emis" >
                    </asp:BoundField>
                    <asp:BoundField DataField="dol" HeaderText="DOL" 
                        SortExpression="dol" >
                    </asp:BoundField>
                    <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
                </Columns>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" HorizontalAlign ="Center" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" HorizontalAlign="Center" />
                <AlternatingRowStyle BackColor="#66FF66" />
            </asp:GridView>
                
                <div class="style2">
            </div>
            <div class="style2">
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
                
                
                
            SelectCommand="SELECT [admi_num], [name], [std], [doj], [emis], [dol], [dob], [freeedu] FROM [stddet] ORDER BY [admi_num] DESC">
            </asp:SqlDataSource>
    </div></form>
    
</body>
</html>
