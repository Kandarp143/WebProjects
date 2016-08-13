<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="Adminlogin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td colspan="2" bgcolor="#ffcc00" style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px" align="right">
                <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="White" Text="Email Id"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtemail" runat="server" Width="200px" placeholder="Enter the EmailID"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                    ErrorMessage="Enter email id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 27px;" align="right">
                <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="White" Text="Password"></asp:Label></td>
            <td style="width: 100px; height: 27px;">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="200px" placeholder="Enter the Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword"
                    ErrorMessage="Enter the password" Width="124px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 24px;">
            </td>
            <td style="width: 100px; height: 24px;">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" bgcolor="#ffcc00">
                <asp:Button ID="Button1" runat="server" Font-Size="X-Large" OnClick="Button1_Click"
                    Text="Submit" />
                <asp:Label ID="lblmessage" runat="server" Font-Size="X-Large" ForeColor="#0000C0"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

