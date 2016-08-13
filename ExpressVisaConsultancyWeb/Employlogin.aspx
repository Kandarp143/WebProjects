<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Employlogin.aspx.cs" Inherits="Employlogin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 185px" width="100%">
        <tr>
            <td align="center" bgcolor="#ffcc00" colspan="2">
                <asp:Label ID="Label5" runat="server" Font-Size="X-Large" ForeColor="Navy" Height="27px"
                    Text="Sign In"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 100px; height: 34px">
                <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="White" Text="Username"></asp:Label></td>
            <td style="width: 99px; height: 34px">
                <asp:TextBox ID="txtuname" runat="server" Width="200px" placeholder="Enter the User Name"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuname" ErrorMessage="Enter the Emailid"
                    Width="131px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="width: 100px">
                <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="White" Text="Password"></asp:Label></td>
            <td style="width: 99px">
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="200px" placeholder="Enter the Password"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="Enter the password"
                    Width="124px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="center" bgcolor="#ffcc00" colspan="2">
                <asp:Button ID="Button1" runat="server" Font-Size="X-Large" OnClick="Button1_Click"
                    Text="Submit" />&nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 24px">
                <asp:Label ID="lblmessage" runat="server" Font-Size="X-Large" ForeColor="Navy"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

