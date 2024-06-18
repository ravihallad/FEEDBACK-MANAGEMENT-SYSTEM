<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="FEEBACK_SYSTEM.demo" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            margin-left: 409px;
            margin-right: 0px;
        }
        .style78
        {
            width: 103%;
            height: 718px;
        }
        .style81
        {
            width: 5px;
            color: #FFFFFF;
        }
        .style86
        {
            width: 26px;
            text-align: center;
            color: #FFFF00;
        }
        .style87
        {
            width: 26px;
            color: #FFFFFF;
        }
        .style90
        {
            width: 381px;
            color: #FFFFFF;
            text-align: center;
        }
        .style91
        {
            color: #FF0000;
            font-size: x-large;
        }
        .style93
        {
            width: 26px;
            color: #FF0000;
            text-align: center;
        }
        .style97
        {
            width: 26px;
            text-align: center;
            height: 2px;
        }
        .style118
        {
            width: 11px;
            color: #FFFFFF;
        }
        .style119
        {
            width: 73px;
            color: #FFFFFF;
        }
        .style120
        {
            width: 73px;
        }
        .style121
        {
            height: 2px;
            width: 73px;
        }
        .style122
        {
            color: #FFFFFF;
            height: 2px;
        }
        .style124
        {
            width: 73px;
            color: #FFFFFF;
            height: 2px;
        }
        .style125
        {
            width: 26px;
            text-align: center;
            color: #FFFF00;
            height: 2px;
        }
        .style126
        {
            width: 444px;
            color: #FFFFFF;
            height: 2px;
        }
        .style128
        {
            text-align: center;
        }
        .style127
        {
            width: 122%;
        }
        .style131
        {
            width: 26px;
            color: #FF0000;
            text-align: center;
            height: 30px;
        }
        .style132
        {
            width: 73px;
            color: #FFFFFF;
            height: 30px;
        }
        .style140
        {
            width: 644px;
            color: #FFFFFF;
            text-align: left;
            height: 37px;
        }
        .style88
        {
            color: #FFFFFF;
        }
        .style142
        {
            font-size: large;
        }
        .style151
        {
            width: 26px;
            text-align: center;
            color: #FFFF00;
            height: 30px;
        }
        .style152
        {
            width: 444px;
            color: #FFFFFF;
            height: 30px;
        }
        .style153
        {
            width: 73px;
            height: 30px;
        }
        .style159
        {
            width: 26px;
            text-align: center;
            color: #FFFF00;
            height: 29px;
        }
        .style160
        {
            width: 444px;
            color: #FFFFFF;
            height: 29px;
        }
        .style161
        {
            width: 73px;
            height: 29px;
        }
        .style162
        {
            width: 26px;
            text-align: center;
            color: #FFFF00;
            height: 32px;
        }
        .style163
        {
            width: 444px;
            color: #FFFFFF;
            height: 32px;
        }
        .style164
        {
            width: 73px;
            height: 32px;
        }
        .style165
        {
            width: 26px;
            text-align: center;
            color: #FFFF00;
            height: 31px;
        }
        .style166
        {
            width: 444px;
            color: #FFFFFF;
            height: 31px;
        }
        .style167
        {
            width: 73px;
            height: 31px;
        }
        .style168
        {
            width: 73px;
            color: #FFFFFF;
            text-align: center;
        }
        .style173
        {
            width: 644px;
            color: #FFFFFF;
            text-align: left;
        }
        .style176
        {
            width: 444px;
            color: #FFFFFF;
            text-align: left;
        }
        .style177
        {
            width: 444px;
            height: 2px;
        }
        .style178
        {
            width: 444px;
            color: #FFFFFF;
        }
        .style180
        {
            width: 644px;
            color: #FFFFFF;
            text-align: left;
            height: 43px;
        }
    </style>
</head>
<body background="Images/decent.png" style="width: 1013px; height: 732px">
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button2" runat="server" BackColor="Red" 
            CausesValidation="False" ForeColor="White" onclick="Button2_Click" 
            Text="BACK" />
    
    &nbsp;
    
    </div>
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Images/decent4.jpg" 
        CssClass="style1" Height="720px" Width="535px">
        <table class="style78">
            <tr>
                <td class="style87">
                    &nbsp;</td>
                <td class="style176">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style91"><strong>&nbsp; &nbsp;SELECT *</strong></span></td>
                <td bgcolor="Blue" class="style81" rowspan="27">
                    &nbsp;</td>
                <td class="style119">
                    &nbsp;</td>
                <td class="style118" rowspan="26">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style93">
                    *</td>
                <td class="style176" rowspan="3">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="style128">
                                <table class="style127">
                                    <tr>
                                        <td class="style180">
                                            <strong><span class="style142">Course</span></strong> :<asp:DropDownList ID="down1" runat="server" 
                                                AutoPostBack="True" onselectedindexchanged="down1_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                ControlToValidate="down1" Display="None" ErrorMessage="PLEASE SELECT COURSE" 
                                                ForeColor="Red"></asp:RequiredFieldValidator>
                                            <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                                                runat="server" BehaviorID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                                                TargetControlID="RequiredFieldValidator4">
                                            </ajaxToolkit:ValidatorCalloutExtender>
                                        </td>
                                        <td class="style90" rowspan="4">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style180">
                                            <strong><span class="style142">Semester</span></strong>:<asp:DropDownList ID="down2" runat="server" 
                                                AutoPostBack="True" onselectedindexchanged="down2_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                Display="None" ErrorMessage="PLEASE SELECT SEMESTER" 
                                                ControlToValidate="down2" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                                                runat="server" BehaviorID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                                                TargetControlID="RequiredFieldValidator2">
                                            </ajaxToolkit:ValidatorCalloutExtender>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style140">
                                            <strong><span class="style142">Teacher</span></strong>:<asp:DropDownList ID="down3" runat="server" 
                                                onselectedindexchanged="down3_SelectedIndexChanged" AutoPostBack="True">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                Display="None" ErrorMessage="PLEASE SELECT TEACHER" 
                                                ControlToValidate="down3" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <ajaxToolkit:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                                                runat="server" BehaviorID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                                                TargetControlID="RequiredFieldValidator3">
                                            </ajaxToolkit:ValidatorCalloutExtender>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style173">
                                            <asp:ScriptManager ID="ScriptManager2" runat="server">
                                            </asp:ScriptManager>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td class="style119">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style131">
                    *</td>
                <td class="style132">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style93">
                    *</td>
                <td class="style168">
                    out of 5</td>
            </tr>
            <tr>
                <td class="style122" bgcolor="#3333FF" colspan="2">
                    </td>
                <td class="style124" bgcolor="#3333FF">
                    </td>
            </tr>
            <tr>
                <td class="style165">
                    1)</td>
                <td class="style166">
                    How much of syllabus was covered in the class?</td>
                <td class="style167">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <div class="style128">
                                <asp:Label ID="vr1" runat="server" CssClass="style88"></asp:Label>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="style97">
                </td>
                <td bgcolor="#3333CC" class="style177">
                </td>
                <td bgcolor="#3333CC" class="style121">
                </td>
            </tr>
            <tr>
                <td class="style162">
                    2)</td>
                <td class="style163">
                    Teacher illustrate the concepts through examples and applications ?</td>
                <td class="style164">
                    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                        <ContentTemplate>
                            <div class="style128">
                                <asp:Label ID="vr2" runat="server" CssClass="style88"></asp:Label>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="style97">
                </td>
                <td bgcolor="#3333CC" class="style177">
                </td>
                <td bgcolor="#3333CC" class="style121">
                </td>
            </tr>
            <tr>
                <td class="style151">
                    3)</td>
                <td class="style152">
                    &nbsp;teacher used ICT tools such as LCD projector while teaching ?</td>
                <td class="style153">
                    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                        <ContentTemplate>
                            <div class="style128">
                                <asp:Label ID="vr3" runat="server" CssClass="style88"></asp:Label>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="style97">
                </td>
                <td bgcolor="#3333CC" class="style177">
                </td>
                <td bgcolor="#3333CC" class="style121">
                </td>
            </tr>
            <tr>
                <td class="style159">
                    4)</td>
                <td class="style160">
                    Teacher informed you about the importance &amp; opportunity of subject ?</td>
                <td class="style161">
                    <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                        <ContentTemplate>
                            <div class="style128">
                                <asp:Label ID="vr4" runat="server" CssClass="style88"></asp:Label>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="style97">
                </td>
                <td bgcolor="#3333CC" class="style177">
                </td>
                <td bgcolor="#3333CC" class="style121">
                </td>
            </tr>
            <tr>
                <td class="style86">
                    5)</td>
                <td class="style178">
                    Teacher approch for teaching can be best described as?</td>
                <td class="style120">
                    <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                        <ContentTemplate>
                            <div class="style128">
                                <asp:Label ID="vr5" runat="server" CssClass="style88"></asp:Label>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="style97">
                </td>
                <td bgcolor="#3333CC" class="style177">
                </td>
                <td bgcolor="#3333CC" class="style121">
                </td>
            </tr>
            <tr>
                <td class="style86">
                    6)</td>
                <td class="style178">
                    Dose he treat equally to every one in class ?</td>
                <td class="style120">
                    <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                        <ContentTemplate>
                            <div class="style128">
                                <asp:Label ID="vr6" runat="server" CssClass="style88"></asp:Label>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="style97">
                </td>
                <td bgcolor="#3333CC" class="style177">
                </td>
                <td bgcolor="#3333CC" class="style121">
                </td>
            </tr>
            <tr>
                <td class="style86">
                    7)</td>
                <td class="style178">
                    Dose all concepts are clear ?</td>
                <td class="style120">
                    <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                        <ContentTemplate>
                            <div class="style128">
                                <asp:Label ID="vr7" runat="server" CssClass="style88"></asp:Label>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="style97">
                </td>
                <td bgcolor="#3333CC" class="style177">
                </td>
                <td bgcolor="#3333CC" class="style121">
                </td>
            </tr>
            <tr>
                <td class="style86">
                    8)</td>
                <td class="style178">
                    How well was the behaviour of the teacher in the class ?</td>
                <td class="style120">
                    <asp:UpdatePanel ID="UpdatePanel10" runat="server">
                        <ContentTemplate>
                            <div class="style128">
                                <asp:Label ID="vr8" runat="server" CssClass="style88"></asp:Label>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="style97">
                </td>
                <td bgcolor="#3333CC" class="style177">
                </td>
                <td bgcolor="#3333CC" class="style121">
                </td>
            </tr>
            <tr>
                <td class="style86">
                    9)</td>
                <td class="style178">
                    Teacher encourage you to participate in extra curricular activities ?</td>
                <td class="style120">
                    <asp:UpdatePanel ID="UpdatePanel11" runat="server">
                        <ContentTemplate>
                            <div class="style128">
                                <asp:Label ID="vr9" runat="server" CssClass="style88"></asp:Label>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="style97">
                </td>
                <td bgcolor="#3333CC" class="style177">
                </td>
                <td bgcolor="#3333CC" class="style121">
                </td>
            </tr>
            <tr>
                <td class="style86">
                    10)</td>
                <td class="style178">
                    How well&nbsp; the teacher is able to communicate?</td>
                <td class="style120">
                    <asp:UpdatePanel ID="UpdatePanel12" runat="server">
                        <ContentTemplate>
                            <div class="style128">
                                <asp:Label ID="vr10" runat="server" CssClass="style88"></asp:Label>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            
            <tr>
                <td class="style125">
                </td>
                <td bgcolor="#3333CC" class="style126">
                </td>
                <td bgcolor="#3333CC" class="style121">
                </td>
            </tr>
            <tr>
                <td class="style86">
                    &nbsp;</td>
                <td class="style178">
                    <br />
                    <asp:Button ID="Button1" runat="server" BackColor="#33CC33" Font-Bold="True" 
                        Font-Size="Large" ForeColor="White" Height="33px" onclick="Button1_Click1" 
                        Text="CLICK HERE TO VIEW SUGGISTIONS" Width="390px" />
                </td>
                <td class="style120">
                    &nbsp;</td>
            </tr>
            
        </table>
    </asp:Panel>
    </form>
</body>
</html>
