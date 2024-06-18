<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reenter.aspx.cs" Inherits="FEEBACK_SYSTEM.reenter" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 336px;
        }
        .style2
        {
            text-align: right;
            width: 610px;
            color: #FFFFFF;
        }
        .style5
        {
            width: 610px;
        }
        .style6
        {
            margin-left: 0px;
        }
        .style7
        {
            width: 610px;
            height: 36px;
            text-align: right;
        }
        .style9
        {
            text-align: right;
            width: 610px;
            height: 41px;
            color: #FFFFFF;
        }
        .style10
        {
            height: 41px;
        }
        .style11
        {
            text-align: left;
            width: 631px;
        }
        .style12
        {
            text-align: right;
            width: 610px;
            height: 42px;
            color: #FFFFFF;
        }
        .style13
        {
            height: 42px;
        }
        .style15
        {
            color: #FF0000;
        }
        .style16
        {
            width: 610px;
            height: 61px;
        }
        .style17
        {
            height: 61px;
        }
        .style18
        {
            height: 36px;
        }
        .style19
        {
            text-align: right;
            width: 610px;
            color: #FFFFFF;
            height: 26px;
        }
        .style20
        {
            height: 26px;
        }
        .style21
        {
            text-align: right;
            width: 610px;
            color: #FFFFFF;
            height: 35px;
        }
        .style22
        {
            height: 35px;
        }
        .style23
        {
            font-size: large;
        }
    </style>
</head>
<body background="Images/decent4.jpg">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style5">
                <asp:Button ID="Button5" runat="server" BackColor="Red" 
                    CausesValidation="False" ForeColor="White" Height="32px" 
                    onclick="Button5_Click" Text="BACK" Width="71px" />
            </td>
            <td>
                <strong>
                <asp:Label ID="Label6" runat="server" CssClass="style23" ForeColor="Red"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label5" runat="server" ForeColor="White" Text="VERIFY OTP :"></asp:Label>
                <span class="style15"><strong>*</strong></span></td>
            <td class="style18">
                <br />
                <asp:TextBox ID="txtotp" runat="server" autocomplete="off" Height="22px" Width="138px" 
                    ontextchanged="TextBox4_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtotp" Display="None" 
                    ErrorMessage="PLEASE ENTER OTP WHICH IS SENT TO MOBILE NUMBER HERE" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                    runat="server" BehaviorID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                    TargetControlID="RequiredFieldValidator1">
                </ajaxToolkit:ValidatorCalloutExtender>
                <br />
                </td>
        </tr>
        <tr>
            <td class="style21">
                </td>
            <td class="style22">
                <asp:Button ID="vryfyotp" runat="server" onclick="Button2_Click" 
                    Text="CLICK TO VERIFY " BackColor="Red" ForeColor="White" Height="34px" />
                </td>
        </tr>
        <tr>
            <td class="style19">
                <strong><span class="style15"> &nbsp;</span><asp:Label ID="lbl1" runat="server" 
                    Text="ENTER PASSWORD :" Visible="False"></asp:Label>
                </strong></td>
            <td class="style20">
                <asp:TextBox ID="Txt1" runat="server" Visible="False" autocomplete="off"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Txt1" Display="None" 
                    ErrorMessage="PLEASE ENTER NEW PASSWORD" ForeColor="Red"></asp:RequiredFieldValidator>
                <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                    runat="server" BehaviorID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                    TargetControlID="RequiredFieldValidator2">
                </ajaxToolkit:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="lbl2" runat="server" Text="CONFORM PASSWORD :" Visible="False"></asp:Label>
            </td>
            <td class="style10">
                <asp:TextBox ID="cnfrmpass" runat="server" 
                    ontextchanged="cnfrmpass_TextChanged" Visible="False" autocomplete="off"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="cnfrmpass" Display="None" 
                    ErrorMessage="CONFORM PASSWORD" ForeColor="Red"></asp:RequiredFieldValidator>
                </strong>
                <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                    runat="server" BehaviorID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                    TargetControlID="RequiredFieldValidator3">
                </ajaxToolkit:ValidatorCalloutExtender>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="Txt1" ControlToValidate="cnfrmpass" 
                    ErrorMessage="PASSWORD NOT MATCH" ForeColor="Red" Display="None"></asp:CompareValidator>
                <ajaxToolkit:ValidatorCalloutExtender ID="CompareValidator1_ValidatorCalloutExtender" 
                    runat="server" BehaviorID="CompareValidator1_ValidatorCalloutExtender" 
                    TargetControlID="CompareValidator1">
                </ajaxToolkit:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style11">
                <strong>
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" CssClass="style6" 
                    Height="34px" Width="87px" onclick="Button1_Click" Visible="False" />
                </strong>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                <strong>&nbsp;</strong><asp:Label ID="lbl3" runat="server" Text="OR" 
                    Visible="False"></asp:Label>
            </td>
            <td class="style13">
            </td>
        </tr>
        <tr>
            <td class="style2">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><asp:Label ID="lbl4" 
                    runat="server" Text="&nbsp; UPDATE MOBILE NUMBER &nbsp;:" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Txt3" runat="server" Visible="False" autocomplete="off"
                    ontextchanged="Txt3_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="Txt3" Display="None" 
                    ErrorMessage="PLEASE ENTER NEW MOBILE NUMBER" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                    runat="server" BehaviorID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                    TargetControlID="RequiredFieldValidator4">
                </ajaxToolkit:ValidatorCalloutExtender>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="Txt3" Display="None" 
                    ErrorMessage="PLEASE ENTER ONLY COMPLIT MOBILE NUMBER " ForeColor="#FF3300" 
                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                <ajaxToolkit:ValidatorCalloutExtender ID="RegularExpressionValidator1_ValidatorCalloutExtender" 
                    runat="server" 
                    BehaviorID="RegularExpressionValidator1_ValidatorCalloutExtender" 
                    TargetControlID="RegularExpressionValidator1">
                </ajaxToolkit:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Button ID="Btn3" runat="server" Text="UPDATE" onclick="Btn3_Click" 
                    Visible="False" />
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
