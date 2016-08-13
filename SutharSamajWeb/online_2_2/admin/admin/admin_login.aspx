<%@ Page Language="C#" MasterPageFile="~/admin/admin/admin_master.master" AutoEventWireup="true" CodeFile="admin_login.aspx.cs" Inherits="admin_admin_login" Title="::SAMAJ::" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="border: 2px none #D2D2FF; width: 55%; background-color: #FFFFFF; margin-left: 40px; margin-top: 30px;margin-bottom:90px; height: 204px;">
        <tr>
            <td style="width: 133px" >
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" 
                style="font-family: 'Courier New', Courier, monospace; font-size: 20px; font-weight: bold; color:#FF9933 ; height: 42px;" >
                Sign In With Your Account
                <hr / style="color:#640000 "> </td>
        </tr>
        <tr>
            <td style="font-size: 15px; text-align: right; height: 41px; width: 133px;" >
                Username:</td>
            <td style="height: 41px">
                <asp:TextBox ID="txtu_name" runat="server" Width="193px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtu_name" ErrorMessage="Please EnterUsername.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 133px; height: 43px;" >
                Password:</td>
            <td style="height: 43px">
                <asp:TextBox ID="txtpswrd" runat="server" Width="193px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Please Enter Password" ControlToValidate="txtpswrd">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td  colspan="2">
               <center>
                   <br />
                   <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                   <asp:Label ID="Label1" runat="server"></asp:Label>
                </center> 
            </td>
           
        </tr>
        <tr>
            <td colspan="2">
               <center style="height: 33px" > 
                   <asp:Button ID="btnlogin" runat="server" 
                       Text="Log In" BorderColor="#993300" BorderStyle="Solid" Font-Names="Georgia" 
                       Font-Size="13pt" Height="33px" Width="81px" BackColor="#CC6600" 
                       ForeColor="#FFFFCC" onclick="btnlogin_Click" /></center> 
            </td>
            
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            </tr>
    </table>
</asp:Content>

