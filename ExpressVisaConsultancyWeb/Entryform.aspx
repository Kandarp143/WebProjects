<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Entryform.aspx.cs" Inherits="Entryform" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server">
                    <table style="width: 721px">
                        <tr>
                            <td align="center" bgcolor="#ff9900" colspan="2" style="height: 21px">
                                <asp:Label ID="Label33" runat="server" Font-Size="X-Large" ForeColor="Navy" Text="Xpress Consultants"></asp:Label></td>
                        </tr>
                        <tr style="font-size: 12pt; color: #000000">
                            <td style="width: 70px">
                            </td>
                            <td style="width: 114px">
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; color: #000000">
                            <td style="width: 70px">
                                <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="White" Text="Name of the Student/ Candidate"
                                    Width="217px"></asp:Label></td>
                            <td style="width: 114px">
                                <asp:TextBox ID="txtuname" runat="server" OnTextChanged="txtuname_TextChanged" placeholder="Enter the User Name"
                                    Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuname"
                                    ErrorMessage="Plz enter the  Name" Width="162px"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 70px">
                                <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="White" Width="109px">Date of Birth</asp:Label></td>
                            <td style="width: 114px">
                                <asp:TextBox ID="txtdob" runat="server" placeholder="Enter the D.O.B" Width="200px"></asp:TextBox>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" ForeColor="Yellow"
                                    OnClick="LinkButton1_Click">Pick Date</asp:LinkButton>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtdob"
                                    ErrorMessage="Enter Date Of Birth"></asp:RequiredFieldValidator>
                                <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
                                    BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
                                    ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged"
                                    ShowGridLines="True" Visible="False" Width="220px">
                                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                    <SelectorStyle BackColor="#FFCC66" />
                                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                    <OtherMonthDayStyle ForeColor="#CC9966" />
                                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                </asp:Calendar>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 70px">
                                <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="White" Text="Email Id"></asp:Label></td>
                            <td style="width: 114px">
                                <asp:TextBox ID="txtemailid" runat="server" placeholder="Enter the Email Id" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemailid"
                                    ErrorMessage="Enter Email Id"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemailid"
                                    ErrorMessage="Enter valid id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <asp:Label ID="Label6" runat="server" ForeColor="White" Text="ex.  mr.@example.com"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 70px">
                                <asp:Label ID="Label4" runat="server" Font-Size="Medium" ForeColor="White" Text="Ph. NO. (R)"
                                    Width="93px"></asp:Label></td>
                            <td style="width: 114px">
                                <asp:TextBox ID="txtphono" runat="server" placeholder="Enter the Phono" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtphono"
                                    ErrorMessage="Enter the phono"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 70px" valign="top">
                                <asp:Label ID="Label5" runat="server" Font-Size="Medium" ForeColor="White" Text="Program Interested In "
                                    Width="149px"></asp:Label></td>
                            <td style="width: 114px">
                                <asp:Label ID="Label35" runat="server" ForeColor="White" Text="1St Preference"></asp:Label>
                                <br />
                                <asp:TextBox ID="txt1stpreference" runat="server" placeholder="Enter the 1St preference"
                                    Width="200px"></asp:TextBox><br />
                                <asp:Label ID="Label36" runat="server" ForeColor="White" Text="2nd Preference"></asp:Label><br />
                                <asp:TextBox ID="txt2ndpreference" runat="server" placeholder="Enter the 2nd Preference"
                                    Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt1stpreference"
                                    ErrorMessage="Enter the Preference"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 70px">
                            </td>
                            <td style="width: 114px">
                                <asp:CheckBox ID="chkstudy" runat="server" ForeColor="White" OnCheckedChanged="chkstudy_CheckedChanged"
                                    Text="Study" ValidationGroup="prg" />
                                <asp:CheckBox ID="chkpr" runat="server" ForeColor="White" Text="PR" ValidationGroup="prg" />
                                <asp:CheckBox ID="chkpermit" runat="server" ForeColor="White" Text="Permit" ValidationGroup="prg" />
                                <asp:CheckBox ID="chkvisitor" runat="server" ForeColor="White" Text="Visitor" ValidationGroup="prg" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 70px; height: 21px">
                                <asp:Label ID="Label7" runat="server" Font-Size="Medium" ForeColor="White" Text="Location Preference / Contry Of Any"
                                    Width="247px"></asp:Label></td>
                            <td style="width: 114px; height: 21px">
                                <asp:DropDownList ID="cbocontry" runat="server" Width="200px">
                                    <asp:ListItem>Select Any..</asp:ListItem>
                                    <asp:ListItem>Afghanistan</asp:ListItem>
                                    <asp:ListItem>Aland Islands</asp:ListItem>
                                    <asp:ListItem>Albania</asp:ListItem>
                                    <asp:ListItem>Algeria</asp:ListItem>
                                    <asp:ListItem>American Samoa</asp:ListItem>
                                    <asp:ListItem>Andorra</asp:ListItem>
                                    <asp:ListItem>Angola</asp:ListItem>
                                    <asp:ListItem>Australia</asp:ListItem>
                                    <asp:ListItem>Bahamas</asp:ListItem>
                                    <asp:ListItem>Barbados</asp:ListItem>
                                    <asp:ListItem>Brazil</asp:ListItem>
                                    <asp:ListItem>Canada</asp:ListItem>
                                    <asp:ListItem>China</asp:ListItem>
                                    <asp:ListItem>Cuba</asp:ListItem>
                                    <asp:ListItem>Egypt</asp:ListItem>
                                    <asp:ListItem>France</asp:ListItem>
                                    <asp:ListItem>Germany</asp:ListItem>
                                    <asp:ListItem>India</asp:ListItem>
                                    <asp:ListItem>Indonesia</asp:ListItem>
                                    <asp:ListItem>london</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="cbocontry"
                                    ErrorMessage="Select Contry"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 70px; height: 26px">
                                <asp:Label ID="Label8" runat="server" Font-Size="Medium" ForeColor="White" Text="Budget for fees and living expenses per year"
                                    Width="265px"></asp:Label></td>
                            <td style="width: 114px; height: 26px">
                                <asp:TextBox ID="txtbudget" runat="server" placeholder="Enter the Budget" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtbudget"
                                    ErrorMessage="Enter Budget"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 70px">
                                <asp:Label ID="Label9" runat="server" Font-Size="Medium" ForeColor="White" Text="Father's / Parent Occupation"
                                    Width="254px"></asp:Label></td>
                            <td style="width: 114px">
                                <asp:TextBox ID="txtfatheroccupation" runat="server" placeholder="Enter the father occupation"
                                    Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtfatheroccupation"
                                    ErrorMessage="Enter Father occupation"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 70px">
                                <asp:Label ID="Label10" runat="server" Font-Size="Medium" ForeColor="White" Text="Experience"></asp:Label></td>
                            <td style="width: 114px">
                                <asp:TextBox ID="txtexp" runat="server" placeholder="Enter the experience" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtexp"
                                    ErrorMessage="enter experience"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 70px">
                                <asp:Label ID="Label11" runat="server" Font-Size="Medium" ForeColor="White" Text="Qulification"></asp:Label></td>
                            <td style="width: 114px">
                                <asp:DropDownList ID="cboqulification" runat="server" Width="200px">
                                    <asp:ListItem>Select Qulification..</asp:ListItem>
                                    <asp:ListItem>Master</asp:ListItem>
                                    <asp:ListItem>Diploma /  Bechelors</asp:ListItem>
                                    <asp:ListItem>12th/11</asp:ListItem>
                                    <asp:ListItem>10th</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="cboqulification"
                                    ErrorMessage="Select the Qulification"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 70px">
                                <asp:Label ID="Label29" runat="server" Font-Size="Medium" ForeColor="White" Text="Field"></asp:Label></td>
                            <td style="width: 114px">
                                <asp:TextBox ID="txtfield" runat="server" placeholder="Enter the Field" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtfield"
                                    ErrorMessage="Enter Field"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 70px">
                                <asp:Label ID="Label30" runat="server" Font-Size="Medium" ForeColor="White" Text="Aggregate/Percentage"></asp:Label></td>
                            <td style="width: 114px">
                                <asp:TextBox ID="txtaggregate" runat="server" placeholder="Enter the aggregate" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtaggregate"
                                    ErrorMessage="Enter the Aggregate"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 70px">
                                <asp:Label ID="Label31" runat="server" Font-Size="Medium" ForeColor="White" Text="Backlogs(if any)"
                                    Width="114px"></asp:Label></td>
                            <td style="width: 114px">
                                <asp:TextBox ID="txtbacklogs" runat="server" placeholder="Enter backlogs" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtbacklogs"
                                    ErrorMessage="Enter the backlogs"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 70px">
                                <asp:Label ID="Label32" runat="server" Font-Size="Medium" ForeColor="White" Text="Year of Passing"
                                    Width="117px"></asp:Label></td>
                            <td style="width: 114px">
                                <asp:TextBox ID="txtyearofpassing" runat="server" placeholder="Enter the Year of Passing"
                                    Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtyearofpassing"
                                    ErrorMessage="Enter the year of passing"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 70px">
                                <asp:Label ID="Label12" runat="server" Font-Size="Medium" ForeColor="White" Text="SAT /GMAT/GRL Score (if taken)"
                                    Width="224px"></asp:Label></td>
                            <td style="width: 114px">
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 70px">
                                <asp:Label ID="Label13" runat="server" Font-Size="Medium" ForeColor="White" Text="Veroal"></asp:Label></td>
                            <td style="width: 114px">
                                <asp:TextBox ID="txtveroal" runat="server" placeholder="Enter the Veroal " Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtveroal"
                                    ErrorMessage="Enter the veroal"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 70px">
                                <asp:Label ID="Label14" runat="server" Font-Size="Medium" ForeColor="White" Text="Quantitaiye"></asp:Label></td>
                            <td style="width: 114px">
                                <asp:TextBox ID="txtquantitaiye" runat="server" placeholder="Enter the quantitaiye"
                                    Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtquantitaiye"
                                    ErrorMessage="Enter the Quantitaiye"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 70px">
                                <asp:Label ID="Label15" runat="server" Font-Size="Medium" ForeColor="White" Text="AWA"></asp:Label></td>
                            <td style="width: 114px">
                                <asp:TextBox ID="txtawa" runat="server" placeholder="Enter the awa" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtawa"
                                    ErrorMessage="Enter the AWA"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 70px">
                                <asp:Label ID="Label16" runat="server" Font-Size="Medium" ForeColor="White" Text="If not already taken, mention Winetoer Student intends to take the test or not"
                                    Width="321px"></asp:Label></td>
                            <td style="width: 114px">
                                <asp:CheckBox ID="chkyes" runat="server" ForeColor="White" Text="YES" ValidationGroup="nottaken" />&nbsp;<asp:CheckBox
                                    ID="chkno" runat="server" ForeColor="White" Text="NO" ValidationGroup="nottaken" />&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 70px">
                                <asp:Label ID="Label17" runat="server" Font-Size="Medium" ForeColor="White" Text="TOFEL/IELTS Scores (if taken)"
                                    Width="284px"></asp:Label></td>
                            <td style="width: 114px">
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 70px">
                                <asp:Label ID="Label22" runat="server" Font-Size="Medium" ForeColor="White" Text="D"></asp:Label></td>
                            <td style="width: 114px">
                                <asp:TextBox ID="txtd" runat="server" placeholder="Enter the D"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtd"
                                    ErrorMessage="Enter the D"></asp:RequiredFieldValidator><br />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 70px">
                                <asp:Label ID="Label23" runat="server" Font-Size="Medium" ForeColor="White" Text="R"></asp:Label></td>
                            <td style="width: 114px">
                                <asp:TextBox ID="txtr" runat="server" placeholder="Enter the R"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtr"
                                    ErrorMessage="Enter the R"></asp:RequiredFieldValidator><br />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 70px">
                                <asp:Label ID="Label24" runat="server" Font-Size="Medium" ForeColor="White" Text="W"></asp:Label></td>
                            <td style="width: 114px">
                                <asp:TextBox ID="txtw" runat="server" placeholder="Enter the W"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="txtw"
                                    ErrorMessage="Enter the W"></asp:RequiredFieldValidator><br />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 70px">
                                <asp:Label ID="Label25" runat="server" Font-Size="Medium" ForeColor="White" Text="S"></asp:Label></td>
                            <td style="width: 114px">
                                <asp:TextBox ID="txts" runat="server" placeholder="Enter the S"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="txts"
                                    ErrorMessage="Enter the S"></asp:RequiredFieldValidator><br />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 70px">
                                <asp:Label ID="Label26" runat="server" Font-Size="Medium" ForeColor="White" Text="Overall"></asp:Label></td>
                            <td style="width: 114px">
                                <asp:TextBox ID="txtoverall" runat="server" placeholder="Enter the Overall"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="txtoverall"
                                    ErrorMessage="Enter the Overall"></asp:RequiredFieldValidator><br />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 70px">
                                <asp:Label ID="Label18" runat="server" Font-Size="Medium" ForeColor="White" Text="If not already taken, mention whether the student intends to take the test or not"
                                    Width="310px"></asp:Label></td>
                            <td style="width: 114px">
                                <asp:CheckBox ID="chktaken_yes" runat="server" ForeColor="White" Text="YES" ValidationGroup="alreadytaken" />&nbsp;<asp:CheckBox
                                    ID="chktaken_no" runat="server" ForeColor="White" Text="NO" ValidationGroup="alreadytaken" /></td>
                        </tr>
                        <tr>
                            <td style="width: 70px; height: 40px">
                                <asp:Label ID="Label19" runat="server" Font-Size="Medium" ForeColor="White" Text="Reasearch Experience, Paper oresentation (if any)"
                                    Width="197px"></asp:Label></td>
                            <td style="width: 114px; height: 40px">
                                <asp:TextBox ID="txtresearchexp" runat="server" placeholder="Enter the research experieance"
                                    Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="txtresearchexp"
                                    ErrorMessage="Enter the Reasearch exp."></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 70px" valign="top">
                                <asp:Label ID="Label20" runat="server" Font-Size="Medium" ForeColor="White" Text="Spouse Details Age, Education,Experience (if any)"
                                    Width="203px"></asp:Label></td>
                            <td style="width: 114px">
                                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
                                &nbsp;
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 70px; height: 16px">
                                <asp:Label ID="Label27" runat="server" Font-Size="Medium" ForeColor="White" Text="D.O.B"></asp:Label></td>
                            <td style="width: 114px; height: 16px">
                                <asp:TextBox ID="txtspousedob" runat="server" placeholder="Enter the Spouse Dob"
                                    Width="200px"></asp:TextBox>
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" ForeColor="Yellow"
                                    OnClick="LinkButton2_Click">Pick Date</asp:LinkButton>
                                <br />
                                <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
                                    BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
                                    ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar2_SelectionChanged"
                                    ShowGridLines="True" Visible="False" Width="220px">
                                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                    <SelectorStyle BackColor="#FFCC66" />
                                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                    <OtherMonthDayStyle ForeColor="#CC9966" />
                                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                </asp:Calendar>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="txtspousedob"
                                    ErrorMessage="Enter the Date of Birth"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 70px; height: 16px">
                                <asp:Label ID="Label28" runat="server" Font-Size="Medium" ForeColor="White" Text="Education"></asp:Label></td>
                            <td style="width: 114px; height: 16px">
                                <asp:TextBox ID="txtspouseedu" runat="server" placeholder="Enter the Spouse Educaiton"
                                    Width="200px"></asp:TextBox><br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="txtspouseedu"
                                    ErrorMessage="Enter the Education" Width="127px"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 70px; height: 16px">
                                <asp:Label ID="Label34" runat="server" Font-Size="Medium" ForeColor="White" Text="Experience"></asp:Label></td>
                            <td style="width: 114px; height: 16px">
                                <asp:TextBox ID="txtsexp" runat="server" placeholder="Enter the Experience" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="txtsexp"
                                    ErrorMessage="Entet the experience" Width="144px"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 70px; height: 16px">
                                <asp:Label ID="Label21" runat="server" Font-Size="Medium" ForeColor="White" Text="Date"
                                    Width="200px"></asp:Label></td>
                            <td style="width: 114px; height: 16px">
                                <asp:TextBox ID="txtdate" runat="server" placeholder="Enter the Date" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="txtdate"
                                    ErrorMessage="Enter the Date"></asp:RequiredFieldValidator><br />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 70px; height: 16px" valign="top">
                                <asp:Label ID="Label37" runat="server" Font-Size="Medium" ForeColor="White" Text="Enter the Image text"
                                    Width="167px"></asp:Label></td>
                            <td style="width: 114px; height: 16px">
                                <asp:TextBox ID="txtVerify" runat="server" OnTextChanged="txtVerify_TextChanged"
                                    placeholder=" Enter Valid value" Width="200px"></asp:TextBox><br />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 70px; height: 16px">
                            </td>
                            <td style="width: 114px; height: 16px">
                                <asp:Image ID="imCaptcha" runat="server" BackColor="White" ForeColor="Black" Height="76px"
                                    ImageUrl="~/Captcha.ashx" Width="247px" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="txtVerify"
                                    ErrorMessage="Enter the Image text into text box" Width="147px"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 70px; height: 16px">
                            </td>
                            <td style="width: 114px; height: 16px">
                                <asp:Button ID="btnsubmit" runat="server" Font-Size="X-Large" OnClick="Button1_Click"
                                    Text="Submit" />&nbsp;<asp:Button ID="btncancel" runat="server" CausesValidation="False"
                                        Font-Size="X-Large" OnClick="btncancel_Click" Text="Cancel" /></td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Panel ID="Panel2" runat="server" Visible="False">
                    <br />
                    <table style="width: 722px">
                        <tr>
                            <td colspan="2">
                                <br />
                                <asp:Label ID="lblmessage" runat="server" Font-Size="X-Large" ForeColor="Yellow"></asp:Label></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lblcmi" runat="server" Font-Size="X-Large" ForeColor="White" Text="Your Confirmation ID is : -"
                                    Visible="False"></asp:Label>
                                &nbsp;&nbsp;
                                <asp:Label ID="lblid" runat="server" Font-Size="X-Large" ForeColor="White" Visible="False"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                            </td>
                            <td style="width: 100px">
                                &nbsp; \&nbsp;
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
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

