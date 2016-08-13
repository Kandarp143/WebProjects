<%@ Page Language="C#" MasterPageFile="~/user/user/UserMasterPage.master" AutoEventWireup="true" CodeFile="umember.aspx.cs" Inherits="user_umember" Title="::SAMAJ::" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:ListView ID="ListView1" runat="server">
      <ItemTemplate>
      <span>
      <table style="color: #4683FF; font-size: 12px; background-color: #FFECEC;width:820px; margin-left:4px; margin-right:4px;">
    <tr style="background-color: #8282FF; color: #FFFFFF; font-size: 18px;height:30px;">
    <td colspan="2">&nbsp;&nbsp;
    <asp:Label ID="first_nameLabel" runat="server" Text='<%# Eval("first_name") %>' />&nbsp;&nbsp;
             <asp:Label ID="second_nameLabel" runat="server" Text='<%# Eval("second_name") %>' />&nbsp;&nbsp;
             <asp:Label ID="last_nameLabel" runat="server" Text='<%# Eval("last_name") %>' />
                </td></tr>
    <tr>
    <td style="vertical-align: top; width: 130px;"><asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image_url")%>' Height="120pt" Width="100pt" BorderColor="#9999FF" BorderStyle="Solid" BorderWidth="2" />
    </td>
        <td>
        <table>
        <tr><td colspan="3"><br /></td></tr>
        <tr><td>Mobile No:</td><td>:</td><td><asp:Label ID="mobile_noLabel" runat="server" Text='<%# Eval("mobile_no") %>' /></td></tr>
        <tr><td>Email ID</td><td>:</td><td> <asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("email_id") %>' /></td></tr>
        <tr><td>Birth Date</td><td>:</td><td> <asp:Label ID="dayLabel" runat="server" Text='<%# Eval("day") %>' />-<asp:Label ID="monthLabel" runat="server" Text='<%# Eval("month") %>' />
        -<asp:Label ID="yearLabel" runat="server" Text='<%# Eval("year") %>' />
            </td></tr>
        <tr><td>Native Place</td><td>:</td><td> <asp:Label ID="native_placeLabel" runat="server" 
                Text='<%# Eval("native_place") %>' /></td></tr>
        <tr><td>Marital Status</td><td>:</td><td>  <asp:Label ID="marital_statusLabel" runat="server" 
                Text='<%# Eval("marital_status") %>' /></td></tr>
        <tr><td>Blood Group</td><td>:</td><td><asp:Label ID="b_groupLabel" runat="server" Text='<%# Eval("b_group") %>' /></td></tr>
        <tr><td>Mosal:</td><td>:</td><td> <asp:Label ID="mother_maiden_placeLabel" runat="server" 
                Text='<%# Eval("mother_maiden_place") %>' /></td></tr>
        
        <tr><td>Gender</td><td>:</td><td><asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' /></td></tr>
        <tr><td>Qualification</td><td>:</td><td><asp:Label ID="qualificationLabel" runat="server" 
                Text='<%# Eval("qualification") %>' /></td></tr>
        <tr><td>Education</td><td>:</td><td> <asp:Label ID="educationLabel" runat="server" Text='<%# Eval("education") %>' /></td></tr>
         <tr><td>Address</td><td>:</td><td><asp:Label ID="h_add1Label" runat="server" Text='<%# Eval("h_add1") %>' /></td></tr>
         <tr><td>City</td><td>:</td><td><asp:Label ID="h_cityLabel" runat="server" Text='<%# Eval("h_city") %>' /></td></tr>
         <tr><td>State</td><td>:</td><td> <asp:Label ID="h_stateLabel" runat="server" Text='<%# Eval("h_state") %>' /></td></tr>
         <tr><td>Country</td><td>:</td><td><asp:Label ID="h_countryLabel" runat="server" Text='<%# Eval("h_country") %>' /></td></tr>
         
       </table>
              <tr><td colspan="2"><hr /></td></tr>
           </td>
           </tr></span>
           
           </table>
            
            
          
        </ItemTemplate>
        
        <AlternatingItemTemplate>
            <span style="color: #284775;">
        <table style="background-color: #FAFAD2;font-size: 12px;width:820px; margin-left:4px; margin-right:4px;">
    <tr style="background-color: #3E6C69; font-size: 18px; color: #FFCC99;height:30px;">
    <td colspan="2">&nbsp;&nbsp;
    <asp:Label ID="first_nameLabel" runat="server" Text='<%# Eval("first_name") %>' />&nbsp;&nbsp;
             <asp:Label ID="second_nameLabel" runat="server" Text='<%# Eval("second_name") %>' />&nbsp;&nbsp;
             <asp:Label ID="last_nameLabel" runat="server" Text='<%# Eval("last_name") %>' />
            
    </td></tr>
    <tr>
    <td style="vertical-align: top;width: 130px;"><asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image_url")%>' Height="120pt" Width="100pt" BorderColor="#29547E" BorderStyle="Solid" BorderWidth="2" />
    </td>
        <td>
        <table>
        <tr><td colspan="3"><br /></td></tr>
        <tr><td>Mobile No:</td><td>:</td><td><asp:Label ID="mobile_noLabel" runat="server" Text='<%# Eval("mobile_no") %>' /></td></tr>
        <tr><td>Email ID</td><td>:</td><td> <asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("email_id") %>' /></td></tr>
        <tr><td>Birth Date</td><td>:</td><td> <asp:Label ID="dayLabel" runat="server" Text='<%# Eval("day") %>' />-<asp:Label ID="monthLabel" runat="server" Text='<%# Eval("month") %>' />
        -<asp:Label ID="yearLabel" runat="server" Text='<%# Eval("year") %>' />
            </td></tr>
        <tr><td>Native Place</td><td>:</td><td> <asp:Label ID="native_placeLabel" runat="server" 
                Text='<%# Eval("native_place") %>' /></td></tr>
        <tr><td>Marital Status</td><td>:</td><td>  <asp:Label ID="marital_statusLabel" runat="server" 
                Text='<%# Eval("marital_status") %>' /></td></tr>
        <tr><td>Blood Group</td><td>:</td><td><asp:Label ID="b_groupLabel" runat="server" Text='<%# Eval("b_group") %>' /></td></tr>
        <tr><td>Mosal:</td><td>:</td><td> <asp:Label ID="mother_maiden_placeLabel" runat="server" 
                Text='<%# Eval("mother_maiden_place") %>' /></td></tr>
        
        <tr><td>Gender</td><td>:</td><td><asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' /></td></tr>
        <tr><td>Qualification</td><td>:</td><td><asp:Label ID="qualificationLabel" runat="server" 
                Text='<%# Eval("qualification") %>' /></td></tr>
        <tr><td>Education</td><td>:</td><td> <asp:Label ID="educationLabel" runat="server" Text='<%# Eval("education") %>' /></td></tr>
         <tr><td>Address</td><td>:</td><td><asp:Label ID="h_add1Label" runat="server" Text='<%# Eval("h_add1") %>' /></td></tr>
         <tr><td>City</td><td>:</td><td><asp:Label ID="h_cityLabel" runat="server" Text='<%# Eval("h_city") %>' /></td></tr>
         <tr><td>State</td><td>:</td><td> <asp:Label ID="h_stateLabel" runat="server" Text='<%# Eval("h_state") %>' /></td></tr>
         <tr><td>Country</td><td>:</td><td><asp:Label ID="h_countryLabel" runat="server" Text='<%# Eval("h_country") %>' /></td></tr>
         
       </table>
           <tr><td colspan="2"><hr /></td></tr>
           </td>
           </tr>
           </table>
            </span>
        </AlternatingItemTemplate>
        
        
        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" 
                style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <span ID="itemPlaceholder" runat="server" />
            </div>
            <div style="font-size: 18px; letter-spacing: 3pt; font-weight: bold; height: 40px;">
            <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                        <Fields>
                            
                            <asp:NumericPagerField />
                            
                        </Fields>
                    </asp:DataPager>
                
            
            </div>
        </LayoutTemplate>
        

      
    </asp:ListView>
</asp:Content>

