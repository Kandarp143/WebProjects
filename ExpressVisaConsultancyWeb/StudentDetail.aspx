<%@ Page Language="C#" MasterPageFile="~/Adminmst.master" AutoEventWireup="true" CodeFile="StudentDetail.aspx.cs" Inherits="StudentDetail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td align="right" style="width: 100px">
                <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="White" Text="Enter the ID"></asp:Label>&nbsp;</td>
            <td align="left" style="width: 100px">
                <asp:TextBox ID="txtsearch" runat="server"></asp:TextBox>&nbsp;<asp:Button ID="Button1"
                    runat="server" Text="Search" /></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 237px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True"
                            SortExpression="id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="emailid" HeaderText="emailid" SortExpression="emailid" />
                        <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
                        <asp:BoundField DataField="phno" HeaderText="phno" SortExpression="phno" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT * FROM [login] WHERE ([id] = @id)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [login] WHERE [id] = @original_id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([emailid] = @original_emailid) OR ([emailid] IS NULL AND @original_emailid IS NULL)) AND (([pass] = @original_pass) OR ([pass] IS NULL AND @original_pass IS NULL)) AND (([phno] = @original_phno) OR ([phno] IS NULL AND @original_phno IS NULL))" InsertCommand="INSERT INTO [login] ([name], [emailid], [pass], [phno]) VALUES (@name, @emailid, @pass, @phno)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [login] SET [name] = @name, [emailid] = @emailid, [pass] = @pass, [phno] = @phno WHERE [id] = @original_id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([emailid] = @original_emailid) OR ([emailid] IS NULL AND @original_emailid IS NULL)) AND (([pass] = @original_pass) OR ([pass] IS NULL AND @original_pass IS NULL)) AND (([phno] = @original_phno) OR ([phno] IS NULL AND @original_phno IS NULL))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtsearch" Name="id" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="original_id" Type="Int32" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_emailid" Type="String" />
                        <asp:Parameter Name="original_pass" Type="String" />
                        <asp:Parameter Name="original_phno" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="emailid" Type="String" />
                        <asp:Parameter Name="pass" Type="String" />
                        <asp:Parameter Name="phno" Type="String" />
                        <asp:Parameter Name="original_id" Type="Int32" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_emailid" Type="String" />
                        <asp:Parameter Name="original_pass" Type="String" />
                        <asp:Parameter Name="original_phno" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="emailid" Type="String" />
                        <asp:Parameter Name="pass" Type="String" />
                        <asp:Parameter Name="phno" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>

