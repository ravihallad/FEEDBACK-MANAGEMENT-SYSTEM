<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addc.aspx.cs" Inherits="FEEBACK_SYSTEM.addc" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 985px;
        }
        .style2
        {
            width: 318px;
        }
        .style3
        {
            width: 683px;
        }
        .style4
        {
            color: #FFFFFF;
        }
        .style5
        {
            color: #FF0000;
        }
        .style6
        {
            width: 683px;
            height: 26px;
        }
        .style7
        {
            width: 318px;
            height: 26px;
        }
        .style8
        {
            width: 683px;
            height: 61px;
        }
        .style9
        {
            width: 318px;
            height: 61px;
        }
        .style10
        {
            width: 683px;
            height: 20px;
        }
        .style11
        {
            width: 318px;
            height: 20px;
        }
        .style12
        {
            width: 683px;
            height: 33px;
        }
        .style13
        {
            width: 318px;
            height: 33px;
        }
        .style14
        {
            height: 86px;
            color: #FFFF00;
            font-size: xx-large;
            text-align: left;
        }
        .style15
        {
            height: 17px;
            color: #FFFF00;
            font-size: xx-large;
            text-align: left;
        }
    </style>
</head>
<body background="Images/decent3.png">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style15" colspan="2">
                <asp:Button ID="Button2" runat="server" BackColor="Red" 
                    CausesValidation="False" ForeColor="White" onclick="Button2_Click" 
                    Text="BACK" />
            </td>
        </tr>
        <tr>
            <td class="style14" colspan="2">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ADD COURSE</strong></td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;&nbsp;</td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td style="text-align: right" class="style3">
                <span class="style4">COURSENAME</span><span class="style5"> *</span>:</td>
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server" autocomplete="off"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="None" 
                    ErrorMessage="COURSE NAME IS MANDATORY" ForeColor="Red"></asp:RequiredFieldValidator>
                <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                    runat="server" BehaviorID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                    TargetControlID="RequiredFieldValidator1">
                </ajaxToolkit:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td style="text-align: right" class="style12">
                <span class="style4">SEMESTER</span> <span class="style5">*</span>:</td>
            <td class="style13">
                <asp:DropDownList ID="Down1" runat="server" 
                    onselectedindexchanged="Down1_SelectedIndexChanged">
                    <asp:ListItem>-Select-</asp:ListItem>
                    <asp:ListItem>1 SEMESTER</asp:ListItem>
                    <asp:ListItem>2 SEMESTER</asp:ListItem>
                    <asp:ListItem>3 SEMESTER</asp:ListItem>
                    <asp:ListItem>4 SEMESTER</asp:ListItem>
                    <asp:ListItem>5 SEMESTER</asp:ListItem>
                    <asp:ListItem>6 SEMESTER</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="ADD" />
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td class="style10">
                </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="coursename" HeaderText="coursename" 
                            SortExpression="coursename" />
                        <asp:BoundField DataField="semester" HeaderText="semester" 
                            SortExpression="semester" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:staffdataConnectionString1 %>" 
                    SelectCommand="SELECT [coursename], [semester] FROM [addcrs]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
