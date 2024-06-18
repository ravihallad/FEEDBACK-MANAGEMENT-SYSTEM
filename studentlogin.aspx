<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentlogin.aspx.cs" Inherits="FEEBACK_SYSTEM.studentlogin" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 571px;
        }
        .style2
        {
        } 
        .style3
        {
            height: 30px;
        }
        .style4
        {
            height: 18px;
        }
        .style6
        {
            text-align: right;
            color: #FFFFFF;
        }
        .style7
        {
            color: #FF0000;
        }
        .style8
        {
            color: #FFFFFF;
            text-align: right;
        }
        .style9
        {
            color: #CC0000;
        }
        .style10
        {
            color: #FFFFFF;
        }
    </style>
</head>
<body background="Images/art1.jpg" bgcolor="#ff0000" 
    style="height: 400px; width: 664px; margin-left: 322px">
 
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="577px" style="margin-left: 24px" 
        Width="679px">
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="176px" 
                        ImageUrl="~/Images/studentlogin.png" style="margin-left: 155px" Width="302px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                </td>
                <td class="style2" rowspan="9">
                </td>
                <td bgcolor="#CCCCFF" class="style4" colspan="2" style="text-align: right">
                </td>
                <td class="style2" rowspan="9">
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style3" colspan="2" 
                    style="text-align: center; font-size: x-large; color: #CC0000">
                    <asp:Label ID="Label5" runat="server" 
                        style="text-align: center; font-weight: 700; color: #FFFF00;" 
                        Text="STUDENT LOGIN"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style6">
                    <span class="style8">REGISTER NO</span><span class="style7">*</span>:</td>
                <td>
                    <asp:TextBox ID="vryfreg" runat="server" ontextchanged="vryemail_TextChanged" autocomplete="off"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="vryfreg" Display="None" 
                        ErrorMessage="PLEASE ENTER REGISTER NUMBER"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                        runat="server" BehaviorID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                        TargetControlID="RequiredFieldValidator1">
                    </ajaxToolkit:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: right">
                    <span class="style10"> &nbsp;MOBILE NO</span><span class="style9">*</span><span class="style8">:</span></td>
                <td>
                    <asp:TextBox ID="vrymob" runat="server" ontextchanged="vrymob_TextChanged" autocomplete="off"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="vrymob" Display="None" 
                        ErrorMessage="PLEASE ENTER REGISTERED MOBILE NUMBER"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                        runat="server" BehaviorID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                        TargetControlID="RequiredFieldValidator2">
                    </ajaxToolkit:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: right" class="style8">
                    SEND OTP&nbsp; TO MOBILE <span class="style9">*</span>:</td>
                <td>
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                        Text="SEND &gt;&gt;" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style8">
                    <asp:Label ID="Label6" runat="server" Text="VERIFY OTP :" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="vryfyotp" runat="server" ontextchanged="vryfyotp_TextChanged" 
                        Visible="False" autocomplete="off"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="vryfyotp" Display="None" 
                        ErrorMessage="PLEASE ENTER OTP WHICH IS SENT TO REGISTERED MOBILE NUMBER"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                        runat="server" BehaviorID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                        TargetControlID="RequiredFieldValidator3">
                    </ajaxToolkit:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" BackColor="#009900" ForeColor="White" 
                        Height="29px" Text="LOGIN &gt;&gt;" Width="90px" onclick="Button2_Click" 
                        Visible="False" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                </td>
                <td class="style4" colspan="2">
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    </form>
 
</body>
</html>
