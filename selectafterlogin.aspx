<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="selectafterlogin.aspx.cs" Inherits="FEEBACK_SYSTEM.selectafterlogin" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 92px;
        }
        .style2
        {
            width: 100%;
            height: 450px;
        }
        #form1
        {
            height: 610px;
            width: 1094px;
        }
        .style5
        {
            height: 77px;
            width: 254px;
        }
        .style4
        {
            height: 77px;
        }
        .style6
        {
            width: 254px;
        }
        .style7
        {
            color: #CC0000;
            font-size: large;
            font-weight: 700;
        }
        .style10
        {
            font-size: large;
        }
        .style14
        {
            color: #FFFFFF;
            font-size: large;
            font-weight: 700;
        }
        .style15
        {
            text-align: center;
        }
        .style16
        {
            width: 100%;
        }
        .style3
        {
            color: #FFFFCC;
            font-size: large;
            font-weight: 700;
        }
        .style8
        {
            width: 254px;
            color: #FFFFFF;
        }
        .style12
        {
            width: 254px;
            height: 41px;
        }
        .style11
        {
            color: #FFFFFF;
        }
        .style9
        {
            color: #CC0000;
            font-size: large;
        }
        .style13
        {
            height: 41px;
            text-align: left;
        }
        .style17
        {
            text-align: left;
        }
        </style>
</head>
<body background="Images/art1.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <asp:Panel ID="Panel1" runat="server" BackColor="#FF66FF" 
        BackImageUrl="~/Images/art3.png" Height="496px" style="margin-left: 443px" 
        Width="482px">
        <table class="style2">
            <tr>
                <td style="text-align: left">
                    <asp:Label ID="Label5" runat="server" 
                        style="font-size: xx-large; color: #CC0000" Text="REQUIRED"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="style2">
                        <tr>
                            <td class="style5">
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                            </td>
                            <td class="style4">
                                <asp:Label ID="regno" runat="server" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" colspan="2">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <div class="style15">
                                            <table class="style16">
                                                <tr>
                                                    <td class="style6" style="text-align: right">
                                                        <asp:Label ID="Label2" runat="server" CssClass="style3" Text="COURSE"></asp:Label>
                                                        <span class="style3">&nbsp;</span><span class="style7">*</span><span><span 
                                                            class="style11"><strong> :</strong></span></span></td>
                                                    <td class="style17">
                                                        <asp:DropDownList ID="stdcrs" runat="server" AutoPostBack="True" 
                                                            onselectedindexchanged="stdcrs_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                            ControlToValidate="stdcrs" Display="None" ErrorMessage="PLEASE SELECT COURSE" 
                                                            InitialValue="0"></asp:RequiredFieldValidator>
                                                        <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                                                            runat="server" BehaviorID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                                                            TargetControlID="RequiredFieldValidator1">
                                                        </ajaxToolkit:ValidatorCalloutExtender>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style8" style="text-align: right">
                                                        <span class="style10"><strong>SEMESTERE</strong></span><span class="style7">*
                                                        </span><span class="style14">:</span></td>
                                                    <td class="style17">
                                                        <asp:DropDownList ID="stdsmstr" runat="server" AutoPostBack="True" 
                                                            onselectedindexchanged="stdsmstr_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                            ControlToValidate="stdsmstr" Display="None" 
                                                            ErrorMessage="PLEASE SELECT SEMESTER" InitialValue="0"></asp:RequiredFieldValidator>
                                                        <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                                                            runat="server" BehaviorID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                                                            TargetControlID="RequiredFieldValidator2">
                                                        </ajaxToolkit:ValidatorCalloutExtender>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style12" style="text-align: right">
                                                        <span class="style11"><strong><span class="style10">TEACHER</span></strong></span><span 
                                                            class="style9"><strong>*</strong></span><span class="style11"><strong> :</strong></span></td>
                                                    <td class="style13">
                                                        <asp:DropDownList ID="stdtchr" runat="server">
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                            ControlToValidate="stdtchr" Display="None" ErrorMessage="PLEASE SELECT TEACHER" 
                                                            InitialValue="0"></asp:RequiredFieldValidator>
                                                        <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                                                            runat="server" BehaviorID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                                                            TargetControlID="RequiredFieldValidator3">
                                                        </ajaxToolkit:ValidatorCalloutExtender>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6" style="text-align: right; color: #FFFFFF; font-weight: 700">
                                <strong><span class="style10">ENTER SUBJECT</span></strong> <span class="style7">*</span>:</td>
                            <td>
                                <asp:TextBox ID="txtsubject" runat="server" autocomplete="off"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtsubject" Display="None" 
                                    ErrorMessage="PLEASE ENTER SUBJECT"></asp:RequiredFieldValidator>
                                <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                                    runat="server" BehaviorID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                                    TargetControlID="RequiredFieldValidator4">
                                </ajaxToolkit:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="go" runat="server" onclick="Button1_Click1" 
                                    style="height: 26px" Text="GO &gt;&gt;" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
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
