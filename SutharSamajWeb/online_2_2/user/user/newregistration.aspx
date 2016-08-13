<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newregistration.aspx.cs" Inherits="user_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
   
     <style type="text/css">
       
    .style6
    {
        width: 247px;
    }
    #Reset1
    {
        height: 22px;
    }
        .style9
        {
            width: 269px;
            float: left;
            text-align: left;
            padding-left: 0px;
            padding-bottom: 3px;
        }
        .style11
        {
            height: 34px;
            width: 254px;
        }
        .style12
        {
            width: 254px;
        }
        .style13
        {
            width: 255px;
        }
        .style14
        {
            width: 320px;
        }
        .style15
        {
            width: 269px;
        }
        .style16
        {
            width: 254px;
            height: 27px;
        }
        .style17
        {
            width: 255px;
            height: 27px;
        }
        .style18
        {
            width: 269px;
            float: left;
            text-align: left;
            padding-left: 0px;
            padding-bottom: 3px;
            height: 27px;
        }
    </style>
      
   
</head>
<body>
    <form id="form1" runat="server">
     <table class ="wraper">
        <tr>
            <td class="wraperi" colspan ="2"><center> <table id="toptable">
               <tr><td><a href="home1.aspx">Home</a></td>
               <td ><a href="mmember.aspx">Members</a></td>
               <td><a href="mcommitteemember.aspx">Committee</a></td>
               <td><a href="mcontactus.aspx">Contact Us</a></td>
               <td><a href="maboutus.aspx">About Us</a></td></tr>
             </table></center></td>
        </tr>
        <tr>
            <td colspan="2" class="wraperj">
             <table >
          <tr><td><img src="../../Images/main.png" style="border: 1px outset #c0c0c0; width: 152px; height: 119px;" /></td>
              <td><img src="../../Images/p.png" style="height: 123px; width: 951px" /></td></tr>
         </table></td>
        </tr>
        <tr>
            <td colspan="2" id="wmargin">
                    <marquee direction="center" onmouseout="this.start()" onmouseover="this.stop()" scrollamount="1" scrolldelay="30">
                
                        Welcome to Shri Dhandhar Mevada Suthar Samaj
                    </marquee></td>
        </tr>
        <tr class ="content">
            <td><div style="height: 763px">
            <div class ="searchcolumn "> <asp:TextBox ID="txtsearch" runat="server" Width="164" BorderColor="Black" BorderStyle="Outset" BorderWidth="2"></asp:TextBox>&nbsp;&nbsp;
                <asp:Button ID="search" runat="server" Text="Search" height="23px" 
                    BackColor="#999999" BorderColor="#666666" BorderStyle="Outset" BorderWidth="1" 
                    onclick="search_Click" />
                        
</div>
                
<div> <img src="../../Images/a.gif" style="width: 275px" /></div></div>
</td>
<td class="rightcolumn">
<div style="height: 722px">
<table style="text-decoration: none; margin-left: 0px;">
    <tr ><td colspan="4"><img src="../../Images/regbg.jpg" style="width: 828px; height: 85px;border-bottom-style: inset; border-left-style:solid; border-bottom-width: 2px; border-left-width: 1px; border-color: #E1E1E1; border-right-style: inset;" /></td>
        </tr>
        <tr><td colspan="4">
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <table style="border: 2px solid #99CCFF; margin-left: 3px; margin-top :0px; width: 771px;">

                            <tr style="text-decoration: none;">
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000; text-decoration: none;" 
                                    class="style5">
            &nbsp;</td>
        <td class="style5" >
            &nbsp;</td>
        <td style="text-align: left; font-family: 'Times New Roman', Times, serif; font-size: 16px; color: #FF0000;" 
            class="style5" >
            *Fields with red colour are Compolsary.<br />
            The First Name is Your Surname. </td>
    </tr>
                            <tr style="text-decoration: none;">
                                <td class="style5" 
                                    style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000; text-decoration: none;">
                                    First Name:</td>
                                <td class="style5">
                                    <asp:TextBox ID="txtfname" runat="server" Width="211px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtfname" ErrorMessage="First Name is require">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="style5" 
                                    style="text-align: left; font-family: 'Times New Roman', Times, serif; font-size: 16px; color: #FF0000;">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                        ControlToValidate="txtfname" ErrorMessage="Enetr Only Character dont use space" 
                                        ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                                </td>
                        </tr>
                            <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000; text-decoration: none;" 
                                    class="style11">
            Second Name:</td>
        <td class="style13">
            <asp:TextBox ID="txtsname" runat="server" Width="211px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtsname" ErrorMessage="Second Name is require">*</asp:RequiredFieldValidator>
        </td>
        <td class="style3">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                                    ControlToValidate="txtsname" ErrorMessage="Enetr Only Character dont use space" 
                                    ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                                </td>
    </tr>
                            <tr >
        <td style="text-decoration: none;text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000; text-decoration: none;" 
                                    class="style12">
            Last Name:</td>
        <td class="style13">
            <asp:TextBox ID="txtlname" runat="server" Width="212px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtlname" ErrorMessage="Last Name is require">*</asp:RequiredFieldValidator>
        </td>
        <td class="style9">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                                    ControlToValidate="txtlname" ErrorMessage="Enetr Only Character dont use space" 
                                    ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                                </td>
    </tr>
                            <tr>
        <td style="text-align: right; text-decoration: none;font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000;" 
                                    class="style12">
            Native place:</td>
        <td class="style13">
            <asp:TextBox ID="txtnative" runat="server" Width="211px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtnative" ErrorMessage="Native Place is require">*</asp:RequiredFieldValidator>
        </td>
        <td class="style9">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                ControlToValidate="txtnative" 
                ErrorMessage="Enetr Only Character dont use space" 
                ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                                </td>
    </tr>
                            <tr>
        <td style="text-align: right;text-decoration: none; font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000;" 
                                    class="style12">
            Mother Maiden Place:<br />
            (Mosal)&nbsp; </td>
        <td class="style13">
            <asp:TextBox ID="txtmosal" runat="server" Width="211px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtmosal" ErrorMessage="First Name is require">*</asp:RequiredFieldValidator>
        </td>
        <td class="style9">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator13" 
                runat="server" ControlToValidate="txtmosal" 
                ErrorMessage="Enetr Only Character dont use space" 
                ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                                </td>
    </tr>
                            <tr>
        <td style="text-align: right; text-decoration: none;font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000;" 
                                    class="style16">
            Gender:</td>
        <td style="font-family: 'times New Roman', Times, serif; font-size: 17px" class="style17">
           <table>
           <tr>
            <td><asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList></td>
           <td> 
               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="RadioButtonList1" ErrorMessage="Gender is require">*</asp:RequiredFieldValidator></td></tr></table> 
            </td>
        <td class="style18">
                                </td>
    </tr>
                            <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000;" 
                                    class="style12" >
            Marrital Status:</td>
        <td class="style13">
            <asp:DropDownList ID="drpmaritalstus" runat="server" Height="25px" 
                Width="106px">
                <asp:ListItem>N\A</asp:ListItem>
                <asp:ListItem>Married</asp:ListItem>
                <asp:ListItem>Unmarried</asp:ListItem>
                <asp:ListItem>Divorce</asp:ListItem>
                <asp:ListItem>Widow</asp:ListItem>
                <asp:ListItem>Widower</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="drpmaritalstus" 
                ErrorMessage="Marrital Status is require">*</asp:RequiredFieldValidator>
        </td>
        <td class="style9">
            &nbsp;</td>
    </tr>
                            <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000;" 
                                    class="style12" >
            Relation with Main Member:</td>
        <td class="style13">
            <asp:DropDownList ID="drrelation" runat="server" Height="25px" Width="119px">
                
               <asp:ListItem>SELECT</asp:ListItem>
                <asp:ListItem>Husband</asp:ListItem>
                <asp:ListItem>Wife</asp:ListItem>
                <asp:ListItem>Son</asp:ListItem>
                <asp:ListItem>Daughter</asp:ListItem>
                <asp:ListItem>Brother</asp:ListItem>
                <asp:ListItem>Sister</asp:ListItem>
                <asp:ListItem>Father</asp:ListItem>
                <asp:ListItem>Mother</asp:ListItem>
                <asp:ListItem>Grand Son</asp:ListItem>
                <asp:ListItem>Grand daughter</asp:ListItem>
                <asp:ListItem>Grand Father</asp:ListItem>
                <asp:ListItem>Grand Mother</asp:ListItem>
                <asp:ListItem>Fater in law</asp:ListItem>
                <asp:ListItem>Mother in Law</asp:ListItem>
                <asp:ListItem>Son in law</asp:ListItem>
                <asp:ListItem>Daughter in law</asp:ListItem>
                <asp:ListItem>Grand Daughter in law</asp:ListItem>
                <asp:ListItem>Grand Son in law</asp:ListItem>
                <asp:ListItem>Nephew</asp:ListItem>
                <asp:ListItem>Niece</asp:ListItem>
            </asp:DropDownList>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="drrelation" ErrorMessage="Relation is require">*</asp:RequiredFieldValidator>
        </td>
        <td class="style15">
            &nbsp;</td>
    </tr>
                            <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000;" 
                                    class="style12" >
            Date Of&nbsp; Birth:</td>
        <td class="style13">
            &nbsp;<asp:DropDownList ID="drpday" runat="server" Height="25px" Width="39px">
                <asp:ListItem Selected="True">1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
            </asp:DropDownList>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="drpday" ErrorMessage="Birthday is require">*</asp:RequiredFieldValidator>
        &nbsp;
            <asp:DropDownList ID="drpmonth" runat="server" Height="25px">
                <asp:ListItem Selected="True">January</asp:ListItem>
                <asp:ListItem>February</asp:ListItem>
                <asp:ListItem>March</asp:ListItem>
                <asp:ListItem>April</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>June</asp:ListItem>
                <asp:ListItem>July</asp:ListItem>
                <asp:ListItem>August</asp:ListItem>
                <asp:ListItem>September</asp:ListItem>
                <asp:ListItem>Octomber</asp:ListItem>
                <asp:ListItem>November</asp:ListItem>
                <asp:ListItem>December</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="drpmonth" ErrorMessage="Month is require">*</asp:RequiredFieldValidator>
            &nbsp;&nbsp;
            <asp:DropDownList ID="drpyear" runat="server" Height="25px" Width="61px">
            <asp:ListItem Value="1950">1950</asp:ListItem>
 <asp:ListItem Value="1951">1951</asp:ListItem>
 <asp:ListItem Value="1952">1952</asp:ListItem>
 <asp:ListItem Value="1953">1953</asp:ListItem>
 <asp:ListItem Value="1954">1954</asp:ListItem>
 <asp:ListItem Value="1955">1955</asp:ListItem>
 <asp:ListItem Value="1956">1956</asp:ListItem>
 <asp:ListItem Value="1957">1957</asp:ListItem>
 <asp:ListItem Value="1958">1958</asp:ListItem>
 <asp:ListItem Value="1959">1959</asp:ListItem>
 <asp:ListItem Value="1960">1960</asp:ListItem>
 <asp:ListItem Value="1961">1961</asp:ListItem>
 <asp:ListItem Value="1962">1962</asp:ListItem>
 <asp:ListItem Value="1963">1963</asp:ListItem>
 <asp:ListItem Value="1964">1964</asp:ListItem>
 <asp:ListItem Value="1965">1965</asp:ListItem>
 <asp:ListItem Value="1966">1966</asp:ListItem>
 <asp:ListItem Value="1967">1967</asp:ListItem>
 <asp:ListItem Value="1968">1968</asp:ListItem>
 <asp:ListItem Value="1969">1969</asp:ListItem>
 <asp:ListItem Value="1970" Selected="True">1970</asp:ListItem>
 <asp:ListItem Value="1971">1971</asp:ListItem>
 <asp:ListItem Value="1972">1972</asp:ListItem>
 <asp:ListItem Value="1973">1973</asp:ListItem>
 <asp:ListItem Value="1974">1974</asp:ListItem>
 <asp:ListItem Value="1975">1975</asp:ListItem>
 <asp:ListItem Value="1976">1976</asp:ListItem>
 <asp:ListItem Value="1977">1977</asp:ListItem>
 <asp:ListItem Value="1978">1978</asp:ListItem>
 <asp:ListItem Value="1979">1979</asp:ListItem>
 <asp:ListItem Value="1980">1980</asp:ListItem>
 <asp:ListItem Value="1981">1981</asp:ListItem>
 <asp:ListItem Value="1982">1982</asp:ListItem>
 <asp:ListItem Value="1983">1983</asp:ListItem>
 <asp:ListItem Value="1984">1984</asp:ListItem>
 <asp:ListItem Value="1985">1985</asp:ListItem>
 <asp:ListItem Value="1986">1986</asp:ListItem>
 <asp:ListItem Value="1987">1987</asp:ListItem>
 <asp:ListItem Value="1988">1988</asp:ListItem>
 <asp:ListItem Value="1989">1989</asp:ListItem>
 <asp:ListItem Value="1990">1990</asp:ListItem>
 <asp:ListItem Value="1991">1991</asp:ListItem>
 <asp:ListItem Value="1992">1992</asp:ListItem>
 <asp:ListItem Value="1993">1993</asp:ListItem>
 <asp:ListItem Value="1994">1994</asp:ListItem>
 <asp:ListItem Value="1995">1995</asp:ListItem>
                           
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                           
</asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="drpyear" ErrorMessage="Year is require">*</asp:RequiredFieldValidator>
        </td>
        <td class="style9">
            &nbsp;</td>
    </tr>
                            <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000" 
                                    class="style12" >
            Mobile No:</td>
        <td class="style13">
            <asp:TextBox ID="txtmobile" runat="server" Width="211px"></asp:TextBox>
            <br />
        </td>
        <td style="text-align: justify; font-family: 'Times New Roman', Times, serif; font-size: 15px; color: #FF0000;" 
            class="style9">
            &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtmobile" ErrorMessage="Enter only 11 digit start with 0" 
                ValidationExpression="(0\d{11})"></asp:RegularExpressionValidator>
                                </td>
    </tr>
                            <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000" 
                                    class="style12" >
            Email Id:</td>
        <td class="style13">
            <asp:TextBox ID="txtemail" runat="server" Width="211px"></asp:TextBox>
        </td>
        <td style="text-align: left; font-family: 'Times New Roman', Times, serif; font-size: 15px; color: #FF0000;" 
            class="style9">
            &nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="Enter Valid ID" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
    </tr>
                            <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000" 
                                    class="style12" >
            Blood Group:</td>
        <td class="style13">
            <asp:DropDownList ID="drpbloodgroup" runat="server" Height="22px" Width="109px">
                <asp:ListItem>N\A</asp:ListItem>
                <asp:ListItem>A+</asp:ListItem>
                <asp:ListItem>A-</asp:ListItem>
                <asp:ListItem>B+</asp:ListItem>
                <asp:ListItem>B-</asp:ListItem>
                <asp:ListItem>AB+</asp:ListItem>
                <asp:ListItem>AB-</asp:ListItem>
                <asp:ListItem>O+</asp:ListItem>
                <asp:ListItem>O-</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style9" rowspan="5">
          
                                </td>
    </tr>
                            <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000" 
                                    class="style12" >
            Qualification:</td>
        <td class="style13">
            <asp:TextBox ID="txtqualification" runat="server" Width="211px"></asp:TextBox>
        </td>
        
    </tr>
                            <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000" 
                                    class="style12" >
            Education:</td>
        <td class="style13">
            <asp:TextBox ID="txteducation" runat="server" Width="211px"></asp:TextBox>
        </td>
      
    </tr>
                            <tr>
                                <td colspan="2"><center>
                                    <asp:Label ID="lblerror" runat="server" Text=""></asp:Label>
                                    <br />
                                    </center>
                                    </td>
                            </tr>
                            <tr>
                                <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000" 
                                    class="style12">
                                    &nbsp;</td>
                                <td class="style13">
                                    <asp:Button ID="psubmit" runat="server" Height="23px" Text="Submit" 
                                        onclick="psubmit_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btncancel" runat="server" Height="23px" Text="Cancel" 
                                        onclick="btncancel_Click" /> 
                                    </td>
                                
                            </tr>
                            <tr>
                                <td class="style12" 
                                    style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000">
                                    &nbsp;</td>
                                <td class="style13">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12" 
                                    style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000">
                                    &nbsp;</td>
                                <td class="style13">
                                    &nbsp;</td>
                            </tr>
                  </table>
                </asp:View>
                <asp:View ID="View2" runat="server">
                 <table style="border: 2px solid #99CCFF; margin-left: 3px; margin-top :0px; width: 700px;">
                <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000" >
            Home Address1:</td>
        <td>
            <asp:TextBox ID="txtadd1" runat="server" TextMode="MultiLine" Width="210px"></asp:TextBox>
        </td>
        <td class="style2">
            &nbsp;</td>
    </tr>
                 <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000" >
            Home Address2:</td>
        <td>
            <asp:TextBox ID="txtadd2" runat="server" TextMode="MultiLine" Width="211px"></asp:TextBox>
        </td>
        <td class="style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000" >
            City:</td>
        <td>
            <asp:TextBox ID="txthcity" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td class="style2">
             <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                                    ControlToValidate="txthcity" ErrorMessage="Enetr Only Character dont use space" 
                                    ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator></td>
    </tr>
    <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000">
            State:</td>
        <td>
            <asp:TextBox ID="txtstate" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td class="style2">
             <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" 
                                    ControlToValidate="txtstate" ErrorMessage="Enetr Only Character dont use space" 
                                    ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator></td>
    </tr>
    <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000" >
            Country:</td>
        <td>
            <asp:DropDownList ID="drpcountry" runat="server">
            <asp:ListItem Value="" Selected=true>Select Country</asp:ListItem> 
<asp:ListItem Value="Afghanistan">Afghanistan</asp:ListItem> 
<asp:ListItem Value="Albania">Albania</asp:ListItem> 
<asp:ListItem Value="Algeria">Algeria</asp:ListItem> 
<asp:ListItem Value="American Samoa">American Samoa</asp:ListItem> 
<asp:ListItem Value="Andorra">Andorra</asp:ListItem> 
<asp:ListItem Value="Angola">Angola</asp:ListItem> 
<asp:ListItem Value="Anguilla">Anguilla</asp:ListItem> 
<asp:ListItem Value="Antarctica">Antarctica</asp:ListItem> 
<asp:ListItem Value="Antigua And Barbuda">Antigua And Barbuda</asp:ListItem> 
<asp:ListItem Value="Argentina">Argentina</asp:ListItem> 
<asp:ListItem Value="Armenia">Armenia</asp:ListItem> 
<asp:ListItem Value="Aruba">Aruba</asp:ListItem> 
<asp:ListItem Value="Australia">Australia</asp:ListItem> 
<asp:ListItem Value="Austria">Austria</asp:ListItem> 
<asp:ListItem Value="Azerbaijan">Azerbaijan</asp:ListItem> 
<asp:ListItem Value="Bahamas">Bahamas</asp:ListItem> 
<asp:ListItem Value="Bahrain">Bahrain</asp:ListItem> 
<asp:ListItem Value="Bangladesh">Bangladesh</asp:ListItem> 
<asp:ListItem Value="Barbados">Barbados</asp:ListItem> 
<asp:ListItem Value="Belarus">Belarus</asp:ListItem> 
<asp:ListItem Value="Belgium">Belgium</asp:ListItem> 
<asp:ListItem Value="Belize">Belize</asp:ListItem> 
<asp:ListItem Value="Benin">Benin</asp:ListItem> 
<asp:ListItem Value="Bermuda">Bermuda</asp:ListItem> 
<asp:ListItem Value="Bhutan">Bhutan</asp:ListItem> 
<asp:ListItem Value="Bolivia">Bolivia</asp:ListItem> 
<asp:ListItem Value="Bosnia And Herzegowina">Bosnia And Herzegowina</asp:ListItem> 
<asp:ListItem Value="Botswana">Botswana</asp:ListItem> 
<asp:ListItem Value="Bouvet Island">Bouvet Island</asp:ListItem> 
<asp:ListItem Value="Brazil">Brazil</asp:ListItem> 
<asp:ListItem Value="British Indian Ocean Territory">British Indian Ocean Territory</asp:ListItem> 
<asp:ListItem Value="Brunei Darussalam">Brunei Darussalam</asp:ListItem> 
<asp:ListItem Value="Bulgaria">Bulgaria</asp:ListItem> 
<asp:ListItem Value="Burkina Faso">Burkina Faso</asp:ListItem> 
<asp:ListItem Value="Burundi">Burundi</asp:ListItem> 
<asp:ListItem Value="Cambodia">Cambodia</asp:ListItem> 
<asp:ListItem Value="Cameroon">Cameroon</asp:ListItem> 
<asp:ListItem Value="Canada">Canada</asp:ListItem> 
<asp:ListItem Value="Cape Verde">Cape Verde</asp:ListItem> 
<asp:ListItem Value="Cayman Islands">Cayman Islands</asp:ListItem> 
<asp:ListItem Value="Central African Republic">Central African Republic</asp:ListItem> 
<asp:ListItem Value="Chad">Chad</asp:ListItem> 
<asp:ListItem Value="Chile">Chile</asp:ListItem> 
<asp:ListItem Value="China">China</asp:ListItem> 
<asp:ListItem Value="Christmas Island">Christmas Island</asp:ListItem> 
<asp:ListItem Value="Cocos(Keeling)Islands">Cocos(Keeling)Islands</asp:ListItem> 
<asp:ListItem Value="Colombia">Colombia</asp:ListItem> 
<asp:ListItem Value="Comoros">Comoros</asp:ListItem> 
<asp:ListItem Value="Congo">Congo</asp:ListItem> 
<asp:ListItem Value="Cook Islands">Cook Islands</asp:ListItem> 
<asp:ListItem Value="Costa Rica">Costa Rica</asp:ListItem> 
<asp:ListItem Value="Cote D'Ivoire">Cote D'Ivoire</asp:ListItem> 
<asp:ListItem Value="Croatia (Local Name: Hrvatska)">Croatia (Local Name: Hrvatska)</asp:ListItem> 
<asp:ListItem Value="Cuba">Cuba</asp:ListItem> 
<asp:ListItem Value="Cyprus">Cyprus</asp:ListItem> 
<asp:ListItem Value="Czech Republic">Czech Republic</asp:ListItem> 
<asp:ListItem Value="Denmark">Denmark</asp:ListItem> 
<asp:ListItem Value="Djibouti">Djibouti</asp:ListItem> 
<asp:ListItem Value="Dominica">Dominica</asp:ListItem> 
<asp:ListItem Value="Dominican Republic">Dominican Republic</asp:ListItem> 
<asp:ListItem Value="East Timor">East Timor</asp:ListItem> 
<asp:ListItem Value="Ecuador">Ecuador</asp:ListItem> 
<asp:ListItem Value="Egypt">Egypt</asp:ListItem> 
<asp:ListItem Value="El Salvador">El Salvador</asp:ListItem> 
<asp:ListItem Value="Equatorial Guinea">Equatorial Guinea</asp:ListItem> 
<asp:ListItem Value="Eritrea">Eritrea</asp:ListItem> 
<asp:ListItem Value="Estonia">Estonia</asp:ListItem> 
<asp:ListItem Value="Ethiopia">Ethiopia</asp:ListItem> 
<asp:ListItem Value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</asp:ListItem> 
<asp:ListItem Value="Faroe Islands">Faroe Islands</asp:ListItem> 
<asp:ListItem Value="Fiji">Fiji</asp:ListItem> 
<asp:ListItem Value="Finland">Finland</asp:ListItem> 
<asp:ListItem Value="France">France</asp:ListItem> 
<asp:ListItem Value="French Guiana">French Guiana</asp:ListItem> 
<asp:ListItem Value="French Polynesia">French Polynesia</asp:ListItem> 
<asp:ListItem Value="French Southern Territories">French Southern Territories</asp:ListItem> 
<asp:ListItem Value="Gabon">Gabon</asp:ListItem> 
<asp:ListItem Value="Gambia">Gambia</asp:ListItem> 
<asp:ListItem Value="Georgia">Georgia</asp:ListItem> 
<asp:ListItem Value="Germany">Germany</asp:ListItem> 
<asp:ListItem Value="Ghana">Ghana</asp:ListItem> 
<asp:ListItem Value="Gibraltar">Gibraltar</asp:ListItem> 
<asp:ListItem Value="Greece">Greece</asp:ListItem> 
<asp:ListItem Value="Greenland">Greenland</asp:ListItem> 
<asp:ListItem Value="Grenada">Grenada</asp:ListItem> 
<asp:ListItem Value="Guadeloupe">Guadeloupe</asp:ListItem> 
<asp:ListItem Value="Guam">Guam</asp:ListItem> 
<asp:ListItem Value="Guatemala">Guatemala</asp:ListItem> 
<asp:ListItem Value="Guinea">Guinea</asp:ListItem> 
<asp:ListItem Value="Guinea-Bissau">Guinea-Bissau</asp:ListItem> 
<asp:ListItem Value="Guyana">Guyana</asp:ListItem> 
<asp:ListItem Value="Haiti">Haiti</asp:ListItem> 
<asp:ListItem Value="Heard And Mc Donald Islands">Heard And Mc Donald Islands</asp:ListItem> 
<asp:ListItem Value="Holy See (Vatican City State)">Holy See (Vatican City State)</asp:ListItem> 
<asp:ListItem Value="Honduras">Honduras</asp:ListItem> 
<asp:ListItem Value="Hong Kong">Hong Kong</asp:ListItem> 
<asp:ListItem Value="Hungary">Hungary</asp:ListItem> 
<asp:ListItem Value="Icel And">Icel And</asp:ListItem> 
<asp:ListItem Value="India">India</asp:ListItem> 
<asp:ListItem Value="Indonesia">Indonesia</asp:ListItem> 
<asp:ListItem Value="Iran (Islamic Republic Of)">Iran (Islamic Republic Of)</asp:ListItem> 
<asp:ListItem Value="Iraq">Iraq</asp:ListItem> 
<asp:ListItem Value="Ireland">Ireland</asp:ListItem> 
<asp:ListItem Value="Israel">Israel</asp:ListItem> 
<asp:ListItem Value="Italy">Italy</asp:ListItem> 
<asp:ListItem Value="Jamaica">Jamaica</asp:ListItem> 
<asp:ListItem Value="Japan">Japan</asp:ListItem> 
<asp:ListItem Value="Jordan">Jordan</asp:ListItem> 
<asp:ListItem Value="Kazakhstan">Kazakhstan</asp:ListItem> 
<asp:ListItem Value="Kenya">Kenya</asp:ListItem> 
<asp:ListItem Value="Kiribati">Kiribati</asp:ListItem> 
<asp:ListItem Value="Korea, Dem People'S Republic">Korea, Dem People'S Republic</asp:ListItem> 
<asp:ListItem Value="Korea, Republic Of">Korea, Republic Of</asp:ListItem> 
<asp:ListItem Value="Kuwait">Kuwait</asp:ListItem> 
<asp:ListItem Value="KG">Kyrgyzstan</asp:ListItem> 
<asp:ListItem Value="Lao People'S Dem Republic">Lao People'S Dem Republic</asp:ListItem> 
<asp:ListItem Value="Latvia">Latvia</asp:ListItem> 
<asp:ListItem Value="Lebanon">Lebanon</asp:ListItem> 
<asp:ListItem Value="Lesotho">Lesotho</asp:ListItem> 
<asp:ListItem Value="Liberia">Liberia</asp:ListItem> 
<asp:ListItem Value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</asp:ListItem> 
<asp:ListItem Value="Liechtenstein">Liechtenstein</asp:ListItem> 
<asp:ListItem Value="Lithuania">Lithuania</asp:ListItem> 
<asp:ListItem Value="Luxembourg">Luxembourg</asp:ListItem> 
<asp:ListItem Value="Macau">Macau</asp:ListItem> 
<asp:ListItem Value="Macedonia">Macedonia</asp:ListItem> 
<asp:ListItem Value="Madagascar">Madagascar</asp:ListItem> 
<asp:ListItem Value="Malawi">Malawi</asp:ListItem> 
<asp:ListItem Value="Malaysia">Malaysia</asp:ListItem> 
<asp:ListItem Value="Maldives">Maldives</asp:ListItem> 
<asp:ListItem Value="Mali">Mali</asp:ListItem> 
<asp:ListItem Value="Malta">Malta</asp:ListItem> 
<asp:ListItem Value="Marshall Islands">Marshall Islands</asp:ListItem> 
<asp:ListItem Value="Martinique">Martinique</asp:ListItem> 
<asp:ListItem Value="Mauritania">Mauritania</asp:ListItem> 
<asp:ListItem Value="Mauritius">Mauritius</asp:ListItem> 
<asp:ListItem Value="Mayotte">Mayotte</asp:ListItem> 
<asp:ListItem Value="Mexico">Mexico</asp:ListItem> 
<asp:ListItem Value="Micronesia, Federated States">Micronesia, Federated States</asp:ListItem> 
<asp:ListItem Value="Moldova, Republic Of">Moldova, Republic Of</asp:ListItem> 
<asp:ListItem Value="Monaco">Monaco</asp:ListItem> 
<asp:ListItem Value="Mongolia">Mongolia</asp:ListItem> 
<asp:ListItem Value="Montserrat">Montserrat</asp:ListItem> 
<asp:ListItem Value="Morocco">Morocco</asp:ListItem> 
<asp:ListItem Value="Mozambique">Mozambique</asp:ListItem> 
<asp:ListItem Value="Myanmar">Myanmar</asp:ListItem> 
<asp:ListItem Value="Namibia">Namibia</asp:ListItem> 
<asp:ListItem Value="Nauru">Nauru</asp:ListItem> 
<asp:ListItem Value="Nepal">Nepal</asp:ListItem> 
<asp:ListItem Value="Netherlands">Netherlands</asp:ListItem> 
<asp:ListItem Value="Netherlands Ant Illes">Netherlands Ant Illes</asp:ListItem> 
<asp:ListItem Value="New Caledonia">New Caledonia</asp:ListItem> 
<asp:ListItem Value="New Zealand">New Zealand</asp:ListItem> 
<asp:ListItem Value="Nicaragua">Nicaragua</asp:ListItem> 
<asp:ListItem Value="Niger">Niger</asp:ListItem> 
<asp:ListItem Value="Nigeria">Nigeria</asp:ListItem> 
<asp:ListItem Value="Niue">Niue</asp:ListItem> 
<asp:ListItem Value="Norfolk Island">Norfolk Island</asp:ListItem> 
<asp:ListItem Value="Northern Mariana Islands">Northern Mariana Islands</asp:ListItem> 
<asp:ListItem Value="Norway">Norway</asp:ListItem> 
<asp:ListItem Value="Oman">Oman</asp:ListItem> 
<asp:ListItem Value="Pakistan">Pakistan</asp:ListItem> 
<asp:ListItem Value="Palau">Palau</asp:ListItem> 
<asp:ListItem Value="Panama">Panama</asp:ListItem> 
<asp:ListItem Value="Papua New Guinea">Papua New Guinea</asp:ListItem> 
<asp:ListItem Value="Paraguay">Paraguay</asp:ListItem> 
<asp:ListItem Value="Peru">Peru</asp:ListItem> 
<asp:ListItem Value="Philippines">Philippines</asp:ListItem> 
<asp:ListItem Value="Pitcairn">Pitcairn</asp:ListItem> 
<asp:ListItem Value="Poland">Poland</asp:ListItem> 
<asp:ListItem Value="Portugal">Portugal</asp:ListItem> 
<asp:ListItem Value="Puerto Rico">Puerto Rico</asp:ListItem> 
<asp:ListItem Value="Qatar">Qatar</asp:ListItem> 
<asp:ListItem Value="Reunion">Reunion</asp:ListItem> 
<asp:ListItem Value="Romania">Romania</asp:ListItem> 
<asp:ListItem Value="Russian Federation">Russian Federation</asp:ListItem> 
<asp:ListItem Value="Rwanda">Rwanda</asp:ListItem> 
<asp:ListItem Value="Saint K Itts And Nevis">Saint K Itts And Nevis</asp:ListItem> 
<asp:ListItem Value="Saint Lucia">Saint Lucia</asp:ListItem> 
<asp:ListItem Value="Saint Vincent, The Grenadines">Saint Vincent, The Grenadines</asp:ListItem> 
<asp:ListItem Value="Samoa">Samoa</asp:ListItem> 
<asp:ListItem Value="San Marino">San Marino</asp:ListItem> 
<asp:ListItem Value="Sao Tome And Principe">Sao Tome And Principe</asp:ListItem> 
<asp:ListItem Value="Saudi Arabia">Saudi Arabia</asp:ListItem> 
<asp:ListItem Value="Senegal">Senegal</asp:ListItem> 
<asp:ListItem Value="Seychelles">Seychelles</asp:ListItem> 
<asp:ListItem Value="Sierra Leone">Sierra Leone</asp:ListItem> 
<asp:ListItem Value="Singapore">Singapore</asp:ListItem> 
<asp:ListItem Value="Slovakia (Slovak Republic)">Slovakia (Slovak Republic)</asp:ListItem> 
<asp:ListItem Value="Slovenia">Slovenia</asp:ListItem> 
<asp:ListItem Value="Solomon Islands">Solomon Islands</asp:ListItem> 
<asp:ListItem Value="Somalia">Somalia</asp:ListItem> 
<asp:ListItem Value="South Africa">South Africa</asp:ListItem> 
<asp:ListItem Value="South Georgia , S Sandwich Is.">South Georgia , S Sandwich Is.</asp:ListItem> 
<asp:ListItem Value="Spain">Spain</asp:ListItem> 
<asp:ListItem Value="Sri Lanka">Sri Lanka</asp:ListItem> 
<asp:ListItem Value="St. Helena">St. Helena</asp:ListItem> 
<asp:ListItem Value="St. Pierre And Miquelon">St. Pierre And Miquelon</asp:ListItem> 
<asp:ListItem Value="Sudan">Sudan</asp:ListItem> 
<asp:ListItem Value="Suriname">Suriname</asp:ListItem> 
<asp:ListItem Value="Svalbard, Jan Mayen Islands">Svalbard, Jan Mayen Islands</asp:ListItem> 
<asp:ListItem Value="Sw Aziland">Sw Aziland</asp:ListItem> 
<asp:ListItem Value="Sweden">Sweden</asp:ListItem> 
<asp:ListItem Value="Switzerland">Switzerland</asp:ListItem> 
<asp:ListItem Value="SY">Syrian Arab Republic</asp:ListItem> 
<asp:ListItem Value="Syrian Arab Republic">Taiwan</asp:ListItem> 
<asp:ListItem Value="Tajikistan">Tajikistan</asp:ListItem> 
<asp:ListItem Value="Thailand">Thailand</asp:ListItem> 
<asp:ListItem Value="Togo">Togo</asp:ListItem> 
<asp:ListItem Value="Tokelau">Tokelau</asp:ListItem> 
<asp:ListItem Value="Tonga">Tonga</asp:ListItem> 
<asp:ListItem Value="Trinidad And Tobago">Trinidad And Tobago</asp:ListItem> 
<asp:ListItem Value="TN">Tunisia</asp:ListItem> 
<asp:ListItem Value="TR">Turkey</asp:ListItem> 
<asp:ListItem Value="TM">Turkmenistan</asp:ListItem> 
<asp:ListItem Value="TC">Turks And Caicos Islands</asp:ListItem> 
<asp:ListItem Value="TV">Tuvalu</asp:ListItem> 
<asp:ListItem Value="UG">Uganda</asp:ListItem> 
<asp:ListItem Value="UA">Ukraine</asp:ListItem> 
<asp:ListItem Value="AE">United Arab Emirates</asp:ListItem> 
<asp:ListItem Value="GB">United Kingdom</asp:ListItem> 
<asp:ListItem Value="US">United States</asp:ListItem> 
<asp:ListItem Value="UM">United States Minor Is.</asp:ListItem> 
<asp:ListItem Value="UY">Uruguay</asp:ListItem> 
<asp:ListItem Value="UZ">Uzbekistan</asp:ListItem> 
<asp:ListItem Value="VU">Vanuatu</asp:ListItem> 
<asp:ListItem Value="VE">Venezuela</asp:ListItem> 
<asp:ListItem Value="VN">Viet Nam</asp:ListItem> 
<asp:ListItem Value="VG">Virgin Islands (British)</asp:ListItem> 
<asp:ListItem Value="VI">Virgin Islands (U.S.)</asp:ListItem> 
<asp:ListItem Value="WF">Wallis And Futuna Islands</asp:ListItem> 
<asp:ListItem Value="EH">Western Sahara</asp:ListItem> 
<asp:ListItem Value="YE">Yemen</asp:ListItem> 
<asp:ListItem Value="YU">Yugoslavia</asp:ListItem> 
<asp:ListItem Value="ZR">Zaire</asp:ListItem> 
<asp:ListItem Value="ZM">Zambia</asp:ListItem> 
<asp:ListItem Value="ZW">Zimbabwe</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style2">
            &nbsp;</td>
    </tr>
                     <tr>
                         <td colspan="3" ><center>
                             <asp:Label ID="lblerror1" runat="server" Text=""></asp:Label></center>
                             &nbsp;</td>
                     </tr>
                      <tr>
                                <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000">
                                    &nbsp;</td>
                                <td class="style6">
                                    <asp:Button ID="hsubmit" runat="server" Height="23px" Text="Submit" 
                                        onclick="hsubmit_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Button ID="Button1" runat="server" Height="23px" Text="Cancel" 
                                        onclick="Button1_Click" /> </td>
                                <td class="style2">
                                    &nbsp;</td>
                            </tr>
    </table></asp:View>
                <asp:View ID="View3" runat="server">
                             <table style="border: 2px solid #99CCFF; margin-left: 3px; margin-top :0px; width: 700px;">
                   
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000" >
            Profession:</td>
        <td>
            <asp:TextBox ID="txtprofession" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td class="style2">
            &nbsp;</td>
    </tr>
                 <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000" >
            Profession Details:<br />
&nbsp; </td>
        <td>
            <asp:TextBox ID="txtprodetail" runat="server" TextMode="MultiLine" 
                Width="210px"></asp:TextBox>
        </td>
        <td class="style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000" >
            Work Address1:<br />
        </td>
        <td>
            <asp:TextBox ID="txtwadd1" runat="server" Width="210px" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td class="style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000">
            Work Address2:<br />
        </td>
        <td>
            <asp:TextBox ID="txtwadd2" runat="server" Width="211px" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td class="style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000" >
            City:</td>
        <td>
            <asp:TextBox ID="txtwcity" runat="server" Width="158px"></asp:TextBox>
        </td>
        <td class="style2">
            &nbsp; <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" 
                                    ControlToValidate="txtwcity" ErrorMessage="Enetr Only Character dont use space" 
                                    ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator></td>
    </tr>
                     <tr>
                         <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000">
                             Phone No: </td>
                         <td>
                             <asp:TextBox ID="txtwphone" runat="server" Width="158px"></asp:TextBox>
                         </td>
                         <td class="style2">
                             &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ControlToValidate="txtwphone" ErrorMessage="Enter only digit" 
                ValidationExpression="\d*"></asp:RegularExpressionValidator></td>
                     </tr>
                                 <tr>
                                     <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000">
                                         Email ID:</td>
                                     <td>
                                         <asp:TextBox ID="txtwemailid" runat="server" Width="158px"></asp:TextBox>
                                     </td>
                                     <td class="style2">
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="txtwemailid" ErrorMessage="Enter Valid ID" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                                 </tr>
                                 <tr>
                                     <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000">
                                         Website:</td>
                                     <td>
                                         <asp:TextBox ID="txtwsite" runat="server" Width="158px"></asp:TextBox>
                                     </td>
                                     <td class="style2">
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server"
                                             ErrorMessage="Enter valid websit name" ControlToValidate="txtwsite" 
                                             ValidationExpression="(\w+)*\.\w+\.\w*"></asp:RegularExpressionValidator></td>
                                 </tr>
                                 <tr>
                                    
                                     <td colspan="3"><center>
                             <asp:Label ID="lblerror2" runat="server"></asp:Label></center>
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color:#000000">
                                         &nbsp;</td>
                                     <td class="style6">
                                         <asp:Button ID="wsubmit" runat="server" Height="23px" Text="Submit" 
                                             onclick="wsubmit_Click" />
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:Button ID="Button2" runat="server" Height="23px" Text="Cancel" 
                                             onclick="Button2_Click" /> </td>
                                     <td class="style2">
                                         &nbsp;</td>
                                 </tr></table>
                </asp:View>
   </asp:MultiView></td></tr></table></div></td>
</tr>
        
        <tr>
            <td colspan="2" class="footer">
                   <a href="Home.aspx">Home</a>|<a href="mmember.aspx">Members</a>|<a href="mcommitteemember.aspx">Committee</a>|<a href="mcontactus.aspx">ContactUs</a>|<a href="maboutus.aspx">AboutUs</a>|</td>
            
        </tr>
        <tr><td colspan ="2" class="footername">
                    <marquee direction="center" onmouseout="this.start()" onmouseover="this.stop()" scrollamount="1" scrolldelay="30">
                
                        ::Shri Dhandhar Mevada Suthar Samaj Seva Sangh::
                    </marquee></td></tr>
        <tr>
        <td colspan="2" class="footerend">
                    &amp;
                    Thank&nbsp; You &amp;</td></tr>
   </table>

        </form>
</body>
</html>
