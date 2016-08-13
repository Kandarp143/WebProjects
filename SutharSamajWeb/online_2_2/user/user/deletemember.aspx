<%@ Page Language="C#" MasterPageFile="~/user/user/UserMasterPage.master" AutoEventWireup="true" CodeFile="deletemember.aspx.cs" Inherits="user_deletemember" Title="::SAMAJ::" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="width: 834px; background-color: #E0DEEB; height: 571px; background-image: url('../../Images/deletebg.jpg'); background-repeat: no-repeat;">
    <table style="width: 834px; padding-top: 100px; padding-left: 100px;">
    <tr><td>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
            onrowdeleting="GridView1_RowDeleting" Width="600px" 
            Font-Names="Bodoni MT" Font-Size="16pt" BackColor="White" 
            BorderStyle="None">
            <RowStyle BackColor="White" ForeColor="#003399" />
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                
                
                
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" 
                Font-Size="20pt" />
        </asp:GridView>
    </td></tr>
    <tr><td><center>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Bodoni MT" 
            Font-Size="14pt" Font-Underline="False" ForeColor="#003399"></asp:Label></center>
       
    </td></tr></table></div>
</asp:Content>

