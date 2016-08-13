<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Student_visitor.aspx.cs" Inherits="Users" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server" Width="100%">
    
    <table width="100%">
        <tr>
            <td colspan="2" bgcolor="#ffcc00" align="center" style="height: 33px">
                <asp:Label ID="Label5" runat="server" Font-Size="X-Large" ForeColor="Navy" Height="27px"
                    Text="Sign In"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 55px;" align="right">
                <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="White" Text="Email Id"></asp:Label></td>
            <td style="width: 99px; height: 55px;">
                <asp:TextBox ID="txtemail" runat="server" Width="200px" placeholder="Enter the EmailID"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail"
                    ErrorMessage="Enter the Emailid" Width="131px"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="*" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 100px" align="right">
                <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="White" Text="Password"></asp:Label></td>
            <td style="width: 99px">
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="200px" placeholder="Enter the Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass"
                    ErrorMessage="Enter the password" Width="124px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="center" colspan="2" bgcolor="#ffcc00" style="height: 22px">
                <asp:Button ID="Button1" runat="server" Font-Size="X-Large" OnClick="Button1_Click"
                    Text="Submit" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" CausesValidation="False" Font-Size="X-Large"
                    OnClick="Button2_Click" Text="Sign up" />
            </td>
        </tr>
        <tr>
            <td align="center"  colspan="2" style="height: 24px">
                <asp:Label ID="lblmessage" runat="server" Font-Size="X-Large" ForeColor="Navy"></asp:Label></td>
        </tr>
        
    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 24px;">
            </td>
            <td style="width: 100px; height: 24px;">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel2" runat="server" Width="100%" Visible="False">
                    <table style="height: 247px" width="100%">
                        <tr>
                            <td align="center" bgcolor="#ffcc00" colspan="2" style="height: 21px">
                                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="Navy" Text="Register Page"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 100px; height: 20px">
                                <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="White" Text="User Name"
                                    Width="97px"></asp:Label></td>
                            <td style="width: 95px; height: 20px">
                                <asp:TextBox ID="txtuname" runat="server" Width="200px" placeholder="Enter the UserName"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtuname"
                                    ErrorMessage="Enter the Value"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 100px; height: 11px">
                                <asp:Label ID="Label6" runat="server" Font-Size="Large" ForeColor="White" Text="Email Id"></asp:Label></td>
                            <td style="width: 95px; height: 11px">
                                <asp:TextBox ID="txtemailid" runat="server" Width="200px" placeholder="Enter the EmailID"></asp:TextBox><asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter the Value"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail"
                                    ErrorMessage="Enter the Value" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 100px; height: 21px">
                                <asp:Label ID="Label7" runat="server" Font-Size="Large" ForeColor="White" Text="Password"></asp:Label></td>
                            <td style="width: 95px; height: 21px">
                                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="200px" placeholder="Enter the Password"></asp:TextBox><asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpass" ErrorMessage="Enter the Value"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 100px; height: 21px">
                                <asp:Label ID="Label8" runat="server" Font-Size="Large" ForeColor="White" Text="Ph. NO."></asp:Label></td>
                            <td style="width: 95px; height: 21px">
                                <asp:TextBox ID="txtphono" runat="server" Width="200px" placeholder="Enter the Phono"></asp:TextBox><asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtphono" ErrorMessage="Enter the Value"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="center" bgcolor="#ffcc00" colspan="2" style="height: 21px">
                                &nbsp;<asp:Button ID="btnsubmit" runat="server" Font-Size="X-Large" OnClick="btnsubmit_Click"
                                    Text="Submit" />
                                <asp:Label ID="lblmsg" runat="server" Font-Size="X-Large" ForeColor="Navy"></asp:Label></td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>

</asp:Content>

