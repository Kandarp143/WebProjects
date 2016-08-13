<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin/admin_master.master" AutoEventWireup="true" CodeFile="adminemail.aspx.cs" Inherits="admin_admin_adminemail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server" >
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border: 2px solid #99CCFF; margin-left: 20px; margin-top :10px; width: 700px;">
    <tr>
        <td colspan="2" 
            
            style="border: 1px solid #993300; font-family: 'Courier New', Courier, monospace; color: #993300; background-color: #FFCC99; width: 418px; height: 9px; font-size: 23px; font-weight: bold;">
            &nbsp;&nbsp;&nbsp;&nbsp; Compose Mail :</td>
    
    </tr>
    <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000; height: 34px;">
            From :</td>
        <td style="height: 34px" >
            samaj.ridhi@gmail.com</td>
    </tr>
    <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000; height: 36px;" >
            To :</td>
        <td style="height: 36px">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="1">Committee Member</asp:ListItem>
                <asp:ListItem Value="2">Main Member</asp:ListItem>
                <asp:ListItem Value="3">Main + Sub Member</asp:ListItem>
                <asp:ListItem Selected="True" Value="4">All Member</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000; height: 21px;" 
            colspan="2" >
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000;">
            Subject :</td>
        <td>
            <asp:TextBox ID="YourSubject" runat="server" Width="600px" required 
                MaxLength="150"/><br />
        

            </td>
    </tr>
    <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000; height: 28px;">
            Message :</td>
        <td style="height: 28px">
            <br />
        <asp:TextBox ID="Comments" runat="server" 
                TextMode="MultiLine" Rows="10" Width="600px" required/>
                </td>
    </tr>
    <tr>
        <td style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: 17px;" 
            colspan="2">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Send" 
                Width="104px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <Button Width="103px" style="font-style: normal; font-variant: normal; text-transform: capi-talize; font-weight: bold;"><a href="adminemail.aspx"> Discard </a></Button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <Button Width="103px" style="font-style: normal; font-variant: normal; text-transform: capitalize; font-weight: bold;"><a href="admin_home.aspx"> Back To Home </a></Button>
        </td>
       
    </tr>
    <tr>
        <td colspan="2" 
            style=" font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000;">
            </td>
        
    </tr>
    </table>

</asp:Content>
