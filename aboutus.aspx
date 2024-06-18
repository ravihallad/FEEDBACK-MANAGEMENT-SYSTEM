<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="FEEBACK_SYSTEM.aboutus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            height: 434px;
        }
        .style5
        {
            font-size: xx-large;
        }
        .style7
        {
            font-size: large;
            color: #FFFF66;
        }
        .style3
        {
            color: #FF0000;
            font-size: xx-large;
        }
        .style12
        {
            color: #000000;
            font-size: xx-large;
        }
        .style13
        {
            width: 100%;
            height: 111px;
        }
        .style14
        {
            text-align: right;
            color: #FFFF66;
        }
        .style15
        {
            color: #FFFFFF;
            font-size: xx-large;
        }
        .style16
        {
            text-align: left;
        }
        .style18
        {
            color: #66FFFF;
        }
        .style19
        {
            text-align: center;
        }
        .style20
        {
            width: 100%;
            margin-left: 0px;
        }
        .style21
        {
            height: 94px;
        }
        .style22
        {
            margin-top: 1px;
        }
        .style23
        {
            text-align: right;
        }
        .style24
        {
            width: 100%;
            height: 20px;
        }
        .style25
        {
            text-align: left;
            font-size: large;
            color: #FFFF66;
        }
    </style>
</head>
<body background="Images/decent3.png">
    <form id="form1" runat="server">
    <div>
        <div class="style1">
            
            <br />
            <table class="style24">
                <tr>
                    <td class="style25">
                        <strong>
            <asp:Button ID="Button1" runat="server" BackColor="Red" onclick="Button1_Click" 
                Text="HOME" />
                        </strong>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <span class="style7"><strong>About college<br />
            `````````````````````</strong></span><br />
            <p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(38, 38, 38); font-family: din, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" 
                class="style21">
                The<span><strong>&nbsp;</strong></span><span style="box-sizing: border-box;"><strong> BLDEA's A.S.Patil College of Commerce
                (Autonomous)</strong></span><span>&nbsp;</span>was established in the year 1910. It is a not for profit organization catering to
                 the educational needs of under priviliged children and widening educational opportunities. Promoting religious, scientific
                  and general literature is one of the important objective of the BLDE Association. The association aims to achieve this 
                  objective by establishing schools, colleges and free student hostels for poor students. BLDE Association with a rich
                   history of more than a century is dedicating for multi-literary development through its wide educational and cultural institutions network.
                    &nbsp;just 200 students in 
                the beginning, the strength has now reached over 2900.</p>
            <p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(38, 38, 38); font-family: din, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
                A. S. Patil College of Commerce has a vision to emerge as a premier autonomous institution offering commerce, management, entrepreneurship
                 and computer education with service to mankind. &nbsp;UG level and P.G.D.C.A. at PG level.&nbsp; The 
                interesting fact about the college is that the college has already celebrated 
                its silver jubilee during 1990-91 and now is moving towards its golden jubilee. 
                There are well-equipped laboratories and library with large number of books. The 
                college is giving the rank holders in academic point of view each year. About 46 
                students of the college have secured ranks at the University level till this 
                academic year 2006-07.</p>
            <table class="style13">
                <tr>
                    <td class="style16" colspan="2">
<marquee class="style18">"" Tomorrow belongs to those who prepare for it today.”   “He who opens a school door, closes a prison.” </marquee>
                    </td>
                </tr>
                <tr>
                    <td class="style23">
                        <asp:Image ID="Image2" runat="server" CssClass="style22" Height="93px" 
                            ImageUrl="~/Images/bldlogo.jpg" Width="338px" />
                    </td>
                    <td class="style14">
                        <table class="style20">
                            <tr>
                                <td>
                        contact us@bldeacollege.ac.in</td>
                            </tr>
                            <tr>
                                <td>
                                    phone no:xyz</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="style19" colspan="2">
            <strong><span class="style3">GALLERY<br />
            </span><span class="style12">`</span><span class="style15">`````````````````</span><span 
                class="style12">`</span></strong></td>
                </tr>
            </table>
            <br />
            <br class="style5" />
            </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
           
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/slider.xml" 
                Height="500px" onadcreated="AdRotator1_AdCreated2" Width="100%" 
                BorderColor="#33CC33" BorderStyle="Ridge" BorderWidth="5px" />
            <asp:Timer ID="Timer1" runat="server" Interval="1000">
            </asp:Timer>
            &nbsp;
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
