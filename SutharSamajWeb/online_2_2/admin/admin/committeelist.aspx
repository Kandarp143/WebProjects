<%@ Page Language="C#" MasterPageFile="~/admin/admin/admin_master.master" AutoEventWireup="true" CodeFile="committeelist.aspx.cs" Inherits="admin_committeelist" Title="::SAMAJ::" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table><tr><td>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
     <HeaderTemplate>
    <table border="2"  style=" border-style:solid; border-color: #C4C4FF; margin:5px;width:500px">
    <tr ><td colspan="9" style="font-family: Century; font-size: 18px; color: #FF6666; font-weight: bold; background-color: #E1FFFF; padding-top:5px;margin-left: 3px;">COMMITTEE MEMBER LIST<hr style="background-color: #FF6666; color: #FF6666; border-color: #FF6666" /></td></tr>
    <tr style="color: #6C00D9; font-size: 17px; font-weight: bold; font-family: 'Times New Roman', Times, serif; margin-left: 2px;"  >
        <td>Name</td>
        <td>Committee</td>
        <td>Catagory</td>
        <td>Gender</td>
        <td>Address</td>
        <td>City</td>
        <td>Mobile No</td>
        <td>Email ID</td>
    </tr>
    </HeaderTemplate>
    <ItemTemplate>
    <tr>
        <td style="border-color: #9966FF"><%#DataBinder.Eval(Container.DataItem,"first_name")%>&nbsp;<%#DataBinder.Eval(Container.DataItem,"second_name") %>&nbsp;<%#DataBinder.Eval(Container.DataItem,"last_name") %></td>
        <td style="border-color: #9966FF" ><%#DataBinder.Eval(Container.DataItem,"committee_name") %></td>
        <td style="border-color: #9966FF"><%#DataBinder.Eval(Container.DataItem,"catagory") %></td>
        <td style="border-color: #9966FF"><%#DataBinder.Eval(Container.DataItem,"gender") %></td>
        <td style="border-color: #9966FF"><%#DataBinder.Eval(Container.DataItem,"address") %></td>
        <td style="border-color: #9966FF"><%#DataBinder.Eval(Container.DataItem,"city") %></td>
        <td style="border-color: #9966FF"><%#DataBinder.Eval(Container.DataItem,"mobile_no") %></td>
        <td style="border-color: #9966FF"><%#DataBinder.Eval(Container.DataItem,"email_id") %></td>
        
    </tr>
    </ItemTemplate>
    <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [committee_member]"></asp:SqlDataSource>
    </td></tr>
    <tr>
        <td>
            <asp:LinkButton ID="LinkButton1" runat="server" 
                PostBackUrl="addcommiteemember.aspx">Add Committee Member</asp:LinkButton></td></tr></table>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

</asp:Content>