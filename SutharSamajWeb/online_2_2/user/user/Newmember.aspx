<%@ Page Language="C#" MasterPageFile="~/user/user/mainMasterPage.master" AutoEventWireup="true" CodeFile="Newmember.aspx.cs" Inherits="user_newmember1" Title="::SAMAJ::" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div style=" height: 622px;background-color: #9FBCCC; background-repeat: no-repeat; background-image: url('../../Images/background.jpg');">
<table style="width: 100%;height:100%; margin-top: 0px;"><tr><td>
    <table style="margin-top: 140px; margin-bottom: 170px; margin-left: 240px;">
        
        <tr>
            <td style="width: 133px" >
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="font-family: 'Courier New', Courier, monospace; font-size: 20px; font-weight: bold; color: #CC3399; height: 42px;" >
                <center >Sign In With Your Account<br />
                                    <hr style="color: #CC66FF; background-color: #CC66FF; height: 3px; width: 294px;" /></center> </td>
        </tr>
        <tr>
            <td style="font-size: 20px; text-align: right; height: 41px; width: 133px; color: #1F1F7C; font-family: 'bodoni MT'; font-weight: bold;" >
                Username:</td>
            <td style="height: 41px">
                <asp:TextBox ID="txtuser" runat="server" Width="193px"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td style="font-size: 20px; text-align: right; height: 41px; width: 133px; color: #1F1F7C; font-family: 'bodoni MT'; font-weight: bold;">
                Password:</td>
            <td style="height: 43px">
                <asp:TextBox ID="txtpswd" runat="server" Width="193px" TextMode="Password"></asp:TextBox>
               
            </td>
        </tr>
        
           
       
        <tr><td colspan="2">
            <center><asp:Label ID="Label1" runat="server" Font-Names="Bodoni MT" 
                    Font-Size="14pt" ForeColor="#990000"></asp:Label></center></td></tr>
        <tr>
            <td colspan="2">
               <center style="height: 33px" > 
                   <asp:Button ID="Button1" runat="server" Text="Log In" BorderColor="#5BADFF" BorderStyle="Double" Font-Names="Georgia" 
                       Font-Size="13pt" Height="33px" Width="81px" onclick="Button1_Click" ForeColor="#115FFF" /></center> 
            </td>
            
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            </tr>
    </table>
    </td></tr></table></div>
</asp:Content>

