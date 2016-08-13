<%@ Page Language="C#" MasterPageFile="~/admin/admin/admin_master.master" AutoEventWireup="true" CodeFile="addcommiteemember.aspx.cs" Inherits="admin_addcommiteemember1" Title="::SAMAJ::" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div runat="server" >
<table style="border: 2px solid #99CCFF; margin-left: 20px; margin-top :10px; width: 700px;">
    <tr>
        <td colspan="3" 
            style="border: 1px solid #993300; font-family: 'Courier New', Courier, monospace; color: #993300; background-color: #FFCC99; width: 418px; height: 9px; font-size: 23px; font-weight: bold;">
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Committee Member Detail </td>
    
    </tr>
    <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000; height: 34px;">
            First Name:</td>
        <td style="height: 34px" >
            <asp:TextBox ID="txtfname" runat="server" Width="211px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtfname" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
        <td style="text-align: left; font-family: 'Times New Roman', Times, serif; font-size: 16px; color: #FF0000;" >
            Note: Fields with red color are require.</td>
    </tr>
    <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000;" >
            Second Name:</td>
        <td>
            <asp:TextBox ID="txtsname" runat="server" Width="211px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtsname" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr >
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000;">
            Last Name:</td>
        <td>
            <asp:TextBox ID="txtlname" runat="server" Width="212px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtlname" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000;">
            City:</td>
        <td>
            <asp:TextBox ID="txtcity" runat="server" Width="211px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtlname" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000; height: 28px;">
            Committee Name:&nbsp; </td>
        <td style="height: 28px">
            <asp:DropDownList ID="drpcommittee" runat="server" Height="22px" Width="119px">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Samaj</asp:ListItem>
                <asp:ListItem>Manegement</asp:ListItem>
                <asp:ListItem>Samuh-Lagna</asp:ListItem>
                <asp:ListItem>WellFare</asp:ListItem>
                <asp:ListItem>Main Committee</asp:ListItem>
                <asp:ListItem>Palanpur-Committee</asp:ListItem>
                <asp:ListItem>Surat-Committee</asp:ListItem>
                <asp:ListItem>Mumbai-Committee</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="drpcommittee" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
        <td style="height: 28px">
            </td>
    </tr>
    <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000; height: 31px;">
            Catagory</td>
        <td style="height: 31px">
            <asp:DropDownList ID="drpcatagory" runat="server" Height="22px" Width="118px">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>President</asp:ListItem>
                <asp:ListItem>Sub-President</asp:ListItem>
                <asp:ListItem>Secretory</asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Member</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="drpcatagory" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
        <td style="height: 31px">
                                 </td>
    </tr>
    <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000; height: 31px;">
            Gender:</td>
        <td style="height: 31px">
            <table><tr><td><asp:RadioButtonList ID="RadioButtonList1" runat="server" EnableTheming="True" 
                RepeatDirection="Horizontal">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList></td><td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="txtlname" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td></tr></table>
        </td>
        <td style="height: 31px">
                                 &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; height: 30px;">
            Contact No:</td>
        <td style="height: 30px">
            <asp:TextBox ID="txtc_no" runat="server" Width="211px" Height="20px"></asp:TextBox>
        </td>
        <td style="height: 30px">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtc_no" ErrorMessage="Enter only 11 digit start with 0." 
                ValidationExpression="(0(\d{10}))"></asp:RegularExpressionValidator>
            </td>
    </tr>
    <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px;">
            Address:</td>
        <td>
            <asp:TextBox ID="txtc_add" runat="server" Width="211px" TextMode="MultiLine" 
                Columns="3"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000;">
            Email Id: 
        </td>
        <td>
            <asp:TextBox ID="txtemail" runat="server" Width="211px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="Enter Email ID In Valid Formate" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; font-family: 'Times New Roman', Times, serif; font-size: 17px;" colspan="3"><center>
            <asp:Label ID="lblerror" runat="server" Text=""></asp:Label></center>
        </td>
       
    </tr>
    <tr>
        <td colspan="3" style=" font-family: 'Times New Roman', Times, serif; font-size: 17px; color: #FF0000;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="cmdbtn" runat="server" Text="Save" Width="98px" 
                onclick="cmdbtn_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input 
                id="Reset1" style="width: 98px; height: 28px;" type="reset" value="Reset" 
                runat ="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <button style="width: 98px; height: 28px; font-style: normal; font-variant: normal; text-transform: capitalize; font-weight: bold;">
            <a href="admin_home.aspx"  > home </a></button>  

        </td>
        
    </tr>
    </table>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

