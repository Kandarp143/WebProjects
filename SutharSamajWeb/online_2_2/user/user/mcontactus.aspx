
<%@ Page Language="C#" MasterPageFile="~/user/user/UserMasterPage.master" AutoEventWireup="true" CodeFile="mcontactus.aspx.cs" Inherits="user_mcontactus" Title="::SAMAJ::" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    <style type="text/css">
        .style5
        {
            height: 98px;
        }
    </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="width: 834px; background-color: #E0DEEB; height: 571px; background-image: url('../../Images/contact_bg.jpg'); background-repeat: no-repeat;">
    <table style="width: 834px;"><tr><td class="style5"><table><tr><td  style="height: 104px; width: 226px" > 
        <img src="../../Images/contactus.gif" 
            style="height: 95px; width: 209px" /></td></tr></table>
       </td></tr>
       <tr>
       <td>
        <table style="font-family: 'Bodoni MT'; font-size: 16px; color: #FF6666; margin-top: 160px; margin-left: 25px; width: 350px;">
         <tr><td colspan="2" 
                 style="font-size: 20px; color: #669900; text-decoration: underline">Suggest Us</td></tr>
        <tr><td>Name:</td><td><asp:TextBox ID="txtname" runat="server" Width="173px" 
                BorderColor="#CC6600" BorderStyle="Inset" BorderWidth="2px"></asp:TextBox></td></tr>
   
    <tr><td>Email Id:</td><td>
          <asp:TextBox ID="txtemail" runat="server" Width="172px" BorderColor="#CC6600" 
              BorderStyle="Inset" BorderWidth="2px"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                    ControlToValidate="txtemail" ErrorMessage="Enter Valid Email Id" 
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ControlToValidate="txtemail" ErrorMessage="Enter Email Id">*</asp:RequiredFieldValidator>
                                                </td></tr>
         <tr><td>Contact No:</td><td>
             <asp:TextBox ID="txtcno" runat="server" Width="173px" BorderColor="#CC6600" BorderStyle="Inset" BorderWidth="2px"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                    ErrorMessage="enter 11 digit start with 0" 
                                                    ValidationExpression="(0/d{10})" ControlToValidate="txtcno">*</asp:RegularExpressionValidator>
                                                </td></tr>
         <tr><td>Your Suggestion:<br />
             <br />
             <br />
                                                </td><td>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" BorderColor="#CC6600" BorderStyle="Inset" 
                                                        BorderWidth="2px" Height="72px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                        ControlToValidate="TextBox3" ErrorMessage="Enter Your Text">*</asp:RequiredFieldValidator>
                                                </td></tr>
            <tr><td colspan="2"><center>
                <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="White" 
                    BorderColor="#CC6600" BorderStyle="Double" BorderWidth="2px" Font-Size="10pt" 
                    ForeColor="#CC6600" onclick="Button1_Click" style="height: 28px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="Reset1" type="reset"
                    value="Cancel" 
                    style="background-color: #FFFFFF; border: 2px double #CC6600; font-size: 10pt; color: #CC6600;" /></center></td></tr>
                    <tr><td colspan="2"><center>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></center></td></tr></table>
                        </td>
       
       <td><table style="margin-left: 20px; margin-top: 0px; margin-bottom: 210px;">
    <tr>
    <td style="width:209px;" colspan ="2"><h2 style="color: #CC3300">Contact Us:</h2></td></tr>
    <tr style="color: #D56A00; font-family: 'Courier New', Courier, monospace"><td align="right" valign="top" width="150">
                                                <b style="color: #999966">Office Address</b></td>
                                            <td style="width: 257px">
                                                Mevada Dhandhar Suthar Samaj,Palanpur.<br />
                                                Mevada Dhandhar Suthar Samaj Chatralaya,<br />
                                                Dairy Road, Vadodara.<br />
                                                Dist-BanasKantha.<br />
                                            </td></tr>   
   <tr style="font-family: 'Courier New', Courier, monospace; color: #D76B00"><td align="right" valign="top" width="150">
                                            <b style="color: #999966">Office Phone</b></td>
                                            <td style="width: 257px">
                                                +91.2742.2280786</td></tr>
                                     
                           
    </table></td></tr>
        </table></div>
</asp:Content>

