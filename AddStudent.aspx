<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="FEEBACK_SYSTEM.AddStudent" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 419px;
        }
        .style4
        {
            width: 432px;
        }
        .style6
        {
            color: #FF0000;
        }
        .style10
        {
            width: 350px;
        }
        .style12
        {
        }
        .style13
        {
            color: #FFFFFF;
        }
        .style14
        {
            color: #FFFFFF;
            font-size: xx-large;
        }
        .style15
        {
            color: #FFFF00;
            font-weight: 700;
        }
        .style16
        {
            width: 350px;
            color: #FFFFFF;
        }
        .style17
        {
            color: #CC0000;
        }
        .style18
        {
            color: #000000;
        }
        .style20
        {
            width: 350px;
            color: #FFFF00;
        }
        .style21
        {
            color: #FF9933;
        }
        .style22
        {
            color: #FFFF00;
        }
        .style23
        {
            color: #FFFF66;
        }
        .style24
        {
            margin-top: 0px;
        }
        .style25
        {
            width: 350px;
            text-align: left;
        }
    </style>
</head>
<body>
   
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#3333FF" Height="600px">
        <table class="style1">
            <tr>
                <td class="style12">
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td bgcolor="Black" class="style12">
                    <asp:Image ID="Image1" runat="server" CssClass="style13" Height="114px" 
                        ImageUrl="~/Images/book.jpg" Width="787px" />
                    <span class="style14">ADD STUDENT</span></td>
            </tr>
            <tr>
                <td bgcolor="Red" class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#660033" class="style12">
                    <table class="style1">
                        <tr>
                            <td class="style25">
                                <asp:Button ID="Button4" runat="server" BackColor="Red" 
                                    CausesValidation="False" CssClass="style24" Height="33px" 
                                    onclick="Button2_Click1" Text="BACK" />
                            </td>
                            <td class="style4">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style25">
                                &nbsp;</td>
                            <td class="style4">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10" style="text-align: right">
                                <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
                                    Text="STUDENT NAME" CssClass="style23"></asp:Label>
                                &nbsp;<span class="style6">*</span>:</td>
                            <td class="style4">
                                <asp:TextBox ID="TextBox1" runat="server" autocomplete="off"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TextBox1" Display="None" 
                                    ErrorMessage="STUDENT  NAME IS MANDATORY"></asp:RequiredFieldValidator>
                                <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                                    runat="server" BehaviorID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                                    TargetControlID="RequiredFieldValidator1">
                                </ajaxToolkit:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10" style="text-align: right">
                                <span class="style15"><strong>LAST NAME</strong> </span><span class="style6">*</span>:</td>
                            <td class="style4">
                                <asp:TextBox ID="TextBox2" runat="server" autocomplete="off"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="TextBox2" Display="None" 
                                    ErrorMessage="STUDENT LAST NAME IS MANDATORY"></asp:RequiredFieldValidator>
                                <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                                    runat="server" BehaviorID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                                    TargetControlID="RequiredFieldValidator2">
                                </ajaxToolkit:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10" style="text-align: right">
                                <span class="style15">REGISTER NO</span> <span class="style6">*</span>:</td>
                            <td class="style4">
                                <asp:TextBox ID="TextBox3" runat="server" autocomplete="off"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="TextBox3" Display="None" 
                                    ErrorMessage="STUDENT REGISTER NUMBER IS MANDATORY"></asp:RequiredFieldValidator>
                                <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                                    runat="server" BehaviorID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                                    TargetControlID="RequiredFieldValidator3">
                                </ajaxToolkit:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="style16" style="text-align: right">
                                <span class="style22">MOBILE NO</span><span class="style21"> </span>
                                <span class="style17">*</span><span 
                                    class="style18">:</span></td>
                            <td class="style4">
                                <asp:TextBox ID="stdmob" runat="server" autocomplete="off"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="stdmob" Display="None" 
                                    ErrorMessage="STUDENT MOBILE NUMBER IS MANDATORY"></asp:RequiredFieldValidator>
                                <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                                    runat="server" BehaviorID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                                    TargetControlID="RequiredFieldValidator4">
                                </ajaxToolkit:ValidatorCalloutExtender>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="stdmob" Display="None" 
                                    ErrorMessage="NUMBER MUST BE INTIGER  AND MUST CONTAIN FULL NUMBER" 
                                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                <ajaxToolkit:ValidatorCalloutExtender ID="RegularExpressionValidator1_ValidatorCalloutExtender" 
                                    runat="server" 
                                    BehaviorID="RegularExpressionValidator1_ValidatorCalloutExtender" 
                                    TargetControlID="RegularExpressionValidator1">
                                </ajaxToolkit:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20" style="text-align: right">
                                COURSE<span class="style17"> *</span><span class="style18">:</span></td>
                            <td class="style4">
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="DropDownList1" Display="None" ErrorMessage="SELECT COURSE" 
                                    InitialValue="0"></asp:RequiredFieldValidator>
                                <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator6_ValidatorCalloutExtender" 
                                    runat="server" BehaviorID="RequiredFieldValidator6_ValidatorCalloutExtender" 
                                    TargetControlID="RequiredFieldValidator6">
                                </ajaxToolkit:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10" style="text-align: right">
                                <asp:Label ID="Label3" runat="server" style="color: #FFFF00; font-weight: 700" 
                                    Text="SEMESTER"></asp:Label>
                                &nbsp;<span class="style6">*</span>:</td>
                            <td class="style4">
                                <asp:DropDownList ID="DropDownList2" runat="server">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    Display="None" ErrorMessage="SELECT SEMESTER" InitialValue="0" 
                                    ControlToValidate="DropDownList2"></asp:RequiredFieldValidator>
                                <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator7_ValidatorCalloutExtender" 
                                    runat="server" BehaviorID="RequiredFieldValidator7_ValidatorCalloutExtender" 
                                    TargetControlID="RequiredFieldValidator7">
                                </ajaxToolkit:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10" style="text-align: right">
                                <span class="style22"><strong>YEAR</strong></span><span class="style6"> *</span>:</td>
                            <td class="style4">
                                <asp:TextBox ID="year" runat="server" autocomplete="off"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="year" Display="None" ErrorMessage="SELECT YEAR"></asp:RequiredFieldValidator>
                                <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator5_ValidatorCalloutExtender" 
                                    runat="server" BehaviorID="RequiredFieldValidator5_ValidatorCalloutExtender" 
                                    TargetControlID="RequiredFieldValidator5">
                                </ajaxToolkit:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10">
                                &nbsp;</td>
                            <td class="style4">
                                <asp:Button ID="Button1" runat="server" BackColor="#66FF33" Height="30px" 
                                    Text="SAVE" Width="71px" onclick="Button1_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style10">
                                &nbsp;</td>
                            <td class="style4">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10">
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                            </td>
                            <td class="style4">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </asp:Panel>
    </form>
   
</body>
</html>
