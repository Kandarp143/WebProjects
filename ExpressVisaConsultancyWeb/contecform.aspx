<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="contecform.aspx.cs" Inherits="contecform" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td colspan="2" bgcolor="#ffcc00" style="height: 27px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px" align="right">
                <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="White" Text="Name"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtname" runat="server" Width="200px" placeholder="Enter the Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                    ErrorMessage="Enter the Value"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="width: 100px">
                <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="White" Text="Email ID"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtemail" runat="server" Width="200px" placeholder="Enter the Emailid"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmessage"
                    ErrorMessage="Enter the Value"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="width: 100px">
                <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="White" Text="Subject"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtsubject" runat="server" Width="200px" placeholder="Enter the Subject"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtname"
                    ErrorMessage="Enter the Value"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="width: 100px" valign="top">
                <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="White" Text="Message"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtmessage" runat="server" Width="200px" placeholder="Enter the Message" Height="100px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtname"
                    ErrorMessage="Enter the Value"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="Button1" runat="server" Font-Size="Large" Text="SUBMIT" OnClick="Button1_Click" />
                <asp:Label ID="lblmessage" runat="server" Font-Size="Large" ForeColor="Blue"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" colspan="2" bgcolor="#ffcc00" style="height: 23px">
            </td>
        </tr>
    </table>
</asp:Content>

