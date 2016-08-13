<%@ Page Language="C#" MasterPageFile="~/Adminmst.master" AutoEventWireup="true" CodeFile="EntryformDetail.aspx.cs" Inherits="EntryformDetail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td align="right" style="width: 100px; height: 17px">
                <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="White" Text="Enter Search Id"></asp:Label></td>
            <td align="left" style="width: 100px; height: 17px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Search" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                &nbsp;
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False"
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2"
                    DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None"
                    Height="50px" Width="125px">
                    <FooterStyle BackColor="Tan" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True"
                            SortExpression="Id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                        <asp:BoundField DataField="emailid" HeaderText="emailid" SortExpression="emailid" />
                        <asp:BoundField DataField="phno" HeaderText="phno" SortExpression="phno" />
                        <asp:BoundField DataField="prog_in_1stprefer" HeaderText="prog_in_1stprefer" SortExpression="prog_in_1stprefer" />
                        <asp:BoundField DataField="prog_in_2ndprefer" HeaderText="prog_in_2ndprefer" SortExpression="prog_in_2ndprefer" />
                        <asp:BoundField DataField="study" HeaderText="study" SortExpression="study" />
                        <asp:BoundField DataField="pr" HeaderText="pr" SortExpression="pr" />
                        <asp:BoundField DataField="perment" HeaderText="perment" SortExpression="perment" />
                        <asp:BoundField DataField="visitor" HeaderText="visitor" SortExpression="visitor" />
                        <asp:BoundField DataField="contry" HeaderText="contry" SortExpression="contry" />
                        <asp:BoundField DataField="budget" HeaderText="budget" SortExpression="budget" />
                        <asp:BoundField DataField="fathers_parentoccupation" HeaderText="fathers_parentoccupation"
                            SortExpression="fathers_parentoccupation" />
                        <asp:BoundField DataField="exp" HeaderText="exp" SortExpression="exp" />
                        <asp:BoundField DataField="qulification" HeaderText="qulification" SortExpression="qulification" />
                        <asp:BoundField DataField="field" HeaderText="field" SortExpression="field" />
                        <asp:BoundField DataField="aggregation" HeaderText="aggregation" SortExpression="aggregation" />
                        <asp:BoundField DataField="backlogs" HeaderText="backlogs" SortExpression="backlogs" />
                        <asp:BoundField DataField="yearofpassing" HeaderText="yearofpassing" SortExpression="yearofpassing" />
                        <asp:BoundField DataField="Sat_gmat_score_veroa" HeaderText="Sat_gmat_score_veroa"
                            SortExpression="Sat_gmat_score_veroa" />
                        <asp:BoundField DataField="Sat_gmat_score_quantitative" HeaderText="Sat_gmat_score_quantitative"
                            SortExpression="Sat_gmat_score_quantitative" />
                        <asp:BoundField DataField="Sat_gmat_score_AWA" HeaderText="Sat_gmat_score_AWA" SortExpression="Sat_gmat_score_AWA" />
                        <asp:BoundField DataField="ifnotalreadytakenmention_yes" HeaderText="ifnotalreadytakenmention_yes"
                            SortExpression="ifnotalreadytakenmention_yes" />
                        <asp:BoundField DataField="ifnotalreadytakenmention_no" HeaderText="ifnotalreadytakenmention_no"
                            SortExpression="ifnotalreadytakenmention_no" />
                        <asp:BoundField DataField="tofel_ielts_score_D" HeaderText="tofel_ielts_score_D"
                            SortExpression="tofel_ielts_score_D" />
                        <asp:BoundField DataField="tofel_ielts_score_R" HeaderText="tofel_ielts_score_R"
                            SortExpression="tofel_ielts_score_R" />
                        <asp:BoundField DataField="tofel_ielts_score_w" HeaderText="tofel_ielts_score_w"
                            SortExpression="tofel_ielts_score_w" />
                        <asp:BoundField DataField="tofel_ielts_score_s" HeaderText="tofel_ielts_score_s"
                            SortExpression="tofel_ielts_score_s" />
                        <asp:BoundField DataField="tofel_ielts_score_overall" HeaderText="tofel_ielts_score_overall"
                            SortExpression="tofel_ielts_score_overall" />
                        <asp:BoundField DataField="ifalreadytaken_Yes" HeaderText="ifalreadytaken_Yes" SortExpression="ifalreadytaken_Yes" />
                        <asp:BoundField DataField="ifalreadytaken_No" HeaderText="ifalreadytaken_No" SortExpression="ifalreadytaken_No" />
                        <asp:BoundField DataField="researchexp" HeaderText="researchexp" SortExpression="researchexp" />
                        <asp:BoundField DataField="spousedetail_dob" HeaderText="spousedetail_dob" SortExpression="spousedetail_dob" />
                        <asp:BoundField DataField="spousedetail_edu" HeaderText="spousedetail_edu" SortExpression="spousedetail_edu" />
                        <asp:BoundField DataField="spousedetail_exp" HeaderText="spousedetail_exp" SortExpression="spousedetail_exp" />
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                        <asp:BoundField DataField="AutoNo" HeaderText="AutoNo" SortExpression="AutoNo" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [userinfo] WHERE [Id] = @original_Id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([dob] = @original_dob) OR ([dob] IS NULL AND @original_dob IS NULL)) AND (([emailid] = @original_emailid) OR ([emailid] IS NULL AND @original_emailid IS NULL)) AND (([phno] = @original_phno) OR ([phno] IS NULL AND @original_phno IS NULL)) AND (([prog_in_1stprefer] = @original_prog_in_1stprefer) OR ([prog_in_1stprefer] IS NULL AND @original_prog_in_1stprefer IS NULL)) AND (([prog_in_2ndprefer] = @original_prog_in_2ndprefer) OR ([prog_in_2ndprefer] IS NULL AND @original_prog_in_2ndprefer IS NULL)) AND (([study] = @original_study) OR ([study] IS NULL AND @original_study IS NULL)) AND (([pr] = @original_pr) OR ([pr] IS NULL AND @original_pr IS NULL)) AND (([perment] = @original_perment) OR ([perment] IS NULL AND @original_perment IS NULL)) AND (([visitor] = @original_visitor) OR ([visitor] IS NULL AND @original_visitor IS NULL)) AND (([contry] = @original_contry) OR ([contry] IS NULL AND @original_contry IS NULL)) AND (([budget] = @original_budget) OR ([budget] IS NULL AND @original_budget IS NULL)) AND (([fathers_parentoccupation] = @original_fathers_parentoccupation) OR ([fathers_parentoccupation] IS NULL AND @original_fathers_parentoccupation IS NULL)) AND (([exp] = @original_exp) OR ([exp] IS NULL AND @original_exp IS NULL)) AND (([qulification] = @original_qulification) OR ([qulification] IS NULL AND @original_qulification IS NULL)) AND (([field] = @original_field) OR ([field] IS NULL AND @original_field IS NULL)) AND (([aggregation] = @original_aggregation) OR ([aggregation] IS NULL AND @original_aggregation IS NULL)) AND (([backlogs] = @original_backlogs) OR ([backlogs] IS NULL AND @original_backlogs IS NULL)) AND (([yearofpassing] = @original_yearofpassing) OR ([yearofpassing] IS NULL AND @original_yearofpassing IS NULL)) AND (([Sat_gmat_score_veroa] = @original_Sat_gmat_score_veroa) OR ([Sat_gmat_score_veroa] IS NULL AND @original_Sat_gmat_score_veroa IS NULL)) AND (([Sat_gmat_score_quantitative] = @original_Sat_gmat_score_quantitative) OR ([Sat_gmat_score_quantitative] IS NULL AND @original_Sat_gmat_score_quantitative IS NULL)) AND (([Sat_gmat_score_AWA] = @original_Sat_gmat_score_AWA) OR ([Sat_gmat_score_AWA] IS NULL AND @original_Sat_gmat_score_AWA IS NULL)) AND (([ifnotalreadytakenmention_yes] = @original_ifnotalreadytakenmention_yes) OR ([ifnotalreadytakenmention_yes] IS NULL AND @original_ifnotalreadytakenmention_yes IS NULL)) AND (([ifnotalreadytakenmention_no] = @original_ifnotalreadytakenmention_no) OR ([ifnotalreadytakenmention_no] IS NULL AND @original_ifnotalreadytakenmention_no IS NULL)) AND (([tofel_ielts_score_D] = @original_tofel_ielts_score_D) OR ([tofel_ielts_score_D] IS NULL AND @original_tofel_ielts_score_D IS NULL)) AND (([tofel_ielts_score_R] = @original_tofel_ielts_score_R) OR ([tofel_ielts_score_R] IS NULL AND @original_tofel_ielts_score_R IS NULL)) AND (([tofel_ielts_score_w] = @original_tofel_ielts_score_w) OR ([tofel_ielts_score_w] IS NULL AND @original_tofel_ielts_score_w IS NULL)) AND (([tofel_ielts_score_s] = @original_tofel_ielts_score_s) OR ([tofel_ielts_score_s] IS NULL AND @original_tofel_ielts_score_s IS NULL)) AND (([tofel_ielts_score_overall] = @original_tofel_ielts_score_overall) OR ([tofel_ielts_score_overall] IS NULL AND @original_tofel_ielts_score_overall IS NULL)) AND (([ifalreadytaken_Yes] = @original_ifalreadytaken_Yes) OR ([ifalreadytaken_Yes] IS NULL AND @original_ifalreadytaken_Yes IS NULL)) AND (([ifalreadytaken_No] = @original_ifalreadytaken_No) OR ([ifalreadytaken_No] IS NULL AND @original_ifalreadytaken_No IS NULL)) AND (([researchexp] = @original_researchexp) OR ([researchexp] IS NULL AND @original_researchexp IS NULL)) AND (([spousedetail_dob] = @original_spousedetail_dob) OR ([spousedetail_dob] IS NULL AND @original_spousedetail_dob IS NULL)) AND (([spousedetail_edu] = @original_spousedetail_edu) OR ([spousedetail_edu] IS NULL AND @original_spousedetail_edu IS NULL)) AND (([spousedetail_exp] = @original_spousedetail_exp) OR ([spousedetail_exp] IS NULL AND @original_spousedetail_exp IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([AutoNo] = @original_AutoNo) OR ([AutoNo] IS NULL AND @original_AutoNo IS NULL))"
                    InsertCommand="INSERT INTO [userinfo] ([name], [dob], [emailid], [phno], [prog_in_1stprefer], [prog_in_2ndprefer], [study], [pr], [perment], [visitor], [contry], [budget], [fathers_parentoccupation], [exp], [qulification], [field], [aggregation], [backlogs], [yearofpassing], [Sat_gmat_score_veroa], [Sat_gmat_score_quantitative], [Sat_gmat_score_AWA], [ifnotalreadytakenmention_yes], [ifnotalreadytakenmention_no], [tofel_ielts_score_D], [tofel_ielts_score_R], [tofel_ielts_score_w], [tofel_ielts_score_s], [tofel_ielts_score_overall], [ifalreadytaken_Yes], [ifalreadytaken_No], [researchexp], [spousedetail_dob], [spousedetail_edu], [spousedetail_exp], [date], [AutoNo]) VALUES (@name, @dob, @emailid, @phno, @prog_in_1stprefer, @prog_in_2ndprefer, @study, @pr, @perment, @visitor, @contry, @budget, @fathers_parentoccupation, @exp, @qulification, @field, @aggregation, @backlogs, @yearofpassing, @Sat_gmat_score_veroa, @Sat_gmat_score_quantitative, @Sat_gmat_score_AWA, @ifnotalreadytakenmention_yes, @ifnotalreadytakenmention_no, @tofel_ielts_score_D, @tofel_ielts_score_R, @tofel_ielts_score_w, @tofel_ielts_score_s, @tofel_ielts_score_overall, @ifalreadytaken_Yes, @ifalreadytaken_No, @researchexp, @spousedetail_dob, @spousedetail_edu, @spousedetail_exp, @date, @AutoNo)"
                    OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [userinfo] WHERE ([Id] = @Id)"
                    UpdateCommand="UPDATE [userinfo] SET [name] = @name, [dob] = @dob, [emailid] = @emailid, [phno] = @phno, [prog_in_1stprefer] = @prog_in_1stprefer, [prog_in_2ndprefer] = @prog_in_2ndprefer, [study] = @study, [pr] = @pr, [perment] = @perment, [visitor] = @visitor, [contry] = @contry, [budget] = @budget, [fathers_parentoccupation] = @fathers_parentoccupation, [exp] = @exp, [qulification] = @qulification, [field] = @field, [aggregation] = @aggregation, [backlogs] = @backlogs, [yearofpassing] = @yearofpassing, [Sat_gmat_score_veroa] = @Sat_gmat_score_veroa, [Sat_gmat_score_quantitative] = @Sat_gmat_score_quantitative, [Sat_gmat_score_AWA] = @Sat_gmat_score_AWA, [ifnotalreadytakenmention_yes] = @ifnotalreadytakenmention_yes, [ifnotalreadytakenmention_no] = @ifnotalreadytakenmention_no, [tofel_ielts_score_D] = @tofel_ielts_score_D, [tofel_ielts_score_R] = @tofel_ielts_score_R, [tofel_ielts_score_w] = @tofel_ielts_score_w, [tofel_ielts_score_s] = @tofel_ielts_score_s, [tofel_ielts_score_overall] = @tofel_ielts_score_overall, [ifalreadytaken_Yes] = @ifalreadytaken_Yes, [ifalreadytaken_No] = @ifalreadytaken_No, [researchexp] = @researchexp, [spousedetail_dob] = @spousedetail_dob, [spousedetail_edu] = @spousedetail_edu, [spousedetail_exp] = @spousedetail_exp, [date] = @date, [AutoNo] = @AutoNo WHERE [Id] = @original_Id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([dob] = @original_dob) OR ([dob] IS NULL AND @original_dob IS NULL)) AND (([emailid] = @original_emailid) OR ([emailid] IS NULL AND @original_emailid IS NULL)) AND (([phno] = @original_phno) OR ([phno] IS NULL AND @original_phno IS NULL)) AND (([prog_in_1stprefer] = @original_prog_in_1stprefer) OR ([prog_in_1stprefer] IS NULL AND @original_prog_in_1stprefer IS NULL)) AND (([prog_in_2ndprefer] = @original_prog_in_2ndprefer) OR ([prog_in_2ndprefer] IS NULL AND @original_prog_in_2ndprefer IS NULL)) AND (([study] = @original_study) OR ([study] IS NULL AND @original_study IS NULL)) AND (([pr] = @original_pr) OR ([pr] IS NULL AND @original_pr IS NULL)) AND (([perment] = @original_perment) OR ([perment] IS NULL AND @original_perment IS NULL)) AND (([visitor] = @original_visitor) OR ([visitor] IS NULL AND @original_visitor IS NULL)) AND (([contry] = @original_contry) OR ([contry] IS NULL AND @original_contry IS NULL)) AND (([budget] = @original_budget) OR ([budget] IS NULL AND @original_budget IS NULL)) AND (([fathers_parentoccupation] = @original_fathers_parentoccupation) OR ([fathers_parentoccupation] IS NULL AND @original_fathers_parentoccupation IS NULL)) AND (([exp] = @original_exp) OR ([exp] IS NULL AND @original_exp IS NULL)) AND (([qulification] = @original_qulification) OR ([qulification] IS NULL AND @original_qulification IS NULL)) AND (([field] = @original_field) OR ([field] IS NULL AND @original_field IS NULL)) AND (([aggregation] = @original_aggregation) OR ([aggregation] IS NULL AND @original_aggregation IS NULL)) AND (([backlogs] = @original_backlogs) OR ([backlogs] IS NULL AND @original_backlogs IS NULL)) AND (([yearofpassing] = @original_yearofpassing) OR ([yearofpassing] IS NULL AND @original_yearofpassing IS NULL)) AND (([Sat_gmat_score_veroa] = @original_Sat_gmat_score_veroa) OR ([Sat_gmat_score_veroa] IS NULL AND @original_Sat_gmat_score_veroa IS NULL)) AND (([Sat_gmat_score_quantitative] = @original_Sat_gmat_score_quantitative) OR ([Sat_gmat_score_quantitative] IS NULL AND @original_Sat_gmat_score_quantitative IS NULL)) AND (([Sat_gmat_score_AWA] = @original_Sat_gmat_score_AWA) OR ([Sat_gmat_score_AWA] IS NULL AND @original_Sat_gmat_score_AWA IS NULL)) AND (([ifnotalreadytakenmention_yes] = @original_ifnotalreadytakenmention_yes) OR ([ifnotalreadytakenmention_yes] IS NULL AND @original_ifnotalreadytakenmention_yes IS NULL)) AND (([ifnotalreadytakenmention_no] = @original_ifnotalreadytakenmention_no) OR ([ifnotalreadytakenmention_no] IS NULL AND @original_ifnotalreadytakenmention_no IS NULL)) AND (([tofel_ielts_score_D] = @original_tofel_ielts_score_D) OR ([tofel_ielts_score_D] IS NULL AND @original_tofel_ielts_score_D IS NULL)) AND (([tofel_ielts_score_R] = @original_tofel_ielts_score_R) OR ([tofel_ielts_score_R] IS NULL AND @original_tofel_ielts_score_R IS NULL)) AND (([tofel_ielts_score_w] = @original_tofel_ielts_score_w) OR ([tofel_ielts_score_w] IS NULL AND @original_tofel_ielts_score_w IS NULL)) AND (([tofel_ielts_score_s] = @original_tofel_ielts_score_s) OR ([tofel_ielts_score_s] IS NULL AND @original_tofel_ielts_score_s IS NULL)) AND (([tofel_ielts_score_overall] = @original_tofel_ielts_score_overall) OR ([tofel_ielts_score_overall] IS NULL AND @original_tofel_ielts_score_overall IS NULL)) AND (([ifalreadytaken_Yes] = @original_ifalreadytaken_Yes) OR ([ifalreadytaken_Yes] IS NULL AND @original_ifalreadytaken_Yes IS NULL)) AND (([ifalreadytaken_No] = @original_ifalreadytaken_No) OR ([ifalreadytaken_No] IS NULL AND @original_ifalreadytaken_No IS NULL)) AND (([researchexp] = @original_researchexp) OR ([researchexp] IS NULL AND @original_researchexp IS NULL)) AND (([spousedetail_dob] = @original_spousedetail_dob) OR ([spousedetail_dob] IS NULL AND @original_spousedetail_dob IS NULL)) AND (([spousedetail_edu] = @original_spousedetail_edu) OR ([spousedetail_edu] IS NULL AND @original_spousedetail_edu IS NULL)) AND (([spousedetail_exp] = @original_spousedetail_exp) OR ([spousedetail_exp] IS NULL AND @original_spousedetail_exp IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([AutoNo] = @original_AutoNo) OR ([AutoNo] IS NULL AND @original_AutoNo IS NULL))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Id" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="original_Id" Type="Int32" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_dob" Type="String" />
                        <asp:Parameter Name="original_emailid" Type="String" />
                        <asp:Parameter Name="original_phno" Type="String" />
                        <asp:Parameter Name="original_prog_in_1stprefer" Type="String" />
                        <asp:Parameter Name="original_prog_in_2ndprefer" Type="String" />
                        <asp:Parameter Name="original_study" Type="String" />
                        <asp:Parameter Name="original_pr" Type="String" />
                        <asp:Parameter Name="original_perment" Type="String" />
                        <asp:Parameter Name="original_visitor" Type="String" />
                        <asp:Parameter Name="original_contry" Type="String" />
                        <asp:Parameter Name="original_budget" Type="String" />
                        <asp:Parameter Name="original_fathers_parentoccupation" Type="String" />
                        <asp:Parameter Name="original_exp" Type="String" />
                        <asp:Parameter Name="original_qulification" Type="String" />
                        <asp:Parameter Name="original_field" Type="String" />
                        <asp:Parameter Name="original_aggregation" Type="String" />
                        <asp:Parameter Name="original_backlogs" Type="String" />
                        <asp:Parameter Name="original_yearofpassing" Type="String" />
                        <asp:Parameter Name="original_Sat_gmat_score_veroa" Type="String" />
                        <asp:Parameter Name="original_Sat_gmat_score_quantitative" Type="String" />
                        <asp:Parameter Name="original_Sat_gmat_score_AWA" Type="String" />
                        <asp:Parameter Name="original_ifnotalreadytakenmention_yes" Type="String" />
                        <asp:Parameter Name="original_ifnotalreadytakenmention_no" Type="String" />
                        <asp:Parameter Name="original_tofel_ielts_score_D" Type="String" />
                        <asp:Parameter Name="original_tofel_ielts_score_R" Type="String" />
                        <asp:Parameter Name="original_tofel_ielts_score_w" Type="String" />
                        <asp:Parameter Name="original_tofel_ielts_score_s" Type="String" />
                        <asp:Parameter Name="original_tofel_ielts_score_overall" Type="String" />
                        <asp:Parameter Name="original_ifalreadytaken_Yes" Type="String" />
                        <asp:Parameter Name="original_ifalreadytaken_No" Type="String" />
                        <asp:Parameter Name="original_researchexp" Type="String" />
                        <asp:Parameter Name="original_spousedetail_dob" Type="String" />
                        <asp:Parameter Name="original_spousedetail_edu" Type="String" />
                        <asp:Parameter Name="original_spousedetail_exp" Type="String" />
                        <asp:Parameter Name="original_date" Type="String" />
                        <asp:Parameter Name="original_AutoNo" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="dob" Type="String" />
                        <asp:Parameter Name="emailid" Type="String" />
                        <asp:Parameter Name="phno" Type="String" />
                        <asp:Parameter Name="prog_in_1stprefer" Type="String" />
                        <asp:Parameter Name="prog_in_2ndprefer" Type="String" />
                        <asp:Parameter Name="study" Type="String" />
                        <asp:Parameter Name="pr" Type="String" />
                        <asp:Parameter Name="perment" Type="String" />
                        <asp:Parameter Name="visitor" Type="String" />
                        <asp:Parameter Name="contry" Type="String" />
                        <asp:Parameter Name="budget" Type="String" />
                        <asp:Parameter Name="fathers_parentoccupation" Type="String" />
                        <asp:Parameter Name="exp" Type="String" />
                        <asp:Parameter Name="qulification" Type="String" />
                        <asp:Parameter Name="field" Type="String" />
                        <asp:Parameter Name="aggregation" Type="String" />
                        <asp:Parameter Name="backlogs" Type="String" />
                        <asp:Parameter Name="yearofpassing" Type="String" />
                        <asp:Parameter Name="Sat_gmat_score_veroa" Type="String" />
                        <asp:Parameter Name="Sat_gmat_score_quantitative" Type="String" />
                        <asp:Parameter Name="Sat_gmat_score_AWA" Type="String" />
                        <asp:Parameter Name="ifnotalreadytakenmention_yes" Type="String" />
                        <asp:Parameter Name="ifnotalreadytakenmention_no" Type="String" />
                        <asp:Parameter Name="tofel_ielts_score_D" Type="String" />
                        <asp:Parameter Name="tofel_ielts_score_R" Type="String" />
                        <asp:Parameter Name="tofel_ielts_score_w" Type="String" />
                        <asp:Parameter Name="tofel_ielts_score_s" Type="String" />
                        <asp:Parameter Name="tofel_ielts_score_overall" Type="String" />
                        <asp:Parameter Name="ifalreadytaken_Yes" Type="String" />
                        <asp:Parameter Name="ifalreadytaken_No" Type="String" />
                        <asp:Parameter Name="researchexp" Type="String" />
                        <asp:Parameter Name="spousedetail_dob" Type="String" />
                        <asp:Parameter Name="spousedetail_edu" Type="String" />
                        <asp:Parameter Name="spousedetail_exp" Type="String" />
                        <asp:Parameter Name="date" Type="String" />
                        <asp:Parameter Name="AutoNo" Type="String" />
                        <asp:Parameter Name="original_Id" Type="Int32" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_dob" Type="String" />
                        <asp:Parameter Name="original_emailid" Type="String" />
                        <asp:Parameter Name="original_phno" Type="String" />
                        <asp:Parameter Name="original_prog_in_1stprefer" Type="String" />
                        <asp:Parameter Name="original_prog_in_2ndprefer" Type="String" />
                        <asp:Parameter Name="original_study" Type="String" />
                        <asp:Parameter Name="original_pr" Type="String" />
                        <asp:Parameter Name="original_perment" Type="String" />
                        <asp:Parameter Name="original_visitor" Type="String" />
                        <asp:Parameter Name="original_contry" Type="String" />
                        <asp:Parameter Name="original_budget" Type="String" />
                        <asp:Parameter Name="original_fathers_parentoccupation" Type="String" />
                        <asp:Parameter Name="original_exp" Type="String" />
                        <asp:Parameter Name="original_qulification" Type="String" />
                        <asp:Parameter Name="original_field" Type="String" />
                        <asp:Parameter Name="original_aggregation" Type="String" />
                        <asp:Parameter Name="original_backlogs" Type="String" />
                        <asp:Parameter Name="original_yearofpassing" Type="String" />
                        <asp:Parameter Name="original_Sat_gmat_score_veroa" Type="String" />
                        <asp:Parameter Name="original_Sat_gmat_score_quantitative" Type="String" />
                        <asp:Parameter Name="original_Sat_gmat_score_AWA" Type="String" />
                        <asp:Parameter Name="original_ifnotalreadytakenmention_yes" Type="String" />
                        <asp:Parameter Name="original_ifnotalreadytakenmention_no" Type="String" />
                        <asp:Parameter Name="original_tofel_ielts_score_D" Type="String" />
                        <asp:Parameter Name="original_tofel_ielts_score_R" Type="String" />
                        <asp:Parameter Name="original_tofel_ielts_score_w" Type="String" />
                        <asp:Parameter Name="original_tofel_ielts_score_s" Type="String" />
                        <asp:Parameter Name="original_tofel_ielts_score_overall" Type="String" />
                        <asp:Parameter Name="original_ifalreadytaken_Yes" Type="String" />
                        <asp:Parameter Name="original_ifalreadytaken_No" Type="String" />
                        <asp:Parameter Name="original_researchexp" Type="String" />
                        <asp:Parameter Name="original_spousedetail_dob" Type="String" />
                        <asp:Parameter Name="original_spousedetail_edu" Type="String" />
                        <asp:Parameter Name="original_spousedetail_exp" Type="String" />
                        <asp:Parameter Name="original_date" Type="String" />
                        <asp:Parameter Name="original_AutoNo" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="dob" Type="String" />
                        <asp:Parameter Name="emailid" Type="String" />
                        <asp:Parameter Name="phno" Type="String" />
                        <asp:Parameter Name="prog_in_1stprefer" Type="String" />
                        <asp:Parameter Name="prog_in_2ndprefer" Type="String" />
                        <asp:Parameter Name="study" Type="String" />
                        <asp:Parameter Name="pr" Type="String" />
                        <asp:Parameter Name="perment" Type="String" />
                        <asp:Parameter Name="visitor" Type="String" />
                        <asp:Parameter Name="contry" Type="String" />
                        <asp:Parameter Name="budget" Type="String" />
                        <asp:Parameter Name="fathers_parentoccupation" Type="String" />
                        <asp:Parameter Name="exp" Type="String" />
                        <asp:Parameter Name="qulification" Type="String" />
                        <asp:Parameter Name="field" Type="String" />
                        <asp:Parameter Name="aggregation" Type="String" />
                        <asp:Parameter Name="backlogs" Type="String" />
                        <asp:Parameter Name="yearofpassing" Type="String" />
                        <asp:Parameter Name="Sat_gmat_score_veroa" Type="String" />
                        <asp:Parameter Name="Sat_gmat_score_quantitative" Type="String" />
                        <asp:Parameter Name="Sat_gmat_score_AWA" Type="String" />
                        <asp:Parameter Name="ifnotalreadytakenmention_yes" Type="String" />
                        <asp:Parameter Name="ifnotalreadytakenmention_no" Type="String" />
                        <asp:Parameter Name="tofel_ielts_score_D" Type="String" />
                        <asp:Parameter Name="tofel_ielts_score_R" Type="String" />
                        <asp:Parameter Name="tofel_ielts_score_w" Type="String" />
                        <asp:Parameter Name="tofel_ielts_score_s" Type="String" />
                        <asp:Parameter Name="tofel_ielts_score_overall" Type="String" />
                        <asp:Parameter Name="ifalreadytaken_Yes" Type="String" />
                        <asp:Parameter Name="ifalreadytaken_No" Type="String" />
                        <asp:Parameter Name="researchexp" Type="String" />
                        <asp:Parameter Name="spousedetail_dob" Type="String" />
                        <asp:Parameter Name="spousedetail_edu" Type="String" />
                        <asp:Parameter Name="spousedetail_exp" Type="String" />
                        <asp:Parameter Name="date" Type="String" />
                        <asp:Parameter Name="AutoNo" Type="String" />
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

