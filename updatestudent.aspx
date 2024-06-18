<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatestudent.aspx.cs" Inherits="FEEBACK_SYSTEM.updatestudent" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 402px;
        }
        .style11
        {
            color: #FFFFFF;
        }
        .style12
        {
            color: #FFFF00;
            text-decoration: underline;
            text-align: center;
            font-size: xx-large;
        }
        .style13
        {
            width: 620px;
            height: 27px;
        }
        .style14
        {
            height: 27px;
        }
        .style15
        {
            width: 620px;
            height: 49px;
        }
        .style16
        {
            height: 49px;
        }
        .style17
        {
            text-align: right;
            width: 620px;
        }
        .style18
        {
            width: 620px;
        }
        .style19
        {
            text-align: left;
            width: 620px;
        }
    </style>
</head>
<body background="Images/decent.png">
    <form id="form1" runat="server">
    <div>
    
        &nbsp;<asp:Button 
            ID="bckbtn" runat="server" BackColor="Red" ForeColor="White" 
            Height="30px" onclick="HMBTN_Click" Text="BACK" Width="99px" 
            CausesValidation="False" />
        <asp:Panel ID="Panel1" runat="server" Height="406px">
            <table class="style1">
                <tr>
                    <td class="style12" colspan="2">
                        <strong>UPDATE STUDENT MOBILE NUMBER</strong></td>
                </tr>
                <tr>
                    <td class="style19">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style17">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style17">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style17">
                        <span class="style11">REGISTER NO :</span></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" autocomplete="off"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" Display="None" 
                            ErrorMessage="PLEASE ENTER STUDENT REGISTER NUMBER"></asp:RequiredFieldValidator>
                        <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                            runat="server" BehaviorID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                            TargetControlID="RequiredFieldValidator1">
                        </ajaxToolkit:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td class="style17">
                        <span class="style11">NEW MOBILE NO :</span></td>
                    <td>
                        <asp:TextBox ID="newmob" runat="server" autocomplete="off"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="newmob" Display="None" 
                            ErrorMessage="PLEASE ENTER STUDENT MOBILE NUMBER"></asp:RequiredFieldValidator>
                        <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                            runat="server" BehaviorID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                            TargetControlID="RequiredFieldValidator2">
                        </ajaxToolkit:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td class="style18">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" BackColor="Black" ForeColor="White" 
                            Height="33px" onclick="Button1_Click" Text="UPDATE" Width="86px" />
                    </td>
                </tr>
                <tr>
                    <td class="style18">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style18">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style18">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style13">
                        </td>
                    <td class="style14">
                        </td>
                </tr>
                <tr>
                    <td class="style18">
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style15">
                        &nbsp;</td>
                    <td class="style16">
                        </td>
                </tr>
            </table>
        </asp:Panel>
    
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
