<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addstaff.aspx.cs" Inherits="FEEBACK_SYSTEM.addstaff" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style21
        {
            width: 100%;
            height: 539px;
        }
        .style22
        {
            font-size: xx-large;
        }
        .style23
        {
            height: 20px;
        }
        .style24
        {
        }
        .style26
        {
            height: 40px;
            text-align: center;
            font-weight: 700;
            font-size: x-large;
            color: #FFFFFF;
        }
        .style28
        {
            height: 17px;
        }
        .style29
        {
            height: 40px;
        }
        .style30
        {
            height: 90px;
        }
        .style31
        {
            color: #CC0000;
        }
        .style32
        {
            height: 54px;
        }
    </style>
    </head>
<body background="Images/purpleback.jpg" style="height: 726px; width: 1176px;">
   


   

   
    <form id="form1" runat="server">
    <asp:Button ID="Button3" runat="server" BackColor="Red" 
        CausesValidation="False" Height="32px" onclick="Button3_Click" Text="BACK" 
        Width="64px" />
    <asp:Panel ID="Panel1" runat="server" BackColor="#660066" Height="559px" 
        style="margin-left: 219px" Width="922px">
        <asp:Panel ID="Panel2" runat="server" BackColor="#FFFF66" Height="546px" 
            style="margin-left: 112px" Width="722px">
            <table class="style21">
                <tr>
                    <td class="style30" colspan="2" 
                        style="text-align: center; text-decoration: underline">
                        <asp:Image ID="Image1" runat="server" Height="92px" 
                            ImageUrl="~/Images/Office_Staff-88.png" Width="120px" />
                        <strong>
                        <asp:Label ID="Label1" runat="server" CssClass="style22" Text="ADD STAFF"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#660066" class="style23" colspan="2">
                    </td>
                </tr>
                <tr>
                    <td class="style32" style="text-align: right">
                        FULL NAME <span class="style31">*</span>:<asp:ScriptManager ID="ScriptManager1" 
                            runat="server">
                        </asp:ScriptManager>
                    </td>
                    <td class="style32">
                        <asp:TextBox ID="TextBox3" runat="server" autocomplete="off"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox3" Display="None" 
                            ErrorMessage="STAFF NAME IS MANDATORY" ForeColor="Red"></asp:RequiredFieldValidator>
                        <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                            runat="server" BehaviorID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                            TargetControlID="RequiredFieldValidator1">
                        </ajaxToolkit:ValidatorCalloutExtender>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="TextBox3" Display="None" 
                            ErrorMessage="NAME MUST TO BE STRING" ValidationExpression="[a-z A-Z]+"></asp:RegularExpressionValidator>
                        <ajaxToolkit:ValidatorCalloutExtender ID="RegularExpressionValidator1_ValidatorCalloutExtender" 
                            runat="server" 
                            BehaviorID="RegularExpressionValidator1_ValidatorCalloutExtender" 
                            TargetControlID="RegularExpressionValidator1">
                        </ajaxToolkit:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td class="style24" style="text-align: right">
                        COURSE <span class="style31">*</span>:</td>
                    <td>
                        <asp:DropDownList ID="crsdn" runat="server" 
                            onselectedindexchanged="crsdn_SelectedIndexChanged" AutoPostBack="True">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="crsdn" Display="None" ErrorMessage="SELECT COURSE FIRST" 
                            ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                        <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                            runat="server" BehaviorID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                            TargetControlID="RequiredFieldValidator3">
                        </ajaxToolkit:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td class="style24" style="text-align: right">
                        SEMESTER<span class="style31"> *</span>:</td>
                    <td>
                        <asp:DropDownList ID="smstr" runat="server" style="height: 22px" 
                            onselectedindexchanged="smstr_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="smstr" Display="None" ErrorMessage="SELECT SEMESTER" 
                            ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                        <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                            runat="server" BehaviorID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                            TargetControlID="RequiredFieldValidator4">
                        </ajaxToolkit:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td class="style24" style="text-align: right">
                        ENTER SUBJECT <span class="style31">*</span>:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" autocomplete="off"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox4" Display="None" ErrorMessage="MUST ENTER SUBJECT" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                            runat="server" BehaviorID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                            TargetControlID="RequiredFieldValidator2">
                        </ajaxToolkit:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td class="style29">
                        &nbsp;</td>
                    <td class="style29">
                        <asp:Button ID="Button2" runat="server" Height="31px" Text="SAVE" 
                            Width="64px" onclick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="style28">
                    </td>
                    <td class="style28">
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#660066" class="style26" colspan="2">
                        A NATION BUILDER</td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
    </form>
   


   

   
</body>
</html>
