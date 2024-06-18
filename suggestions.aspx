<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="suggestions.aspx.cs" Inherits="FEEBACK_SYSTEM.suggestions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            color: #FF0000;
            font-size: xx-large;
        }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            width: 100%;
            height: 34px;
        }
        .style5
        {
            text-align: left;
            color: #FF0000;
            font-size: xx-large;
        }
        .style6
        {
            color: #FFFF00;
            font-size: xx-large;
        }
        .style7
        {
            width: 100%;
        }
        .style8
        {
            width: 621px;
        }
        .style9
        {
            width: 621px;
            text-align: right;
        }
        .style10
        {
            width: 621px;
            text-align: right;
            height: 23px;
        }
        .style11
        {
            height: 23px;
            text-align: left;
        }
        .style12
        {
            text-align: left;
        }
    </style>
</head>
<body background="Images/decent.png" style="width: 1288px; height: 481px">
    <form id="form1" runat="server">
    <div>
    
        <div class="style3">
    
        <br />
            <span class="style2"><strong>
            <table class="style4">
                <tr>
                    <td class="style5">
                        <strong>
            <span class="style2">
                        <asp:Button ID="Button1" runat="server" BackColor="Red" ForeColor="White" 
                            Height="30px" onclick="Button1_Click" Text="BACK" Width="61px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SUGGESTIONS BLOCK</span></strong></td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            </strong></span><br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl1" runat="server" Text="Label" Visible="False" 
                ForeColor="White"></asp:Label>
    <asp:Label ID="lbl2" runat="server" Text="Label" Visible="False" ForeColor="White"></asp:Label>
    <asp:Label ID="lbl3" runat="server" Text="Label" Font-Bold="True" Font-Size="Large" 
                ForeColor="White"></asp:Label>
            &nbsp;&nbsp;&nbsp;<br />
&nbsp;<asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
                GridLines="None" Height="179px" Width="1284px" 
                onselectedindexchanged="GridView2_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>
    
    </div>
    <p class="style3">
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="GENERATE PDF" Visible="False" />
        <table class="style7">
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    </form>
</body>
</html>
