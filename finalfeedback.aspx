<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="finalfeedback.aspx.cs" Inherits="FEEBACK_SYSTEM.finalfeedback" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

   
    <style type="text/css">
        .style5
        {
            width: 1127px;
            height: 27px;
        }
        .style54
        {
            width: 100%;
            height: 552px;
            margin-right: 0px;
        }
        .style61
        {
            font-size: xx-large;
            height: 52px;
            width: 289px;
        }
        .style62
        {
            width: 10px;
            height: 52px;
        }
        .style63
        {
            height: 52px;
            width: 241px;
            text-align: left;
            font-size: x-large;
            font-weight: 700;
        }
        .style64
        {
            color: #FFFFFF;
            width: 289px;
            height: 44px;
        }
        .style65
        {
            height: 1px;
            width: 289px;
        }
        .style70
        {
            width: 10px;
            height: 1px;
        }
        .style72
        {
            width: 10px;
            color: #FFFF66;
            height: 44px;
            font-size: large;
        }
        .style74
        {
            width: 10px;
            color: #FFFF66;
            height: 49px;
            font-size: large;
        }
        .style75
        {
            width: 289px;
            text-align: left;
            height: 49px;
            font-size: large;
            color: #FFFFFF;
        }
        .style80
        {
            width: 10px;
            color: #FFFFFF;
            font-size: large;
            height: 1px;
        }
        .style81
        {
            width: 289px;
            text-align: left;
            font-size: large;
            font-weight: 700;
            height: 1px;
        }
        .style85
        {
            width: 3px;
        }
        .style86
        {
            width: 289px;
            text-align: left;
            height: 1px;
        }
        .style90
        {
            width: 289px;
            text-align: left;
            font-size: large;
            font-weight: 700;
            color: #FFFFFF;
            height: 1px;
        }
        .style95
        {
            color: #000000;
            height: 37px;
            font-size: large;
        }
        .style96
        {
            width: 289px;
            text-align: left;
            font-size: large;
            font-weight: 700;
            height: 37px;
            color: #FFFFFF;
        }
        .style99
        {
            height: 2px;
            width: 241px;
        }
        .style100
        {
            width: 10px;
            color: #000000;
            height: 1px;
            font-size: large;
        }
        .style101
        {
            width: 10px;
            color: #000000;
            height: 2px;
            font-size: large;
        }
        .style102
        {
            width: 289px;
            text-align: left;
            font-size: large;
            font-weight: 700;
            color: #FFFFFF;
            height: 2px;
        }
        .style105
        {
            height: 2px;
            width: 241px;
            text-align: center;
        }
        .style109
        {
            color: #FFFF66;
            height: 50px;
            font-size: large;
        }
        .style111
        {
            height: 50px;
            width: 241px;
            text-align: justify;
            font-weight: 700;
        }
        .style113
        {
            width: 289px;
            text-align: left;
            font-size: large;
            font-weight: 700;
            height: 50px;
            color: #FFFFFF;
        }
        .style114
        {
            width: 10px;
            color: #FFFF66;
            height: 50px;
            font-size: large;
        }
        .style115
        {
            height: 50px;
            width: 241px;
            text-align: justify;
        }
        .style116
        {
            width: 1311px;
            height: 27px;
        }
        .style117
        {
            margin-left: 585px;
        }
        .style118
        {
            height: 19px;
            width: 264px;
        }
        .style132
        {
            width: 394px;
        }
        .style135
        {
            width: 233px;
            text-align: center;
            height: 41px;
            color: #FFFF00;
        }
        .style136
        {
            width: 394px;
            height: 41px;
        }
        .style137
        {
            color: #FFFFFF;
        }
        .style138
        {
            width: 233px;
            text-align: center;
            color: #FFFF00;
        }
        .style139
        {
            width: 1127px;
            height: 27px;
            text-align: left;
        }
        .style140
        {
            height: 2px;
            width: 241px;
            text-align: center;
            font-weight: 700;
            background-color: #3333CC;
        }
        .style141
        {
            color: #000000;
            height: 2px;
            font-size: large;
            background-color: #3333CC;
        }
        .style142
        {
            color: #FFFFFF;
            height: 37px;
            font-size: large;
            text-align: center;
        }
        .style143
        {
            font-weight: bold;
        }
        .moadalBackground
        {
            background-color:Black;
            filter:alpha(opacity=90) ! important;
            opacity:0.6 !important;
            z-index:20;
           
        }
        .modalpopup
        {
            padding:20px 0px 24px 10px;
            position:relative;
            width:450px;
            height:66px;
            background-color:White;
            border:1px solid black;
        }
        .style144
        {
            width: 99%;
            height: 96px;
        }
        .style145
        {
            padding: 20px 0px 24px 10px;
            position: relative;
            width: 516px;
            height: 117px;
            background-color: White;
            border: 1px solid black;
            left: 0px;
            top: 0px;
        }
        .style147
        {
            text-align: center;
            color: #FFFF00;
        }
        .style148
        {
            text-align: center;
        }
        .style150
        {
            width: 230px;
        }
        .style153
        {
            font-size: large;
            color: #FF0000;
        }
        .style154
        {
            color: #FF0000;
        }
        .style160
        {
            height: 1px;
            width: 241px;
        }
        .style162
        {
            height: 37px;
            width: 241px;
            text-align: center;
            font-weight: 700;
        }
        .style163
        {
            text-align: justify;
            width: 241px;
        }
        .style164
        {
            height: 37px;
            width: 241px;
            text-align: justify;
            font-weight: 700;
        }
        .style166
        {
            text-align: center;
            width: 40px;
        }
        .style168
        {
            text-align: right;
            width: 230px;
        }
        .style169
        {
            width: 40px;
        }
        .style170
        {
            color: #FFFF66;
        }
        .style173
        {
            padding: 20px 0px 24px 10px;
            position: relative;
            width: 705px;
            height: 331px;
            background-color: White;
            border: 1px solid black;
            left: 0px;
            top: 0px;
        }
        .style171
        {
            width: 99%;
            height: 355px;
        }
        .style179
        {
            text-align: center;
            font-size: xx-large;
            color: #FFFF00;
            text-decoration: underline;
            height: 43px;
        }
        .style184
        {
            text-align: right;
            color: #FFFFFF;
            width: 326px;
            height: 53px;
        }
        .style185
        {
            height: 53px;
            text-align: left;
        }
        .style186
        {
            width: 326px;
            text-align: left;
        }
        .style187
        {
            text-align: right;
            color: #FFFFFF;
            width: 326px;
        }
        .style188
        {
            text-align: left;
        }
        .style189
        {
            color: #FFFF00;
        }
        .style190
        {
            text-align: left;
            color: #FFFFFF;
            height: 53px;
        }
        .style191
        {
            text-align: center;
            color: #FFFFFF;
            height: 53px;
        }
        .style192
        {
            color: #FFFF66;
            height: 37px;
            font-size: large;
        }
        </style>
</head>
<body background="Images/decent3.png" style="height: 1135px; width: 1009px;">
 <table>    <tr>
                <td class="style5">
                  <marquee style="margin-left: 265px; color: #FFFFFF;">YOUR FEEDBACK STATEMENTS ARE KEPT CONFIDENTIALLY FEEL FREE TO DESCRIBE</marquee></td>
            </tr></table>
 
    <form id="form1" runat="server">
    <table>    <tr>
                <td class="style116">
                    <asp:Panel ID="Panel2" runat="server" BackColor="#FF6699" Height="191px" 
                        BackImageUrl="~/Images/decent4.jpg" CssClass="style117" Width="266px" 
                        Visible="False">
                        <table class="style118">
                            <tr>
                                <td class="style135">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REGNO :</td>
                                <td class="style136">
                                    <asp:Label ID="reglbl" runat="server" CssClass="style137" Font-Bold="True" 
                                        ForeColor="White"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style138">
                                    &nbsp;&nbsp;&nbsp;&nbsp; COURSE :&nbsp;</td>
                                <td class="style132">
                                    <asp:Label ID="crslbl" runat="server" CssClass="style137"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style138">
                                    SEMESTER :</td>
                                <td class="style132">
                                    <asp:Label ID="semlbl" runat="server" CssClass="style137"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style138">
                                    &nbsp;&nbsp; TEACHER :</td>
                                <td class="style132">
                                    <asp:Label ID="teclbl" runat="server" CssClass="style137"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style138">
                                    &nbsp;&nbsp;&nbsp; SUBJECT :</td>
                                <td class="style132">
                                    <asp:Label ID="sublbl" runat="server" CssClass="style137"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr></table>
<table>    <tr>
                <td class="style139">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                        class="style137"><strong>Stdreg</strong></span><strong>&nbsp;:
                    <asp:Label ID="reg" runat="server" CssClass="style153"></asp:Label>
                    &nbsp; </strong><span class="style137">Teacher</span><strong> :
                    </strong>
                    <asp:Label ID="tec" runat="server" CssClass="style154"></asp:Label>
                </td>
            </tr></table>
 
    <asp:Panel ID="Panel1" runat="server" BackColor="#66CCFF" 
        BackImageUrl="~/Images/decent4.jpg" Height="920px" style="margin-left: 403px; text-align: center;" 
        Width="596px">
        <table class="style54">
            <tr>
                <td class="style62">
                </td>
                <td class="style61">
                    <strong style="color: #800000">Questions*</strong></td>
                <td bgcolor="#3333CC" class="style85" rowspan="26">
                    &nbsp;</td>
                <td class="style63">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5&nbsp;&nbsp;&nbsp; &nbsp;4&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;3&nbsp;&nbsp; &nbsp;&nbsp; 2&nbsp;&nbsp;&nbsp;&nbsp; 1</td>
            </tr>
            <tr>
                <td bgcolor="#3333CC" class="style70">
                </td>
                <td bgcolor="#3333CC" class="style65" style="text-align: left;">
                </td>
                <td bgcolor="#3333CC" class="style160">
                </td>
            </tr>
            <tr>
                <td class="style72">
                    1)</td>
                <td class="style64" 
                    style="text-align: left; font-weight: 700; font-size: large;">
                    <asp:Label ID="ltxtl" runat="server"></asp:Label>
                </td>
                <td class="style163">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="a1" runat="server" GroupName="a1" 
                        oncheckedchanged="a1_CheckedChanged" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="a2" runat="server" GroupName="a1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="a3" runat="server" 
                        oncheckedchanged="RadioButton3_CheckedChanged" GroupName="a1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="a4" runat="server" GroupName="a1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="a5" runat="server" GroupName="a1" />
                </td>
            </tr>
            <tr>
                <td class="style70">
                </td>
                <td class="style86" bgcolor="#3333CC">
                </td>
                <td bgcolor="#3333CC" class="style160">
                </td>
            </tr>
            <tr>
                <td class="style74">
                    2)</td>
                <td class="style75">
                    <strong>
                    <asp:Label ID="ltxt2" runat="server"></asp:Label>
                    </strong></td>
                <td class="style163">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="b1" runat="server" GroupName="b1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="b2" runat="server" GroupName="b1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="b3" runat="server" GroupName="b1" 
                        oncheckedchanged="RadioButton8_CheckedChanged" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="b4" runat="server" GroupName="b1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="b5" runat="server" GroupName="b1" />
                </td>
            </tr>
            <tr>
                <td class="style70">
                </td>
                <td class="style86" bgcolor="#3333CC">
                </td>
                <td bgcolor="#3333CC" class="style160">
                </td>
            </tr>
            <tr>
                <td class="style109">
                    3)</td>
                <td class="style113">
                    <asp:Label ID="ltxt3" runat="server"></asp:Label>
                </td>
                <td class="style111">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="c1" runat="server" GroupName="c1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="c2" runat="server" GroupName="c1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="c3" runat="server" GroupName="c1" 
                        oncheckedchanged="RadioButton8_CheckedChanged" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="c4" runat="server" GroupName="c1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="c5" runat="server" GroupName="c1" />
                </td>
            </tr>
            <tr>
                <td class="style80">
                </td>
                <td class="style81" bgcolor="#3333CC">
                </td>
                <td bgcolor="#3333CC" class="style160">
                </td>
            </tr>
            <tr>
                <td class="style114">
                    4)</td>
                <td class="style113">
                    <asp:Label ID="ltxt4" runat="server"></asp:Label>
                </td>
                <td class="style115">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="d1" runat="server" GroupName="d1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="d2" runat="server" GroupName="d1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="d3" runat="server" 
                        oncheckedchanged="RadioButton8_CheckedChanged" GroupName="d1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="d4" runat="server" GroupName="d1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="d5" runat="server" GroupName="d1" />
                </td>
            </tr>
            <tr>
                <td class="style80">
                </td>
                <td class="style90" bgcolor="#3333CC">
                </td>
                <td bgcolor="#3333CC" class="style160">
                </td>
            </tr>
            <tr>
                <td class="style192">
                    5)</td>
                <td class="style96">
                    <asp:Label ID="ltxt5" runat="server"></asp:Label>
                </td>
                <td class="style164">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="e1" runat="server" GroupName="e1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="e2" runat="server" GroupName="e1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="e3" runat="server" 
                        oncheckedchanged="RadioButton8_CheckedChanged" GroupName="e1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="e4" runat="server" GroupName="e1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="e5" runat="server" GroupName="e1" />
                </td>
            </tr>
            <tr>
                <td class="style100">
                </td>
                <td bgcolor="#3333CC" class="style90">
                </td>
                <td bgcolor="#3333CC" class="style160">
                </td>
            </tr>
            <tr>
                <td class="style192">
                    6)</td>
                <td class="style96">
                    DOSE TEACHER TREAT EQUALLY TO EVERY STUDENT IN THE CLASS ?</td>
                <td class="style164">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="f1" runat="server" GroupName="f1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="f2" runat="server" GroupName="f1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="f3" runat="server" GroupName="f1" 
                        oncheckedchanged="RadioButton8_CheckedChanged" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="f4" runat="server" GroupName="f1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="f5" runat="server" GroupName="f1" />
                </td>
            </tr>
            <tr>
                <td class="style100">
                </td>
                <td bgcolor="#3333CC" class="style90">
                </td>
                <td bgcolor="#3333CC" class="style160">
                </td>
            </tr>
            <tr>
                <td class="style192">
                    7)</td>
                <td class="style96">
                    <strong>DOSE ALL CONCEPTS ARE CLEAR?</strong></td>
                <td class="style164">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="g1" runat="server" GroupName="g1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="g2" runat="server" GroupName="g1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="g3" runat="server" 
                        oncheckedchanged="RadioButton8_CheckedChanged"  GroupName="g1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="g4" runat="server" GroupName="g1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="g5" runat="server" GroupName="g1" />
                </td>
            </tr>
            <tr>
                <td class="style100">
                </td>
                <td bgcolor="#3333CC" class="style90">
                </td>
                <td bgcolor="#3333CC" class="style160">
                </td>
            </tr>
            <tr>
                <td class="style192">
                    8)</td>
                <td class="style96">
                    HOW WELL WAS THE BEHAIVOUR OF THE TEACHER IN THE CLASS ?</td>
                <td class="style164">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="h1" runat="server" GroupName="h1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="h2" runat="server" GroupName="h1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="h3" runat="server" GroupName="h1" 
                        oncheckedchanged="RadioButton8_CheckedChanged" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="h4" runat="server" GroupName="h1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="h5" runat="server"  GroupName="h1" />
                </td>
            </tr>
            <tr>
                <td class="style101">
                </td>
                <td bgcolor="#3333CC" class="style102">
                </td>
                <td bgcolor="#3333CC" class="style99">
                </td>
            </tr>
            <tr>
                <td class="style192">
                    9)</td>
                <td class="style96">
                    TEACHER ENCOURAGE YOU TO&nbsp; PARTICIPATE IN EXTRA CURRICULAR ACTIVITIES ?</td>
                <td class="style164">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="i1" runat="server" GroupName="i1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="i2" runat="server" GroupName="i1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="i3" runat="server" 
                        oncheckedchanged="RadioButton8_CheckedChanged" GroupName="i1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="i4" runat="server" GroupName="i1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="i5" runat="server" GroupName="i1" />
                </td>
            </tr>
            <tr>
                <td class="style100">
                </td>
                <td bgcolor="#3333CC" class="style90">
                </td>
                <td bgcolor="#3333CC" class="style160">
                </td>
            </tr>
            <tr>
                <td class="style192">
                    10)</td>
                <td class="style96">
                    HOW WELL IS THE TEACHER IS ABLE TO COMMUNICATE ?</td>
                <td class="style164">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="j1" runat="server" GroupName="j1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="j2" runat="server" GroupName="j1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="j3" runat="server" 
                        oncheckedchanged="RadioButton8_CheckedChanged"  GroupName="j1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="j4" runat="server" GroupName="j1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="j5" runat="server" GroupName="j1" />
                </td>
            </tr>
            <tr>
                <td class="style101">
                </td>
                <td bgcolor="#3333CC" class="style102">
                </td>
                <td bgcolor="#3333CC" class="style105">
                </td>
            </tr>
            <tr>
                <td class="style95">
                    <span class="style170">11)</span></td>
                <td class="style96">
                    &nbsp;&nbsp; ENTER YOUR SUGGESTION....</td>
                <td class="style162">
                    <asp:TextBox ID="sugg" runat="server" style="margin-left: 0px" 
                        TextMode="MultiLine" Width="248px" ontextchanged="sugg_TextChanged1" autocomplete="off"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td bgcolor="#CC0099" class="style95" colspan="2">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td bgcolor="#CC0099" class="style162">
                    <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Bold="True" 
                        ForeColor="White" Height="28px" Text="CLICK TO SUBMIT" Width="177px" 
                        onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="style141" colspan="2">
                </td>
                <td class="style140">
                </td>
            </tr>
            <tr>
                <td bgcolor="#FF9900" class="style142" colspan="2">
                    <strong>CLICK TO DESCRIBE NEXT&nbsp; TEACHER :</strong></td>
                <td bgcolor="#FF9900" class="style162">
                    <strong>
                    <asp:Button ID="Button2" runat="server" BackColor="Black" CssClass="style143" 
                        Font-Size="Medium" ForeColor="White" Height="28px" Text="NEXT" 
                        Width="177px" onclick="Button2_Click" />
                    </strong>
                </td>
            </tr>
        </table>
        
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="style145" BackColor="Blue">
        <table class="style144">
            <tr>
                <td class="style147" colspan="3">
                    <strong>SELECT&nbsp;<span class="style154">&#39;</span>NEXT TEACHER<span 
                        class="style154">&#39;</span><span class="style170">,</span><span 
                        class="style154">&#39;</span>VIEW YOUR FEEDBACK<span class="style154">&#39;</span> 
                    OR<span class="style154"> &#39;</span>EXIT<span class="style154">&#39;</span></strong></td>
            </tr>
            <tr>
                <td class="style168">
                    &nbsp;</td>
                <td class="style169">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style168">
                    &nbsp;<span class="style137">TEACHER</span> :</td>
                <td class="style169">
                    <asp:DropDownList ID="selectdn" runat="server" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style150">
                    &nbsp;</td>
                <td class="style169">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style168">
                    <asp:Button ID="Button4" runat="server" BackColor="Red" ForeColor="White" 
                        onclick="Button4_Click" Text="LOGOUT" Width="107px" Height="36px" />
                </td>
                <td class="style166">
                    <asp:Button ID="Button3" runat="server" BackColor="#006600" ForeColor="White" 
                        onclick="Page_Load" Text="CLICK TO GIVE FEEDBACK" Width="183px" 
                        Height="36px" />
                </td>
                <td class="style148">
                    <asp:Button ID="Button5" runat="server" BackColor="#660066" ForeColor="White" 
                        Height="36px" onclick="Button5_Click" Text="VIEW FEEDBACK" Width="179px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <ajaxToolkit:ModalPopupExtender ID="Panel3_ModalPopupExtender" runat="server" 
        TargetControlID="Button2" BehaviorID="Panel3_ModalPopupExtender" 
        BackgroundCssClass="moadalBackground" PopupControlID="panel3">
    </ajaxToolkit:ModalPopupExtender>
    <asp:Panel ID="Panel4" runat="server">
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server" CssClass="style173">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="style148">
                    <table class="style171" bgcolor="#6600CC">
                        <tr>
                            <td class="style179" colspan="2">
                                <strong>FEEDBACK VIEW</strong></td>
                        </tr>
                        <tr>
                            <td class="style186">
                                <strong>
                                <asp:Button ID="Button7" runat="server" BackColor="#FF3300" CssClass="style143" 
                                    ForeColor="White" onclick="Button7_Click1" Text="BACK" />
                                </strong></td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style187">
                                <strong>REGNO :</strong></td>
                            <td class="style188">
                                <asp:Label ID="vreg" runat="server" CssClass="style189" ForeColor="Yellow"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style187">
                                <strong>COURSE :</strong></td>
                            <td class="style188">
                                <asp:Label ID="vcrs" runat="server" CssClass="style189"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style187">
                                <strong>SEMESTER :</strong></td>
                            <td class="style188">
                                <asp:Label ID="vsem" runat="server" CssClass="style189"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style184">
                                <strong>SELECT TEACHER :</strong></td>
                            <td class="style185">
                                <asp:DropDownList ID="vdn" runat="server" AutoPostBack="True" 
                                    onselectedindexchanged="vdn_SelectedIndexChanged" style="height: 22px">
                                </asp:DropDownList>
                                <span class="style189">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="CHECK" 
                                    BackColor="#339966" Font-Bold="True" ForeColor="White" Height="29px" 
                                    Width="72px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style191" colspan="2">
                                <strong>YOUR RATINGS :<asp:Label ID="rt1" runat="server"></asp:Label>
                                ,<asp:Label ID="rt2" runat="server"></asp:Label>
                                ,<asp:Label ID="rt3" runat="server"></asp:Label>
                                ,<asp:Label ID="rt4" runat="server"></asp:Label>
                                ,<asp:Label ID="rt5" runat="server"></asp:Label>
                                ,<asp:Label ID="rt6" runat="server"></asp:Label>
                                ,<asp:Label ID="rt7" runat="server"></asp:Label>
                                ,<asp:Label ID="rt8" runat="server"></asp:Label>
                                ,<asp:Label ID="rt9" runat="server"></asp:Label>
                                ,<asp:Label ID="rt10" runat="server"></asp:Label>
                                .</strong></td>
                        </tr>
                        <tr>
                            <td class="style190" colspan="2">
                                &nbsp;</td>
                        </tr>
                    </table>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </asp:Panel>
 
    <ajaxToolkit:ModalPopupExtender ID="Panel5_ModalPopupExtender" runat="server" 
        TargetControlID="Button5" BackgroundCssClass="  moadalBackground" 
        PopupControlID="Panel5">
    </ajaxToolkit:ModalPopupExtender>
    </form>

</body>
</html>
