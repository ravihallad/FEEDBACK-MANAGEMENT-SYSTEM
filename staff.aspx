<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staff.aspx.cs" Inherits="FEEBACK_SYSTEM.staff" %>

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
            text-align: center;
            font-size: x-large;
            color: #FFFF00;
        }
        .style4
        {
            text-align: left;
            color: #FFFFFF;
            width: 637px;
            height: 43px;
        }
        .style5
        {
            color: #FFFFFF;
            background-color: #FF3300;
        }
        .style6
        {
            width: 637px;
        }
        .style7
        {
            height: 43px;
        }
        .style9
        {
            height: 46px;
        }
        .style10
        {
            text-align: right;
            color: #FFFFFF;
        }
        .style11
        {
            text-align: left;
        }
        .style13
        {
            width: 622px;
        }
        .style14
        {
            width: 622px;
            text-align: right;
            color: #FFFFFF;
        }
        .style15
        {
            height: 46px;
            text-align: center;
        }
    </style>
</head>
<body background="Images/decent4.jpg">
    <form id="form1" runat="server">
    <div class="style2">
    
        <strong>CHECK GIVEN SUGGESTIONS</strong></div>
    <table class="style1">
        <tr>
            <td class="style4">
                <asp:Button ID="Button2" runat="server" CssClass="style5" 
                    onclick="Button2_Click" Text="BACK" />
            </td>
            <td class="style7">
            </td>
        </tr>
        <tr>
            <td class="style10" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9" colspan="2">
                <asp:Panel ID="Panel1" runat="server">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <table class="style1">
                                <tr>
                                    <td class="style14">
                                        <strong>COURSE:</strong></td>
                                    <td class="style11">
                                        <asp:DropDownList ID="down1" runat="server" 
                        onselectedindexchanged="down1_SelectedIndexChanged" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style14">
                                        <strong>SEMESTER</strong></td>
                                    <td class="style11">
                                        <asp:DropDownList ID="down2" runat="server" 
                        onselectedindexchanged="down2_SelectedIndexChanged" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style14">
                                        <strong>TEACHER</strong></td>
                                    <td class="style11">
                                        <asp:DropDownList ID="down3" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style13">
                                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                                        </asp:ScriptManager>
                                    </td>
                                    <td class="style11">
                                        <asp:Button ID="Button1" runat="server" BackColor="#660066" ForeColor="White" 
                                            onclick="Button1_Click" Text="CHECK" />
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style15" colspan="2">
                <asp:Panel ID="Panel2" runat="server">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <table class="style1">
                                <tr>
                                    <td>
                                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                                            GridLines="None" Width="1287px">
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
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style15" colspan="2">
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
    </form>
</body>
</html>
