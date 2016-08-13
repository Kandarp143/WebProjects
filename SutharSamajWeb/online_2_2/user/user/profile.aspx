<%@ Page Language="C#" MasterPageFile="~/user/user/UserMasterPage.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="user_personal2" Title="::SAMAJ::" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table>
  <tr><td>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
    <HeaderTemplate></HeaderTemplate>
    <ItemTemplate>
    <table style="font-size: 16px; background-color: #FFCC66; font-family: 'Bodoni MT'; color: #993300; width: 810px; margin-left: 3px; margin-right:3px;">
    <tr style="background-color: #BF3F00; font-family: Century; color: #FFCC99; font-weight: bold; font-size: 18px; height: 35px; padding-top: 4px; padding-bottom: 4px;">
    <td colspan="3">&nbsp;&nbsp;<%#DataBinder.Eval(Container.DataItem,"first_name")%>&nbsp;&nbsp;<%#DataBinder.Eval(Container.DataItem,"second_name")%>&nbsp;&nbsp;<%#DataBinder.Eval(Container.DataItem,"last_name")%>
    </td></tr>
    <tr >
    <td rowspan="2" style="vertical-align: top; width: 150px;"><asp:Image ID="Image1" runat="server" ImageUrl='<%#DataBinder.Eval(Container.DataItem,"image_url")%>' Height="160pt" Width="115pt" ImageAlign="Top" BorderColor="#CC3300" BorderStyle="Solid" BorderWidth="2" />
        <br>
    </br>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#Eval("member_no","~/user/user/uploadphoto.aspx?id={0}")%>' Text="Change Photo"></asp:HyperLink>
    </td></tr>
    <tr><td>
        
         <table style="padding-top: 0px; vertical-align: top;">
         <tr><td colspan="3">    <asp:HyperLink ID="edit" runat="server" NavigateUrl='<%#Eval("member_no","~/user/user/editmprofile.aspx?id={0}")%>' Text="Edit"></asp:HyperLink></td></tr>
        <tr><td>Mobile No:</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"mobile_no")%></td></tr>
        <tr><td>Email ID</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"email_id")%></td></tr>
        <tr><td>Birth Date</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"day")%>-<%#DataBinder.Eval(Container.DataItem,"month")%>-<%#DataBinder.Eval(Container.DataItem,"year")%></td></tr>
        <tr><td>Native Place</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"native_place")%></td></tr>
        <tr><td>Marital Status</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"marital_status")%></td></tr>
        <tr><td>Blood Group</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"b_group")%></td></tr>
        <tr><td>Mosal:</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"mother_maiden_place")%></td></tr>
        <tr><td>Relation with Main Member</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"relation_with_mmber")%></td></tr>
        <tr><td>Gender</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"gender")%></td></tr>
        <tr><td>Qualification</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"qualification")%></td></tr>
        <tr><td>Education</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"education")%></td></tr>
        <tr><td>Profession</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"profession")%></td></tr>
        <tr><td>Profession Detail</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"profession_detail")%></td></tr>
        </table>
        </td>
       <td style="vertical-align: top;" >
       
       <table style="vertical-align: top; font-size: 12px;">
           <tr><td><h3><u>Home Location</u></h3></td></tr>
         <tr><td><%#DataBinder.Eval(Container.DataItem,"h_add1")%></td></tr>
         <tr><td><%#DataBinder.Eval(Container.DataItem,"h_add2")%></td></tr>
         <tr><td><%#DataBinder.Eval(Container.DataItem,"h_city")%></td></tr>
         <tr><td><%#DataBinder.Eval(Container.DataItem,"h_state")%></td></tr>
         <tr><td><%#DataBinder.Eval(Container.DataItem,"h_country")%></td></tr>
         <tr><td><p></p></td></tr>
       </table>
       <table style="vertical-align: top; font-size: 12px;" >
        <tr><td><h3><u>Work Location</u></h3></td></tr>
        <tr><td><%#DataBinder.Eval(Container.DataItem,"w_add1")%></td></tr>
        <tr><td><%#DataBinder.Eval(Container.DataItem,"w_add2")%></td></tr>
        <tr><td><%#DataBinder.Eval(Container.DataItem,"w_city")%></td></tr>
        <tr><td><%#DataBinder.Eval(Container.DataItem,"w_phone")%></td></tr>
        <tr><td><%#DataBinder.Eval(Container.DataItem,"w_emailid")%></td></tr>
        <tr><td><%#DataBinder.Eval(Container.DataItem,"w_websit")%></td></tr>
        </table>
        
      </td></tr></table>
    </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [main_member_detail] WHERE ([username] = @username)">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="name" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
   </td></tr><tr ><td>
   <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
   <HeaderTemplate></HeaderTemplate>
    <ItemTemplate>
    <table style="font-size: 16px; background-color: #FFCC66; font-family: 'Bodoni MT'; color: #993300; width: 810px; margin-left: 3px; margin-right:3px;">
        <tr style="background-color: #BF3F00; font-family: Century; color: #FFCC99; font-weight: bold; font-size: 18px; height: 35px; padding-top: 4px; padding-bottom: 4px; padding-left: 10px;">
    <td colspan="3">&nbsp;&nbsp;<%#DataBinder.Eval(Container.DataItem,"first_name")%>&nbsp;&nbsp;<%#DataBinder.Eval(Container.DataItem,"second_name")%>&nbsp;&nbsp;<%#DataBinder.Eval(Container.DataItem,"last_name")%>
    </td></tr>
    <tr>
    <td rowspan="2" style="vertical-align: top; width: 150px;"><asp:Image ID="Image1" runat="server" ImageUrl='<%#DataBinder.Eval(Container.DataItem,"image_url")%>' Height="160pt" Width="115pt" ImageAlign="Top" BorderColor="#CC3300" BorderStyle="Solid" BorderWidth="2" />
        <br>
    </br>
       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#Eval("member_no","~/user/user/sub_uploadphoto.aspx?id={0}")%>' Text="Change Photo"></asp:HyperLink>
    </td>
        <td>
        
        <table>
        <tr><td colspan="3"><asp:HyperLink ID="edit" runat="server" NavigateUrl='<%#Eval("member_no","~/user/user/editsprofile.aspx?id={0}")%>' Text="Edit"></asp:HyperLink></td></tr>
        <tr><td>Mobile No:</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"mobile_no")%></td></tr>
        <tr><td>Email ID</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"email_id")%></td></tr>
        <tr><td>Birth Date</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"day")%>-<%#DataBinder.Eval(Container.DataItem,"month")%>-<%#DataBinder.Eval(Container.DataItem,"year")%></td></tr>
        <tr><td>Native Place</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"native_place")%></td></tr>
        <tr><td>Marital Status</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"marital_status")%></td></tr>
        <tr><td>Blood Group</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"b_group")%></td></tr>
        <tr><td>Mosal:</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"mother_maiden_place")%></td></tr>
        <tr><td>Relation with Main Member</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"relation_with_mmber")%></td></tr>
        <tr><td>Gender</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"gender")%></td></tr>
        <tr><td>Qualification</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"qualification")%></td></tr>
        <tr><td>Education</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"education")%></td></tr>
        <tr><td>Profession</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"profession")%></td></tr>
        <tr><td>Profession Detail</td><td>:</td><td><%#DataBinder.Eval(Container.DataItem,"profession_detail")%></td></tr>
        </table>
        </td>
       <td>
       
       <table style="vertical-align: top; font-size: 12px;">
           <tr><td><h3><u>Home Location</u></h3></td></tr>
         <tr><td><%#DataBinder.Eval(Container.DataItem,"h_add1")%></td></tr>
         <tr><td><%#DataBinder.Eval(Container.DataItem,"h_add2")%></td></tr>
         <tr><td><%#DataBinder.Eval(Container.DataItem,"h_city")%></td></tr>
         <tr><td><%#DataBinder.Eval(Container.DataItem,"h_state")%></td></tr>
         <tr><td><%#DataBinder.Eval(Container.DataItem,"h_country")%></td></tr>
         <tr><td><p></p></td></tr>
       </table>
       <table style="vertical-align: top; font-size: 12px;">
        <tr><td><h3><u>Work Location</u></h3></td></tr>
        <tr><td><%#DataBinder.Eval(Container.DataItem,"w_add1")%></td></tr>
        <tr><td><%#DataBinder.Eval(Container.DataItem,"w_add2")%></td></tr>
        <tr><td><%#DataBinder.Eval(Container.DataItem,"w_city")%></td></tr>
        <tr><td><%#DataBinder.Eval(Container.DataItem,"w_phone")%></td></tr>
        <tr><td><%#DataBinder.Eval(Container.DataItem,"w_emailid")%></td></tr>
        <tr><td><%#DataBinder.Eval(Container.DataItem,"w_websit")%></td></tr>
        <tr><td><p></p></td></tr>
        </table>
        <p></p>
      </td></tr></table>
    </ItemTemplate>
      
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [sub_member_detail] WHERE ([username] = @username)">
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="name" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </td></tr></table>
   </asp:Content>

