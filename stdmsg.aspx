<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stdmsg.aspx.cs" Inherits="FEEBACK_SYSTEM.stdmsg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: right;
            width: 613px;
        }
        .style3
        {
            width: 613px;
        }
        .style4
        {
            color: #FFFF00;
            font-size: xx-large;
            text-align: center;
        }
        .style5
        {
            font-size: large;
        }
        .style6
        {
            width: 613px;
            height: 60px;
            text-align: right;
        }
        .style7
        {
            height: 60px;
        }
        .style8
        {
            width: 613px;
            height: 28px;
        }
        .style9
        {
            height: 28px;
        }
    </style>
</head>
<body background="Images/decent4.jpg">
    <form id="form1" runat="server">
    <div class="style4">
    
        <strong>SEND YOUR MESSAGE TO STUDENT</strong></div>
    <table class="style1">
        <tr>
            <td class="style8">
                <asp:Button ID="Button2" runat="server" BackColor="Red" 
                    CausesValidation="False" ForeColor="White" onclick="Button2_Click" 
                    Text="BACK" />
            </td>
            <td class="style9">
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label2" runat="server" ForeColor="White" Text="SELECT YEAR :"></asp:Label>
            </td>
            <td class="style7">
                <asp:DropDownList ID="down1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="year" DataValueField="year" 
                    onselectedindexchanged="down1_SelectedIndexChanged" Width="85px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:staffdataConnectionString1 %>" 
                    SelectCommand="SELECT [year] FROM [studentdata]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <strong>
                <asp:Label ID="Label1" runat="server" ForeColor="White" 
                    Text="TYPE YOUR MESSAGE :"></asp:Label>
                </strong>
            </td>
            <td>
                <asp:TextBox ID="urtxt" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#660066" CssClass="style5" 
                    Font-Bold="True" ForeColor="White" Height="32px" onclick="Button1_Click" 
                    Text="SEND" Width="85px" />
            </td>
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
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
