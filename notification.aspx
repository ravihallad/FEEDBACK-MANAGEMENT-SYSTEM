<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="notification.aspx.cs" Inherits="FEEBACK_SYSTEM.notification" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 395px;
        }
        .style2
        {
            text-align: center;
            color: #FFFF00;
            font-size: x-large;
            height: 71px;
        }
        .style4
        {
            width: 597px;
            height: 33px;
        }
        .style5
        {
            text-align: right;
            width: 597px;
            color: #FFFFFF;
        }
        .style7
        {
            height: 33px;
        }
        .style8
        {
            color: #FFFFFF;
            font-size: large;
        }
        .style9
        {
            text-align: right;
            width: 597px;
            color: #FFFFFF;
            font-size: large;
        }
        .style10
        {
            text-align: right;
            width: 597px;
            color: #FFFFFF;
            font-size: large;
            height: 76px;
        }
        .style11
        {
            height: 76px;
        }
        .style12
        {
            text-align: left;
            color: #FFFF00;
            font-size: x-large;
            height: 23px;
        }
    </style>
</head>
<body background="Images/decent3.png">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style12" colspan="2">
                <asp:Button ID="Button3" runat="server" BackColor="Red" ForeColor="White" 
                    onclick="Button3_Click" Text="BACK" />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <strong>ADMIN LOGIN</strong></td>
        </tr>
        <tr>
            <td class="style5">
                <strong>Username:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <strong>Password:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style7">
                <asp:Button ID="Button1" runat="server" BackColor="#660033" ForeColor="White" 
                    Height="29px" onclick="Button1_Click" Text="SUBMIT" Width="78px" />
            </td>
        </tr>
        <tr>
            <td class="style10">
            </td>
            <td class="style11">
            </td>
        </tr>
        <tr>
            <td class="style9">
                <strong>
                <asp:Label ID="Label1" runat="server" CssClass="style8" 
                    Text="ADD FIRST HEADING :" Visible="False"></asp:Label>
                </strong>
            </td>
            <td>
                <asp:TextBox ID="txt1" runat="server" TextMode="MultiLine" Visible="False" 
                    autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <strong>
                <asp:Label ID="Label2" runat="server" CssClass="style8" 
                    Text="ADD FIRST PARAGRAPH :" Visible="False"></asp:Label>
                </strong>
            </td>
            <td>
                <asp:TextBox ID="txt2" runat="server" TextMode="MultiLine" Visible="False" 
                    autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <strong>
                <asp:Label ID="Label3" runat="server" CssClass="style8" 
                    Text="ADD SECOND HEADING :" Visible="False"></asp:Label>
                </strong>
            </td>
            <td>
                <asp:TextBox ID="txt3" runat="server" TextMode="MultiLine" Visible="False" 
                    autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <strong>
                <asp:Label ID="Label4" runat="server" CssClass="style8" 
                    Text="ADD SECOND HEADING :" Visible="False"></asp:Label>
                </strong>
            </td>
            <td>
                <asp:TextBox ID="txt4" runat="server" TextMode="MultiLine" Visible="False" 
                    autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <strong>
                <asp:Label ID="Label5" runat="server" CssClass="style8" 
                    Text="ADD THIRD HEADING :" Visible="False"></asp:Label>
                </strong>
            </td>
            <td>
                <asp:TextBox ID="txt5" runat="server" TextMode="MultiLine" Visible="False" 
                    autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <strong>
                <asp:Label ID="Label6" runat="server" CssClass="style8" 
                    Text="ADD THIRD PARAGRAPH: :" Visible="False"></asp:Label>
                </strong>
            </td>
            <td>
                <asp:TextBox ID="txt6" runat="server" TextMode="MultiLine" Visible="False" 
                    autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" BackColor="#33CC33" ForeColor="White" 
                    Height="30px" onclick="Button2_Click" Text="SAVE" Visible="False" 
                    Width="75px" />
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
