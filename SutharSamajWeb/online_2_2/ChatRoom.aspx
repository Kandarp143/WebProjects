<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChatRoom.aspx.cs" Inherits="ChatRoom" %>

<%@ Register assembly="Anthem" namespace="Anthem" tagprefix="anthem" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Untitled Page</title>
    <style type="text/css">

        .style1
        {
            width: 62%;
        }
        .style2
        {
        }
        .style4
        {
            width: 102px;
            height: 357px;
        }
        .style6
        {
            height: 357px;
            width: 280px;
        }
        #Text1
        {
            height: 36px;
            width: 183px;
        }
        .style7
        {
            width: 280px;
        }
        .style8
        {
            width: 193px;
        }
        .style9
        {
            height: 357px;
            width: 193px;
        }
    </style>
</head>
<body onunload="Leave(); return false;">
<script type="text/javascript">
function Leave()
{
    Anthem_InvokePageMethod('Leave', null, null);
}

</script>
    <form id="form1" runat="server" defaultbutton="ButtonSend">
    <div>
    
<table class="style1">
    <tr>
        <td class="style2" colspan="3">
            <table >
          <tr><td><img src="images/main.png" style="border: 1px outset #c0c0c0; width: 152px; height: 119px;" /></td>
              <td><img src="images/p.png" style="height: 119px; width: 951px" /></td></tr>
         </table>
         </td>
    </tr>
    <tr>
        <td colspan ="3" id="wmargin">
                    <marquee direction="center" onmouseout="this.start()" onmouseover="this.stop()" scrollamount="1" scrolldelay="30">
                
                        Welcome to Shri Dhandhar Mevada Suthar Samaj
                    </marquee></td>
    </tr>
    <tr>
        <td class="style2">
            <anthem:Label ID="LabelUserName" runat="server">
            &nbsp;
            </anthem:Label>
            <anthem:Label ID="Label1" runat="server">
                &nbsp;User Name:</anthem:Label>
        </td>
        <td class="style8">
&nbsp;&nbsp;
            <asp:Label ID="usernamelable" runat="server" ></asp:Label>
            </td>
        <td class="style7">
            <asp:Button ID="chtlo" runat="server" Height="39px" onclick="chtlo_Click" 
                Text="Leave Chat..!!" Width="120px" />
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style8">
            <anthem:Label ID="LabelError" runat="server" AutoUpdateAfterCallBack="True" 
                UpdateAfterCallBack="True"></anthem:Label>
            </td>
        <td class="style7">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style9" align="center">
            <anthem:ListBox ID="ListBox2" runat="server" Height="352px" Width="738px" 
                AutoUpdateAfterCallBack="True">
            </anthem:ListBox>
        </td>
        <td class="style6">
            <anthem:Timer ID="Timer1" runat="server">
            </anthem:Timer>
            <anthem:ListBox ID="ListBox1" runat="server" Height="352px" Width="191px" 
                AutoUpdateAfterCallBack="True" TextDuringCallBack="Loading...">
            </anthem:ListBox>
            </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style8">
            <anthem:TextBox ID="TextBoxType2" runat="server" Height="37px" Width="390px"></anthem:TextBox>
            </td>
        <td class="style7">
            <anthem:Button ID="ButtonSend" runat="server" Height="41px" 
                onclick="ButtonSend_Click" Text="Send" Width="90px" />
            </td>
    </tr>
    <tr>
        <td colspan ="3" class="footername" >
                    <marquee direction="center" onmouseout="this.start()" onmouseover="this.stop()" scrollamount="1" scrolldelay="30">
                
                        ::Shri Dhandhar Mevada Suthar Samaj Seva Sangh::
                    </marquee></td>
    </tr>
</table>


    </div>
    </form>
</body>
</html>
