<%@ Page Language="C#" MasterPageFile="~/user/user/UserMasterPage.master" AutoEventWireup="true" CodeFile="sub_uploadphoto.aspx.cs" Inherits="user_sub_uploadphoto" Title="::SAMAJ::" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div>
<table style="background-image: url('../../Images/uploadp_bg1.jpg'); margin-left: 140px; border-style: inset; border-color: #FF99FF; height: 454px; width: 454px;padding-left: 40px; ">

<tr><td><table style="width: 269px; padding-top: 0px; padding-left: 30px;"><tr><td colspan="2"><input id="File1" 
        type="file" runat="server" 
        style="padding-right: 2px; padding-left: 2px; height: 28px;" /></td></tr>
        <tr><td colspan="2"><center>
    <asp:Label ID="Label1" runat="server" ForeColor="#6666FF"></asp:Label></center></td></tr>
        <tr><td class="style3"><asp:Button ID="btnupload" runat="server" Text="Upload" 
                onclick="btnupload_Click" style="height: 30px" BackColor="White" 
                BorderColor="#FFCC66" BorderStyle="Double" Font-Bold="True" Font-Names="Batang" 
                Font-Size="12pt" ForeColor="#CC3300" /></td>
        <td class="style3"><input id="Reset1" type="reset" value="Cancel" 
                style="border-style: double; height: 30px; background-color:#FFFFFF; border-color:#FFCC66; color: #CC3300; font-size: 12pt; font-family: Batang; font-weight: bold;"/>
        </td></tr>
        <tr><td colspan="2">
<asp:Button ID="Button1" runat="server" Text="Do not Have photo"
style="height: 30px" BackColor="White" 
                BorderColor="#FFCC66" BorderStyle="Double" Font-Bold="True" Font-Names="Batang" 
                Font-Size="12pt" ForeColor="#CC3300" onclick="Button1_Click" /></td></tr></table></td></tr>
</table>
</div>
</asp:Content>

