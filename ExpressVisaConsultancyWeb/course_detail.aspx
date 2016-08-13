<%@ Page Language="C#" MasterPageFile="~/Adminmst.master" AutoEventWireup="true" CodeFile="course_detail.aspx.cs" Inherits="course_detail" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="right" style="width: 100%">
        <tr>
            <td bgcolor="#FF9933" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="White" 
                    Text="Duration"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtduration" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtduration" ErrorMessage="Fill theText Box"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="White" 
                    Text="Eligibility"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txteligibility" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txteligibility" ErrorMessage="Fill theText Box"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="White" 
                    Text="Net Fees"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtnetfees" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtnetfees" ErrorMessage="Fill theText Box"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label4" runat="server" Font-Size="Medium" ForeColor="White" 
                    Text="Application fee"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtapplicationfee" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtapplicationfee" ErrorMessage="Fill theText Box"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label5" runat="server" Font-Size="Medium" ForeColor="White" 
                    Text="Course Fees"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtcoursefee" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtcoursefee" ErrorMessage="Fill theText Box"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label6" runat="server" Font-Size="Medium" ForeColor="White" 
                    Text="Awarding Body"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtawarding" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtawarding" ErrorMessage="Fill theText Box"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label7" runat="server" Font-Size="Medium" ForeColor="White" 
                    Text="Acccomodation"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtaccomodation" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtaccomodation" ErrorMessage="Fill theText Box"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label8" runat="server" Font-Size="Medium" ForeColor="White" 
                    Text="Food"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtfood" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtfood" ErrorMessage="Fill theText Box"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label9" runat="server" Font-Size="Medium" ForeColor="White" 
                    Text="IELTS / TOFELs"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtielts" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtielts" ErrorMessage="Fill theText Box"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label10" runat="server" Font-Size="Medium" ForeColor="White" 
                    Text="Intake"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtintake" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtintake" ErrorMessage="Fill theText Box"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label11" runat="server" Font-Size="Medium" ForeColor="White" 
                    Text="Dead line"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtdeadline" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtdeadline" ErrorMessage="Fill theText Box"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label12" runat="server" Font-Size="Medium" ForeColor="White" 
                    Text="Bank Balance"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtbankbalance" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="txtbankbalance" ErrorMessage="Fill theText Box"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left">
                &nbsp;</td>
            <td align="left">
                <asp:Button ID="btnsubmit" runat="server" Font-Size="Large" 
                    onclick="btnsubmit_Click" Text="Submit" />
&nbsp;<asp:Label ID="lblmessage" runat="server" Font-Size="Medium" ForeColor="#FFFF66"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left" bgcolor="#FF9933" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

