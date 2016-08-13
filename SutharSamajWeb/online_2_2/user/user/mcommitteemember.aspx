<%@ Page Language="C#" MasterPageFile="~/user/user/UserMasterPage.master" AutoEventWireup="true" CodeFile="mcommitteemember.aspx.cs" Inherits="user_mcommitteemember" Title="::SAMAJ::" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<table style="width:400px" >
    <tr>
        <td >
           <table><tr><td style="color: #9999FF; font-size: 20px; font-weight: bold;height: 35px; width: 350px;">Committee Members</td><td>Committee Name:&nbsp;<asp:DropDownList 
                   ID="DropDownList1" runat="server" 
                   onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                   AutoPostBack="True">
               <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Samaj</asp:ListItem>
                <asp:ListItem>Manegement</asp:ListItem>
                <asp:ListItem>Samuh-Lagna</asp:ListItem>
                <asp:ListItem>WellFare</asp:ListItem>
                <asp:ListItem>Main Committee</asp:ListItem>
                <asp:ListItem>Palanpur-Committee</asp:ListItem>
                <asp:ListItem>Surat-Committee</asp:ListItem>
                <asp:ListItem>Mumbai-Committee</asp:ListItem>
               </asp:DropDownList>               </td></tr></table>
           
        </td></tr>
    <tr><td colspan ="2">
    <hr / style="color: #9999FF; height: 5px; width: 825px; background-color: #9999FF;"></td></tr>
    <tr>
    <td>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
           
                
                 <table style="background-color: #FFF7AE;color: #333333; font-size: 18px;margin-right: 3px; margin-left: 3px; width: 820px; font-family: 'Bodoni MT';">
                 <tr style="font-size: 22px; color: #FFD5BF; background-color: #006666">
                 <td colspan="2">&nbsp;&nbsp;<asp:Label ID="first_nameLabel" runat="server" Text='<%# Eval("first_name") %>' />
                                <asp:Label ID="second_nameLabel" runat="server" Text='<%# Eval("second_name") %>' />
                                <asp:Label ID="last_nameLabel" runat="server" Text='<%# Eval("last_name") %>' /></td></tr>
               <tr><td style="vertical-align: top; width: 130px;"><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("imageurl") %>'  Height="120pt" Width="100pt" BorderColor="#006666" BorderStyle="Solid" BorderWidth="2" /></td>
               <td><table><tr>
               <td>Committee Name:<asp:Label ID="committee_nameLabel" runat="server" Text='<%# Eval("committee_name") %>' /></td></tr>
               <tr><td>Catagory:<asp:Label ID="catagoryLabel" runat="server" Text='<%# Eval("catagory") %>' /></td></tr>      
                <tr><td> Gender:<asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' /></td></tr>
               <tr><td> Mobile_no:<asp:Label ID="mobile_noLabel" runat="server" Text='<%# Eval("mobile_no") %>' /></td></tr>
               <tr><td>Email Id:<asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("email_id") %>' /></td></tr>        
               <tr><td>Address:<asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' /></td></tr>
               <tr><td>City:<asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' /></td></tr>
                </table></td></tr>
                <tr><td colspan="2"><hr style="width: 800px" /></td></tr></table>
              
            </ItemTemplate>
            <AlternatingItemTemplate>
                
                <table style="background-color: #FAFAD2;color: #284775;font-size: 18px;margin-right: 3px; margin-left: 3px; width: 820px; font-family: 'Bodoni MT';">
                <tr style="font-size: 22px; color: #FFD5BF; background-color: #006666"><td colspan="2"><asp:Label ID="first_nameLabel" runat="server" Text='<%# Eval("first_name") %>' />
                                <asp:Label ID="second_nameLabel" runat="server" Text='<%# Eval("second_name") %>' />
                                <asp:Label ID="last_nameLabel" runat="server" Text='<%# Eval("last_name") %>' /></td></tr>
               <tr><td style="vertical-align: top; width: 130px;"><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("imageurl") %>'  Height="120pt" Width="100pt" BorderColor="#006666" BorderStyle="Solid" BorderWidth="2" /></td>
               <td><table><tr>
               <td>Committee Name:<asp:Label ID="committee_nameLabel" runat="server" Text='<%# Eval("committee_name") %>' /></td></tr>
               <tr><td>Catagory:<asp:Label ID="catagoryLabel" runat="server" Text='<%# Eval("catagory") %>' /></td></tr>      
                <tr><td> Gender:<asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' /></td></tr>
               <tr><td> Mobile_no:<asp:Label ID="mobile_noLabel" runat="server" Text='<%# Eval("mobile_no") %>' /></td></tr>
               <tr><td>Email Id:<asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("email_id") %>' /></td></tr>        
               <tr><td>Address:<asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' /></td></tr>
               <tr><td>City:<asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' /></td></tr>
                </table></td></tr>
                <tr><td colspan="2"><hr style="width: 800px" /></td></tr></table>
             
            </AlternatingItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            
            <LayoutTemplate>
                <div ID="itemPlaceholderContainer" runat="server" 
                    style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span ID="itemPlaceholder" runat="server" />
                </div>
                <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                    <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                        <Fields>
                            
                            <asp:NumericPagerField />
                            
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            
            
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [first_name], [second_name], [last_name], [committee_name], [catagory], [gender], [mobile_no], [email_id], [address], [city] ,[imageurl] FROM [committee_member] ORDER BY [committee_name]">
        </asp:SqlDataSource>
    </td></tr>
    <tr><td>
        <asp:ListView ID="ListView2" runat="server">
         <ItemTemplate>
           
                
                 <table style="background-color: #FFF7AE;color: #333333; font-size: 18px;margin-right: 3px; margin-left: 3px; width: 820px; font-family: 'Bodoni MT';">
                 <tr style="font-size: 22px; color: #FFD5BF; background-color: #006666">
                 <td colspan="2">&nbsp;&nbsp;<asp:Label ID="first_nameLabel" runat="server" Text='<%# Eval("first_name") %>' />
                                <asp:Label ID="second_nameLabel" runat="server" Text='<%# Eval("second_name") %>' />
                                <asp:Label ID="last_nameLabel" runat="server" Text='<%# Eval("last_name") %>' /></td></tr>
               <tr><td style="vertical-align: top; width: 130px;"><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("imageurl") %>'  Height="120pt" Width="100pt" BorderColor="#006666" BorderStyle="Solid" BorderWidth="2" /></td>
               <td><table><tr>
               <td>Committee Name:<asp:Label ID="committee_nameLabel" runat="server" Text='<%# Eval("committee_name") %>' /></td></tr>
               <tr><td>Catagory:<asp:Label ID="catagoryLabel" runat="server" Text='<%# Eval("catagory") %>' /></td></tr>      
                <tr><td> Gender:<asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' /></td></tr>
               <tr><td> Mobile_no:<asp:Label ID="mobile_noLabel" runat="server" Text='<%# Eval("mobile_no") %>' /></td></tr>
               <tr><td>Email Id:<asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("email_id") %>' /></td></tr>        
               <tr><td>Address:<asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' /></td></tr>
               <tr><td>City:<asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' /></td></tr>
                </table></td></tr>
                <tr><td colspan="2"><hr style="width: 800px" /></td></tr></table>
              
            </ItemTemplate>
            <AlternatingItemTemplate>
                <table style="background-color: #FAFAD2;color: #284775;font-size: 18px;margin-right: 3px; margin-left: 3px; width: 820px; font-family: 'Bodoni MT';">
                <tr style="font-size: 22px; color: #FFD5BF; background-color: #006666"><td colspan="2"><asp:Label ID="first_nameLabel" runat="server" Text='<%# Eval("first_name") %>' />
                                <asp:Label ID="second_nameLabel" runat="server" Text='<%# Eval("second_name") %>' />
                                <asp:Label ID="last_nameLabel" runat="server" Text='<%# Eval("last_name") %>' /></td></tr>
               <tr><td style="vertical-align: top; width: 130px;"><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("imageurl") %>'  Height="120pt" Width="100pt" BorderColor="#006666" BorderStyle="Solid" BorderWidth="2" /></td>
               <td><table><tr>
               <td>Committee Name:<asp:Label ID="committee_nameLabel" runat="server" Text='<%# Eval("committee_name") %>' /></td></tr>
               <tr><td>Catagory:<asp:Label ID="catagoryLabel" runat="server" Text='<%# Eval("catagory") %>' /></td></tr>      
                <tr><td> Gender:<asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' /></td></tr>
               <tr><td> Mobile_no:<asp:Label ID="mobile_noLabel" runat="server" Text='<%# Eval("mobile_no") %>' /></td></tr>
               <tr><td>Email Id:<asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("email_id") %>' /></td></tr>        
               <tr><td>Address:<asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' /></td></tr>
               <tr><td>City:<asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' /></td></tr>
                </table></td></tr>
                <tr><td colspan="2"><hr style="width: 800px" /></td></tr></table>
            </AlternatingItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            
            <LayoutTemplate>
                <div ID="itemPlaceholderContainer" runat="server" 
                    style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span ID="itemPlaceholder" runat="server" />
                </div>
                <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                    <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                        <Fields>
                            
                            <asp:NumericPagerField />
                            
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            
            
        </asp:ListView>
    </td></tr>
    </table>
</asp:Content>

