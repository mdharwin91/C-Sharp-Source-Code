<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bill_2.aspx.cs" Inherits="SchoolWeb.Bill_2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link rel="Stylesheet" type="text/css" href="style.css" />
    <link id="Link1" runat="server" rel="shortcut icon" href="~/favicon.ico" type= "image/x-icon" />
    <title>BILL - VNPS</title>
</head>
<script type="text/javascript"> 

function PrintDiv() {
    var DocumentContainer = document.getElementById('bill_print');
    var WindowObject = window.open('', 'PrintWindow', 'width=1250,height=750,top=50,left=0,toolbars=no,scrollbars=yes,status=yes,resizable=no');
    var strHtml = "<html>\n<head>\n<link rel=\"stylesheet\" type=\"text/css\"  href=\"style.css\">\n</head><body><h4>\n<div style=\"testStyle \">\n" + DocumentContainer.innerHTML + "\n</div>\n</body>\n</html>";
    
    WindowObject.document.writeln(strHtml);
    WindowObject.document.close();
    WindowObject.focus();
    WindowObject.print();
    WindowObject.close();
    }
    </script>
<body>
    <form id="form1" runat="server">


        <div>
            <div class="Sec-header">
                <div>
                    <div class="Sec-logo"><img src="Img\emblem_png.png" class="style_img" /></div>
                    <div class="Sec-title"><h1>VASANTHAM NURSERY AND PRIMARY SCHOOL</h1></div>
                    <div class="Sec-logo2"><img src="Img\UNTITLED_001_1421299653802.jpg" class="style_img" /></div>
                </div>
                <div class="Sec-titlebar">
                    <div style="width:20%; float:left; color:forestgreen; font-size:x-large;">User : <asp:Label ID="Label2" runat="server"></asp:Label></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("default.aspx") %>"><li style="color:red;">Logout</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("dailydet.aspx") + "?val=" + Label2.Text %>"><li style="color:red;">Daily Details</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("bill_2.aspx") + "?val=" + Label16.Text +"&val1="+ Label2.Text%>"><li style="color:aqua;">Bill</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("first.aspx") + "?val=" + Label2.Text %>"><li style="color:red;">Students</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("enquiry.aspx") + "?val=" + Label2.Text %>"><li style="color:red;">Enquiry</li></a></div>
                    <div style="width:10%; float:right; font-size:x-large;"><a href="<%= ResolveUrl("CommonTab.aspx") + "?val=" + Label2.Text %>"><li style="color:red;">Common</li></a></div>
                </div>
            </div>
        </div>

   
         <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
    <div class="empty"></div>
    <div style="width:100%;">
        <!-- Print Area -->
    <div id="bill_print" style="width :48%; float:left; margin-left:15px; ">
        <div style="border:solid; border-color:black; border-width: medium; ">
        <!-- Logo and Name -->
        <div style="border:solid; border-color:black;">
        <div style="width:100%; height:100px;">
            <!-- Logo -->
            <div style="width:13%; height:100px; float:left; border:thin;"><img src="Img/emblem1-removebg-preview.png" class="style_img" /></div>
            <!-- School Name -->
            <div style="width:80%; height:100px; float:left; float:right; font-family:Cooper Black;"><center><h1>VASANTHAM</h1><h3> Nursery And Primary School</h3>1/293, Main Road, Maruthakulam,<br/>Tirunelveli - 627151.</center></div>
        </div>
            </div>
        <br />
                <!-- Bill No & Date -->
        <div style="width:100%;">
            <div style="width:49%; float:left; " class="labelClassBill">
                <div style="width:35%; float:left; " >Bill No</div>
                <div style="width:64%; float:left; " ><asp:TextBox ID="TextBox5" runat="server" CssClass="textBoxClassBillCentered" Width="100px" Height="30px" BorderStyle="Solid"></asp:TextBox></div>
                </div>
            <div style="width:48%; float:left; " class="labelClassBill">

                <div style="width:35%; float:left; " >Date</div>
                <div style="width:64%; float:left; " ><asp:TextBox ID="TextBox6" runat="server" CssClass="textBoxClassBillCentered" Width="120px" Height="30px"  BorderStyle="Solid"></asp:TextBox></div>

            </div>
        </div><br /><br />
            <!-- Ad no & STD -->
        <div style="width:100%; float:left;">

            <div style="width:49%; float:left;" class="labelClassBill">
                <div style="width:35%; float:left;">STD</div>
                <div style="width:64%; float:left;"><asp:TextBox ID="TextBox13" runat="server" CssClass="textBoxClassBillCentered"  BorderStyle="Solid" Width="100px"  Height="30px"></asp:TextBox></div>

            </div>
            <div style="width:48%; float:left; " class="labelClassBill">
                <div style="width:35%; float:left; ">Ad.No.</div>
                <div style="width:64%; float:left; "><asp:TextBox ID="TextBox7" runat="server" CssClass="textBoxClassBillCentered"  BorderStyle="Solid" Width="100px"  Height="30px"></asp:TextBox></div>

            </div>
            </div><br /><br />
            <!-- Name -->
        <div style="width:100%; float:left;" class="labelClassBill">
                Name  : <asp:TextBox ID="TextBox1" runat="server" Width="280px" CssClass="textBoxClassBillCentered"  BorderStyle="Solid" Height="30px"></asp:TextBox>

            </div><br /><br /><br />
   
    <div style="width:100%; float:left; height:225px">
        <!-- Particular-->
    <div style="border-style:solid; border-width: medium; border-color: inherit; float:left; width:67%; height:220px; margin-left:3px;">
        <center>Particulars
         <br/>
         <asp:TextBox ID="TextBox2" runat="server" Width="100px" Height="25px" ReadOnly="True" class="textBoxClassBillCentered" ></asp:TextBox><br/>     
         <asp:TextBox ID="TextBox3" runat="server" Width="100px" Height="25px" ReadOnly="True" class="textBoxClassBillCentered" ></asp:TextBox><br/>
         <asp:TextBox ID="TextBox8" runat="server" Width="150px" Height="25px" ReadOnly="True" class="textBoxClassBillCentered" ></asp:TextBox><br/>
         <asp:TextBox ID="TextBox14" runat="server" Width="100px" Height="25px" ReadOnly="True" class="textBoxClassBillCentered" ></asp:TextBox><br/>
         <asp:TextBox ID="TextBox15" runat="server" Width="100px" Height="25px" ReadOnly="True" class="textBoxClassBillCentered" ></asp:TextBox><br/>
         <asp:TextBox ID="TextBox21" runat="server" Width="100px" Height="25px" ReadOnly="True" class="textBoxClassBillCentered" ></asp:TextBox><br/>
         <asp:TextBox ID="TextBox25" runat="server" Width="100px" Height="25px" ReadOnly="True" class="textBoxClassBillCentered" ></asp:TextBox><br/>
         <div style="border:solid; border-color:black; height:23px;"><b>Total</b> </div>
        </center>
    </div>
        
        <!-- Amount -->
    <div style="border:solid; height:220px; width:28%; float:left;">
    <center>Amount<br/>
    <asp:TextBox ID="TextBox9"  runat="server" Width="70px" Height="25px" ReadOnly="True" class="textBoxClassBillCentered" ></asp:TextBox><br/>
    <asp:TextBox ID="TextBox10" runat="server" Width="70px" Height="25px" ReadOnly="True" class="textBoxClassBillCentered" ></asp:TextBox><br/>
    <asp:TextBox ID="TextBox11" runat="server" Width="70px" Height="25px" ReadOnly="True" class="textBoxClassBillCentered" ></asp:TextBox><br/>
    <asp:TextBox ID="TextBox16" runat="server" Width="70px" Height="25px" ReadOnly="True" class="textBoxClassBillCentered" ></asp:TextBox><br/>
    <asp:TextBox ID="TextBox17" runat="server" Width="70px" Height="25px" ReadOnly="True" class="textBoxClassBillCentered" ></asp:TextBox><br/>
    <asp:TextBox ID="TextBox22" runat="server" Width="70px" Height="25px" ReadOnly="True" class="textBoxClassBillCentered" ></asp:TextBox><br/>
    <asp:TextBox ID="TextBox24" runat="server" Width="70px" Height="25px" ReadOnly="True" class="textBoxClassBillCentered" ></asp:TextBox><br/>
        
    <div style="border:solid; border-color:black; height:23px;"><asp:TextBox ID="TextBox12" runat="server" Width="70px" Font-Bold="True" Font-Size="Large" class="textBoxClassBillCentered"></asp:TextBox></div>
    </center>
    </div>        
    </div>
        <!-- Footer -->
    <div style="Width:100%;"><asp:TextBox ID="TextBox23" runat="server" style="Width:100%; font-family:Cambria; border-style:none; "></asp:TextBox></div>
    Billed By : <asp:Label ID="Label16" runat="server" Text="Label" style="font-family:Cambria; "></asp:Label><asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
    </div>
    </div>
    </div>
        <br/>  
    <div style="margin-left:50%"> <!--Right -->
    <div>
    <div style="width:30%; float:left;">
    <asp:Button ID="Button1" runat="server" Text="Last Bill" class="buttonClass" onclick="Button1_Click" /><br/><br/>
    <asp:Button ID="Button4" runat="server" Text="Fetch" class="buttonClass"  onclick="Button4_Click" /><br/><br/>
    <asp:Button ID="Button5" runat="server" Text="--" Width="70px" Height="25px" onclick="Button5_Click"/></div>
    <div style="width:30%; float:left;">
    <asp:Button ID="Button2" runat="server" Text="Calculate" class="buttonClass" 
            onclick="Button2_Click" /><br/><br/>
    <asp:Button ID="Button6" runat="server" Text="New Bill" class="buttonClass" 
            onclick="Button6_Click" /><br/><br/>
    <asp:Button ID="Button7" runat="server" Text="Old Bill" class="buttonClass" OnClick="Button7_Click" /></div>
    <div style="width:30%; float:left;">
    <asp:Button ID="Button3" runat="server" Text="Save" class="buttonClass" 
            onclick="Button3_Click" /><br/><br/>
    <asp:Button ID="Button8" runat="server" Text="Print" class="buttonClass" 
            OnClientClick="return PrintDiv();" onclick="Button8_Click" /><br/><br/>
    <asp:Button ID="Button9" runat="server" Text="Save&Print" class="buttonClassDisabled" onclick="Button9_Click" Enabled="false" /><br/><br/><br/>  </div>
    </div>
            <div>
            <div style="width:30%; float:left;"><asp:RadioButton ID="RadioButton1" runat="server" Text="  Term Fee" GroupName="Fee" oncheckedchanged="RadioButton1_CheckedChanged"/>
                <br/><br/>
            <asp:RadioButton ID="RadioButton2" runat="server" Text="  Monthly Fee" GroupName="Fee" oncheckedchanged="RadioButton2_CheckedChanged" Visible="False" /><br/>
            </div>
            
            <div style="width:33%; float:left;">
            <asp:DropDownList ID="DropDownList1" runat="server" Width="125px" CssClass="textBoxClass">
                <asp:ListItem Value="28" Text="Term - I">Term - I</asp:ListItem>
                <asp:ListItem Value="29" Text="Term - II">Term - II</asp:ListItem>
                <asp:ListItem Value="30" Text="Term - III">Term - III</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TextBox18" runat="server" Width="70px" CssClass="textBoxClassCentered" Visible="false"></asp:TextBox>
                <br/><br/>
            <asp:DropDownList ID="DropDownList2" runat="server" Width="90px" Visible="False">
                <asp:ListItem Value="6" Text="JUN">JUN</asp:ListItem>
                <asp:ListItem Value="7" Text="JUL">JUL</asp:ListItem>
                <asp:ListItem Value="8" Text="AUG">AUG</asp:ListItem>
                <asp:ListItem Value="9" Text="SEP">SEP</asp:ListItem>
                <asp:ListItem Value="10" Text="OCT">OCT</asp:ListItem>
                <asp:ListItem Value="11" Text="NOV">NOV</asp:ListItem>
                <asp:ListItem Value="12" Text="DEC">DEC</asp:ListItem>
                <asp:ListItem Value="1" Text="JAN">JAN</asp:ListItem>
                <asp:ListItem Value="2" Text="FEB">FEB</asp:ListItem>
                <asp:ListItem Value="3" Text="MAR">MAR</asp:ListItem>
                <asp:ListItem Value="4"  Text="APR">APR</asp:ListItem>
                <asp:ListItem Value="5"  Text="MAY">MAY</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TextBox19" runat="server" Width="70px" Visible="False"></asp:TextBox><br/></div>
            
            <div style="width:33%; float:left;">
            
                <asp:RadioButton ID="RadioButton3" runat="server" Text="  Old" 
                    GroupName="stu_type" /><br/>
                <asp:RadioButton ID="RadioButton4" runat="server" Text="  New" GroupName="stu_type"/>
                <br/>
                <asp:Button ID="Button10" runat="server" Text="Add" class="buttonClass" onclick="Button10_Click" />
                <asp:Label ID="Label1" runat="server" Text="Left :" Visible="false"></asp:Label>
                <asp:TextBox ID="TextBox20" runat="server" Width="10px" Visible="False"></asp:TextBox>
                <asp:TextBox ID="TextBox26" runat="server" Width="10px" Visible="False"></asp:TextBox>
                <br/><br/>
             </div>
            </div>
    </div>
    
    <div ><!--GRID VIEW 1-->
    
    <center>
    <br/>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" 
            CellPadding="4" DataKeyNames="bill_num" DataSourceID="SqlDataSource2" 
            ForeColor="Black" CellSpacing="2" Width="50%" 
            PageSize="4" BorderStyle="Solid" Height="100px" AllowPaging="True" 
            AllowSorting="True">
            <RowStyle BackColor="White" Font-Size="Large" Height="20px" />
            <Columns>
                <asp:BoundField DataField="bill_num" HeaderText="Bill No" ReadOnly="True" SortExpression="bill_num" />
                <asp:BoundField DataField="admi_num" HeaderText="Admi No" SortExpression="admi_num" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="mon" HeaderText="Month" SortExpression="mon" />
                <asp:BoundField DataField="amt" HeaderText="Amt" SortExpression="amt" />
                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                <asp:BoundField DataField="std" HeaderText="STD" SortExpression="std" />
                <asp:BoundField DataField="billby" HeaderText="Billed By" SortExpression="billby" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" HorizontalAlign="Center" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" 
            
            SelectCommand="SELECT [bill_num], [admi_num], [name], [mon], [amt], [date], [std], [billby] FROM [bill] WHERE ([admi_num] = @admi_num) ORDER BY [bill_num] DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox7" Name="admi_num" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        
    </center>
    </div>
    </div>
    </form>
</body>
</html>
