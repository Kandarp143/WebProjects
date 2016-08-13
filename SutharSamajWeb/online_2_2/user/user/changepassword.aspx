<%@ Page Language="C#" MasterPageFile="~/user/user/UserMasterPage.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="user_changepassword1" Title="::SAMAJ::" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style5
        {
            height: 28px;
        }
        .style6
        {
            height: 41px;
            width: 188px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div style="background-image: url('../../Images/changepassword_bg.jpg'); background-color: #FFFFFF; height: 622px; background-repeat: no-repeat;">
 <table style="width: 49%;margin-left: 140px; height: 347px; padding-top: 200px;">
                
        <tr>
            <td style="font-size: 20px; text-align: right; color: #6666FF; font-family: 'Bodoni MT';" 
                class="style6" >
                Username:</td>
            <td style="height: 37px">
                <asp:TextBox ID="txtuser" runat="server" Width="167px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtuser" ErrorMessage="Enter Userrname">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: 20px; text-align: right; color: #6666FF; font-family: 'Bodoni MT';" 
                class="style6" >
                Old Password:</td>
            <td>
                <asp:TextBox ID="txtopswrd" runat="server" Width="167px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtopswrd" ErrorMessage="Enter your Old Password">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: 20px; text-align: right; color: #6666FF; font-family: 'Bodoni MT';" 
                class="style6" >
                New Password:</td>
            <td>
                <asp:TextBox ID="ttnpswrd" runat="server" Width="167px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ttnpswrd" ErrorMessage="Enter New Password">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: 20px; text-align: right; color: #6666FF; font-family: 'Bodoni MT';" 
                class="style6" >
                Confirm Password:</td>
            <td>
                <asp:TextBox ID="txtcpswrd" runat="server" Width="167px" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="ttnpswrd" ControlToValidate="txtcpswrd" 
                    ErrorMessage="Password does not match">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            
            <td colspan="2" class="style5">
                &nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    Font-Names="Bodoni MT" Font-Size="15pt" ForeColor="#3333FF" 
                   />
            
                </td>
        </tr>
        <tr>
         
            <td colspan="2"><center>
                <asp:Label ID="lbl1" runat="server" Font-Names="Andalus" Font-Size="18pt" 
                    ForeColor="#CC3300"></asp:Label></center>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 32px"><center>
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" BackColor="Silver" 
                    ForeColor="Black" Width="81px" style="height: 26px" 
                    onclick="btnsubmit_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="btncancel" type="reset" value="Cancel" runat ="server" style ="background-color :Silver; width:81px; height: 26px;"/></center>
            </td>
        </tr>
                
    </table></div>
</asp:Content>

