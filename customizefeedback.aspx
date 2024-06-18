<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customizefeedback.aspx.cs" Inherits="FEEBACK_SYSTEM.customizefeedback" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 413px;
        }
        .style2
        {
            text-align: right;
            width: 641px;
            color: #FFFFFF;
        }
        .style3
        {
            width: 641px;
        }
        .style4
        {
            font-size: xx-large;
            text-align: center;
            color: #FFFF00;
        }
        .style5
        {
            text-align: left;
            width: 641px;
            color: #FFFFFF;
            height: 72px;
        }
        .style6
        {
            height: 72px;
        }
    </style>
</head>
<body background="Images/decent4.jpg">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style4" colspan="2">
                <strong>UPDATE FEEDBACK QUESTIONS</strong></td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Button ID="Button2" runat="server" BackColor="#FF3300" 
                    CausesValidation="False" ForeColor="White" onclick="Button2_Click" 
                    Text="BACK" />
            </td>
            <td class="style6">
            </td>
        </tr>
        <tr>
            <td class="style2">
                <strong>FIRST QUESTION:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="None" 
                    ErrorMessage="FIRST QUESTION CAN'T BE EMPTY..!"></asp:RequiredFieldValidator>
                <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                    runat="server" BehaviorID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                    TargetControlID="RequiredFieldValidator1">
                </ajaxToolkit:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <strong>SECOND QUESTION :</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" Display="None" 
                    ErrorMessage="SECONT QUESTION CAN'T BE EMPTY..!"></asp:RequiredFieldValidator>
                <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                    runat="server" BehaviorID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                    TargetControlID="RequiredFieldValidator2">
                </ajaxToolkit:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <strong>THIRD QUESTION :</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" Display="None" 
                    ErrorMessage="THIRD QUESTION CAN'T BE EMPTY..!"></asp:RequiredFieldValidator>
                <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                    runat="server" BehaviorID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                    TargetControlID="RequiredFieldValidator3">
                </ajaxToolkit:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <strong>FOURTH QUESTION :</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" Display="None" 
                    ErrorMessage="FOURTH QUESTION CAN'T BE EMPTY..!"></asp:RequiredFieldValidator>
                <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                    runat="server" BehaviorID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                    TargetControlID="RequiredFieldValidator4">
                </ajaxToolkit:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <strong>FIFTH QUESTION :</strong></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" Display="None" 
                    ErrorMessage="FIFTH QUESTION CAN'T BE EMPTY..!"></asp:RequiredFieldValidator>
                <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator5_ValidatorCalloutExtender" 
                    runat="server" BehaviorID="RequiredFieldValidator5_ValidatorCalloutExtender" 
                    TargetControlID="RequiredFieldValidator5">
                </ajaxToolkit:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="UPDATE" 
                    BackColor="Red" Font-Bold="True" ForeColor="White" Height="39px" Width="87px" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
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
