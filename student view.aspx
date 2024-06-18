<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student view.aspx.cs" Inherits="FEEBACK_SYSTEM.student_view" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 454px;
        }
        .style7
        {
            margin-left: 283px;
            margin-top: 21px;
        }
        .style8
        {
            color: #FFFFFF;
        }
        .style11
        {
            text-align: center;
            color: #FF3300;
            font-size: xx-large;
        }
        .style12
        {
            width: 100%;
        }
        .style17
        {
            width: 559px;
        }
        .style19
        {
            text-align: right;
            width: 515px;
            color: #FFFF00;
        }
        .style20
        {
            text-align: right;
            width: 515px;
            color: #FFFF00;
            font-size: large;
        }
        .style21
        {
            width: 515px;
        }
    </style>
</head>
<body background="Images/decent3.png">
    <form id="form1" runat="server">
    <div class="style11">
    
        <table class="style12">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <strong>VIEW FEEDBACK</strong></td>
            </tr>
        </table>
    
    </div>
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Images/decent4.jpg" 
        CssClass="style7" Height="460px" Width="772px">
        <table class="style1">
            <tr>
                <td class="style19">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style19">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style19">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style19">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    <strong>REGNO :</strong></td>
                <td class="style17">
                    <asp:Label ID="vreg" runat="server" CssClass="style8"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    <strong>COURSE :</strong></td>
                <td class="style17">
                    <asp:Label ID="vcrs" runat="server" CssClass="style8"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    <strong>SEMESTER :</strong></td>
                <td class="style17">
                    <asp:Label ID="vsem" runat="server" CssClass="style8"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    <strong>SELECT TEACHER :</strong></td>
                <td class="style17">
                    <asp:DropDownList ID="vdown" runat="server" CssClass="style8">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="vdown" Display="None" ErrorMessage="PLEASE SELECT TEACHER" 
                        InitialValue="0"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                        runat="server" BehaviorID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                        TargetControlID="RequiredFieldValidator1">
                    </ajaxToolkit:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    <strong>SUBJECT</strong> <strong>:</strong></td>
                <td class="style17">
                    <asp:Label ID="vsub" runat="server" CssClass="style8"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    <strong>YOUR RATINGS :</strong></td>
                <td class="style17">
                    <span class="style8">&quot;</span><asp:Label ID="rt1" runat="server" 
                        CssClass="style8"></asp:Label>
                    <span class="style8">&quot;&nbsp; &quot;</span><asp:Label ID="rt2" runat="server" 
                        CssClass="style8"></asp:Label>
                    <span class="style8">&quot;&nbsp; &quot;</span><asp:Label ID="rt3" runat="server" 
                        CssClass="style8"></asp:Label>
                    <span class="style8">&quot;&nbsp; &quot;</span><asp:Label ID="rt4" runat="server" 
                        CssClass="style8"></asp:Label>
                    <span class="style8">&quot;&nbsp; &quot;</span><asp:Label ID="rt5" runat="server" 
                        CssClass="style8"></asp:Label>
                    <span class="style8">&quot;&nbsp; &quot;</span><asp:Label ID="rt6" runat="server" 
                        CssClass="style8"></asp:Label>
                    <span class="style8">&quot;&nbsp;&nbsp; &quot;</span><asp:Label ID="rt7" runat="server" 
                        CssClass="style8"></asp:Label>
                    <span class="style8">&quot;&nbsp; &quot;</span><asp:Label ID="rt8" runat="server" 
                        CssClass="style8"></asp:Label>
                    <span class="style8">&quot;&nbsp; &quot;</span><asp:Label ID="rt9" runat="server" 
                        CssClass="style8"></asp:Label>
                    <span class="style8">&quot;&nbsp; &quot;</span><asp:Label ID="rt10" runat="server" 
                        CssClass="style8"></asp:Label>
                    <span class="style8">&quot;</span></td>
            </tr>
            <tr>
                <td class="style21">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style21">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style21">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style21">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style21">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    </form>
</body>
</html>
