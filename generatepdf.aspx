<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="generatepdf.aspx.cs" Inherits="FEEBACK_SYSTEM.generatepdf" %>

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
        .style9
        {
            width: 621px;
            text-align: right;
        }
        .style12
        {
            text-align: left;
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
        .style13
        {
            height: 23px;
        }
    </style>
</head>
<body background="Images/decent4.jpg">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2" colspan="2">
                <strong>SELECT FEILDS TO GENERATE PDF</strong></td>
        </tr>
        <tr>
            <td>
                <strong></strong>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <strong></strong>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                <strong>
                <asp:Label ID="Label1" runat="server" ForeColor="White" Text="COURSE :" 
                    ></asp:Label>
                </strong>
            </td>
            <td class="style12">
                <asp:DropDownList ID="down1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="down1_SelectedIndexChanged" >
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style10">
                <strong>
                <asp:Label ID="Label2" runat="server" ForeColor="White" Text="TEACHER :" 
                   ></asp:Label>
                </strong>
            </td>
            <td class="style11">
                <asp:DropDownList ID="down2" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="down2_SelectedIndexChanged" >
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <strong>
                <asp:Label ID="Label3" runat="server" ForeColor="White" Text="SUBJECT :" 
                    ></asp:Label>
                </strong>
            </td>
            <td class="style12">
                <asp:DropDownList ID="down3" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="down3_SelectedIndexChanged" >
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <strong></strong>
            </td>
            <td class="style12">
                <asp:Button ID="Button3" runat="server" onclick="Button2_Click" 
                    Text="CLICK TO GENERATE PDF"  />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                </td>
            <td class="style13">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" 
                    EmptyDataText="There are no data records to display.">
                    <Columns>
                        <asp:BoundField DataField="tlbl1" HeaderText="tlbl1" SortExpression="tlbl1" />
                        <asp:BoundField DataField="tlbl2" HeaderText="tlbl2" SortExpression="tlbl2" />
                        <asp:BoundField DataField="tlbl3" HeaderText="tlbl3" SortExpression="tlbl3" />
                        <asp:BoundField DataField="tlbl4" HeaderText="tlbl4" SortExpression="tlbl4" />
                        <asp:BoundField DataField="tlbl5" HeaderText="tlbl5" SortExpression="tlbl5" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:staffdataConnectionString1 %>" 
                    ProviderName="<%$ ConnectionStrings:staffdataConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT [tlbl1], [tlbl2], [tlbl3], [tlbl4], [tlbl5] FROM [feedbackcustm]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
