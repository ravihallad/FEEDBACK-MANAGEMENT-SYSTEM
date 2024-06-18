<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="FEEBACK_SYSTEM.Adminlogin" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
            ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
}
        .style4
        {
            width: 100%;
            height: 321px;
            margin-right: 2px;
        }
        #form1
        {
            height: 414px;
        }
        .style8
        {
            width: 109px;
            height: 45px;
        }
        .style9
        {
            height: 45px;
        }
        .style14
        {
            width: 109px;
            height: 36px;
        }
        .style16
        {
            height: 36px;
        }
        .style17
        {
            width: 109px;
        }
        .style19
        {
            width: 138px;
            height: 36px;
        }
        .style21
        {
            color: #FFFFFF;
            height: 27px;
        }
        .style23
        {
            height: 42px;
        }
        .style25
        {
            height: 42px;
            text-align: left;
        }
        .style27
        {
            text-align: center;
        }
        .style30
        {
            width: 138px;
        }
        .style31
        {
            font-size: large;
            color: #FFFFFF;
        }
        .style32
        {
            width: 109px;
            height: 42px;
        }
        .style33
        {
            width: 138px;
            height: 42px;
        }
        .style36
        {
            width: 109px;
            height: 31px;
        }
        .style37
        {
            width: 138px;
            height: 31px;
        }
        .style38
        {
            height: 31px;
        }
    </style>
    <script type="text/javascript">
        window.history.forward();
        function noback() {
            window.history.forward();
        }
    </script>
</head>
<body background="Images/admin.jpg" >
    <form id="form1" runat="server">
    <asp:Button ID="Button6" runat="server" BackColor="Red" 
        CausesValidation="False" ForeColor="White" onclick="Button6_Click" 
        Text="BACK" />
    <asp:Panel ID="Panel1" runat="server" Height="397px" style="margin-left: 356px; margin-bottom: 82px;" 
        Width="567px">
        <table class="style4">
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td colspan="2">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style30">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="126px" 
                        ImageUrl="~/Images/Admin-icon.png" Width="149px" />
                    <asp:Label ID="Label3" runat="server" 
                        style="font-weight: 700; font-size: xx-large" Text="Admin Login"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style30">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td class="style30">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right" class="style14">
                    </td>
                <td style="text-align: right" class="style19">
                    <asp:Label ID="Label1" runat="server" ForeColor="White" 
                        style="font-weight: 700; font-size: medium" Text="UserName "></asp:Label>
                    <strong><span class="style31">:</span></strong></td>
                <td class="style16">
                    <asp:TextBox ID="admusr" runat="server" ontextchanged="TextBox1_TextChanged" 
                        Height="22px" autocomplete="off"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="admusr" Display="None" ErrorMessage="PLEASE ENTER USER NAME"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                        runat="server" BehaviorID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                        TargetControlID="RequiredFieldValidator1">
                    </cc1:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="style32">
                    </td>
                <td style="text-align: right" class="style33">
                    <asp:Label ID="Label2" runat="server" ForeColor="White" 
                        style="font-weight: 700; font-size: medium" Text="Password "></asp:Label>
                    <strong><span class="style31">:</span></strong></td>
                <td class="style23">
                    <asp:TextBox ID="admpass" runat="server" Height="22px" autocomplete="off"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="admpass" Display="None" ErrorMessage="PLEASE ENTER PASSWORD"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                        runat="server" BehaviorID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                        TargetControlID="RequiredFieldValidator2">
                    </cc1:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td class="style36">
                    </td>
                <td class="style37">
                    </td>
                <td class="style38">
                    <asp:Button ID="Button1" runat="server" ForeColor="White" Height="33px" 
                        Text="Login" Width="87px" onclick="Button1_Click" BackColor="#3333CC" 
                        Font-Bold="True" Font-Size="Medium" />
                </td>
            </tr>
            <tr>
                <td class="style8" style="text-align: center">
                    </td>
                <td class="style9" colspan="2" style="text-align: center">
                <ul>
                   
                    <li class="style27">
                        <asp:Button ID="Button2" runat="server" BackColor="Red" Font-Bold="True" 
                            ForeColor="White" onclick="Button2_Click" Text="FORGET PASSWORD?" 
                            CausesValidation="False" />
                    </li>
                   
                   </ul>  
                </td>
            </tr>
            <tr>
                <td class="style21" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style23" colspan="2">
                    &nbsp;</td>
                <td class="style25">
                    <asp:TextBox ID="admmob" runat="server" Height="27px" 
                        ontextchanged="TextBox3_TextChanged" Visible="False" Width="241px" autocomplete="off"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="admmob" Display="None" 
                        ErrorMessage="PLEASE ENTER REGISTER MOBILE NUMBER OR EMAIL"></asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                        runat="server" BehaviorID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                        TargetControlID="RequiredFieldValidator3">
                    </cc1:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style30">
                    &nbsp;</td>
                <td class="style27">
                    <asp:Button ID="Button3" runat="server" BackColor="White" Font-Bold="True" 
                        ForeColor="Black" Height="28px" Text="NEXT" Visible="False" Width="86px" 
                        onclick="Button3_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    </form>
    </body>
</html>
