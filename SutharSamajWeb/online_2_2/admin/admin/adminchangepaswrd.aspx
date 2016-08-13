<%@ Page Language="C#" MasterPageFile="~/admin/admin/admin_master.master" AutoEventWireup="true" CodeFile="adminchangepaswrd.aspx.cs" Inherits="admin_adminchangepassword" Title="::SAMAJ::" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="border: 1px none #FFCCCC; background-color: #FFFFFF; width: 49%;margin-left: 40px; margin-top: 20px;margin-bottom:90px;">
                <tr>
            <td colspan="2" style="color: #FF9999; font-family: 'Courier New', Courier, monospace; font-size: 23px; font-weight: bold; height: 42px;">
                Change Password<hr style="background-color: #FF99CC; color: #FF9999;"  /></td>
        </tr>
        <tr>
            <td style="font-size: 15px; text-align: right; height: 41px; width: 133px;" >
                &nbsp;</td>
            <td style="height: 37px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 15px; text-align: right; height: 59px; width: 133px;" >
                Old Password:</td>
            <td style="height: 59px">
                <asp:TextBox ID="txtopswrd" runat="server" Width="167px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-size: 15px; text-align: right; height: 41px; width: 133px;" >
                New Password:</td>
            <td>
                <asp:TextBox ID="txtnpswrd" runat="server" Width="167px" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtnpswrd" ControlToValidate="txtcpswrd" 
                    ErrorMessage="Both Password Cannot Match">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: 15px; text-align: right; height: 41px; width: 133px;" >
                Confirm Password:</td>
            <td>
                <asp:TextBox ID="txtcpswrd" runat="server" Width="167px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            
            <td colspan="2"><center>
                <asp:Label ID="lbl1" runat="server"></asp:Label>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" /></center>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 32px"><center>
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" BackColor="#FFE8E8" 
                    ForeColor="#3366FF" Width="81px" Font-Size="14pt" 
                    onclick="btnsubmit_Click" /></center>
            </td>
        </tr>
                
    </table>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>