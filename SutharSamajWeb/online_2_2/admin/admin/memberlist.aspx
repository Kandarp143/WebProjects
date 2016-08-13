<%@ Page Language="C#" MasterPageFile="~/admin/admin/admin_master.master" AutoEventWireup="true" CodeFile="memberlist.aspx.cs" Inherits="admin_memberlist" Title="::SAMAJ::" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 967px; margin-right: 80px"><tr><td style="width: 807px">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
    <HeaderTemplate>
    <table border="1"  style=" border-style:ridge; border-color: #C4C4FF; margin: 30px; width:300px;">
    <tr ><td colspan="2" style="font-family: Century; font-size: 18px; color: #FF6666; font-weight: bold;">MEMBER LIST<hr style="background-color: #FF6666; color: #FF6666; border-color: #FF6666" /></td></tr>
    <tr>
        <td style="color: #6C00D9; font-size: 20px; margin: 3px; font-weight: bold; font-family: 'Times New Roman', Times, serif;"  >&nbsp;&nbsp;&nbsp;Username</td>
        <td style="color: #6C00D9; font-size: 20px; margin: 3px; font-weight: bold; font-family: 'Times New Roman', Times, serif;">&nbsp;&nbsp;&nbsp;Password</td>
    </tr>
    </HeaderTemplate>
    <ItemTemplate>
    <tr>
        <td style="font-family: 'Courier New', Courier, monospace; font-size: 17px; font-weight: bold; color: #FF3333">&nbsp;&nbsp;&nbsp;<%#DataBinder.Eval(Container.DataItem,"username") %></td>
        <td style="font-family: 'Courier New', Courier, monospace; font-size: 17px; font-weight: bold; color: #FF3333">&nbsp;&nbsp;&nbsp;<%#DataBinder.Eval(Container.DataItem,"password") %></td>
    </tr>
    </ItemTemplate>
    <FooterTemplate></table></FooterTemplate>
   
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT * FROM [user_login]"></asp:SqlDataSource>
    </td></tr>
    <tr><td style="width: 807px"><center>
        <asp:LinkButton ID="btnadd"  runat="server" PostBackUrl="~/admin/admin/addmember.aspx" 
            Font-Bold="True" Font-Names="Khmer UI" Font-Size="13pt" 
            ForeColor="#3366FF">Add New Member</asp:LinkButton>
            </center></td></tr></table>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    </asp:Content>