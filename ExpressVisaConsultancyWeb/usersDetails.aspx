<%@ Page Language="C#" MasterPageFile="~/Adminmst.master" AutoEventWireup="true" CodeFile="usersDetails.aspx.cs" Inherits="usersDetails" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td style="width: 100px" align="right">
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="White" Text="Search Name"></asp:Label></td>
            <td style="width: 100px" align="left">
                <asp:TextBox ID="txtsearch" runat="server"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="Search" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True"
                            SortExpression="id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="emailid" HeaderText="emailid" SortExpression="emailid" />
                        <asp:BoundField DataField="desiganation" HeaderText="desiganation" SortExpression="desiganation" />
                        <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT * FROM [emp_login] WHERE (([name] = @name) AND ([name] = @name2))" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [emp_login] WHERE [id] = @original_id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([emailid] = @original_emailid) OR ([emailid] IS NULL AND @original_emailid IS NULL)) AND (([desiganation] = @original_desiganation) OR ([desiganation] IS NULL AND @original_desiganation IS NULL)) AND (([pass] = @original_pass) OR ([pass] IS NULL AND @original_pass IS NULL))" InsertCommand="INSERT INTO [emp_login] ([name], [emailid], [desiganation], [pass]) VALUES (@name, @emailid, @desiganation, @pass)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [emp_login] SET [name] = @name, [emailid] = @emailid, [desiganation] = @desiganation, [pass] = @pass WHERE [id] = @original_id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([emailid] = @original_emailid) OR ([emailid] IS NULL AND @original_emailid IS NULL)) AND (([desiganation] = @original_desiganation) OR ([desiganation] IS NULL AND @original_desiganation IS NULL)) AND (([pass] = @original_pass) OR ([pass] IS NULL AND @original_pass IS NULL))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtsearch" Name="name" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtsearch" Name="name2" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="original_id" Type="Int32" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_emailid" Type="String" />
                        <asp:Parameter Name="original_desiganation" Type="String" />
                        <asp:Parameter Name="original_pass" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="emailid" Type="String" />
                        <asp:Parameter Name="desiganation" Type="String" />
                        <asp:Parameter Name="pass" Type="String" />
                        <asp:Parameter Name="original_id" Type="Int32" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_emailid" Type="String" />
                        <asp:Parameter Name="original_desiganation" Type="String" />
                        <asp:Parameter Name="original_pass" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="emailid" Type="String" />
                        <asp:Parameter Name="desiganation" Type="String" />
                        <asp:Parameter Name="pass" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                &nbsp;
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

