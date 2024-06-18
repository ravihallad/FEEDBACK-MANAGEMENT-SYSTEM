<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="FEEBACK_SYSTEM.Homepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body {margin: 0;}

ul.topnav {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color:Black;
}

ul.topnav li {float: left;}

ul.topnav li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

ul.topnav li a:hover:not(.active) {background-color:Green}

ul.topnav li a.active {background-color:Red}

ul.topnav li.right {float: right;}

@media screen and (max-width: 600px) {
  ul.topnav li.right, 
  ul.topnav li {float: none;}
 
  

  
  
}
    .style1
    {
        width: 100%;
        height: 144px;
    }
    .style4
    {
        text-align: right;
    }
    .style9
    {
        width: 1305px;
    }
    .style12
    {
        height: 64px;
        width: 1271px;
    }
    .style13
    {
        margin-left: 0px;
    }
    .style16
    {
        width: 1106px;
        text-align: center;
        height: 136px;
    }
    .style17
    {
        width: 201px;
        height: 136px;
    }
    .style18
    {
        width: 124%;
        height: 129px;
        margin-top: 0px;
    }
    .style20
    {
        font-size: x-large;
    }
    .style6
    {
        color: #FF0000;
        font-size: medium;
    }
    .style23
    {
        text-align: left;
    }
    .style25
    {
        width: 1453px;
        height: 22px;
    }
    .style26
    {
        text-align: center;
        height: 22px;
    }
    .style27
    {
        text-align: right;
        height: 136px;
    }
    .style28
    {
        color: #00CC00;
    }
    .style22
    {
        margin-left: 0px;
        width: 193px;
        margin-top: 0px;
    }
    .style30
    {
        width: 100%;
        height: 16px;
        margin-left: 0px;
        margin-right: 0px;
    }
    
   .body .img1
    {
        background-repeat:no-repeat;
        }
    
     @media screen and (max-width: 600px){
     
   
   }
    
    .style31
    {
        height: 193px;
    }
    
    .style33
    {
        width: 1453px;
        height: 23px;
    }
    .style34
    {
        text-align: right;
        height: 23px;
    }
    
    .style35
    {
        width: 1453px;
    }
    
</style>
</head>
<body class="img1"style="height: 500px; background-repeat: no-repeat;" 
    background="Images/clg.jpg" >
  
    <form id="form1" runat="server" class="style31">
    <table class="style12">
        <tr>
            <td class="style9">
                <table class="style18">
               
                    <tr>
                        <td class="style17">
                            <asp:Image ID="Image2" runat="server" Height="140px" 
                                ImageUrl="~/Images/Rani_Channamma_University_logo.jpg" Width="203px" />
                        </td>
                        <td class="style16" bgcolor="#D56011">
                            B.L.D.E ASSOICATIONS<strong><br />
                            <span  class="style20">BLDEA's A.S.Patil College of Commerce(Autonomous) Vijayapur. </span>
                            <br class="style20" />
                            <span class="style20">586101<br />
                            </span> </strong>NAAC RE-ACCREDITED WITH &#39;A&#39; GRADE,CGPA 3.12</td>
                        <td class="style27">
                            <asp:Image ID="Image1" runat="server" CssClass="style13" align="right" Height="144px" 
                                ImageUrl="~/Images/logo.jpg" Width="207px" />
                        </td>
                    </tr>
                    </table>
          
            </td>
        </tr>
        </table>
<ul class="topnav">
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="adminlogin.aspx">ADMIN</a></li>
  <li><a href="studentlogin.aspx">STUDENT</a></li>
    <li><a href="staff.aspx">STAFF</a></li>
  <li class="right"><a href="aboutus.aspx">About US</a></li>
</ul>
<div class="img">


</div>
<div style="height: auto">

    <table class="style1">
        <tr>
            <td class="style33">
                &nbsp;</td>
            <td class="style34" bgcolor="Yellow">
                </td>
        </tr>
        <tr>
            <td class="style25">
                </td>
            <td class="style26" bgcolor="Black">
                <span class="style28">&nbsp;</span><span class="style6"><strong>NOTIFICATION AND EVENTS</strong></span></td>
        </tr>
        <tr>
            <td class="style35">
                &nbsp;</td>
            <td class="style23">
                <table class="style30" 
                    bgcolor="Lime">
                    <tr><td class="style4" >
                        
                <marquee direction="up" class="style22" style="height:300px">
                <asp:Label ID="lbl1" runat="server" Text="Label" Font-Size="X-Large" ForeColor="#000080" Font-Bold="True"></asp:Label><br />

                 <asp:Label ID="lbl2" runat="server" Text="Label" Font-Size="Medium" ForeColor=" #FFFFFF" Font-Bold="True"></asp:Label><br />

                  <asp:Label ID="lbl3" runat="server" Text="Label" Font-Size="X-Large" ForeColor="#000080" Font-Bold="True"></asp:Label><br />

                   <asp:Label ID="lbl4" runat="server" Text="Label" Font-Size="Medium" ForeColor=" #FFFFFF" Font-Bold="True"></asp:Label><br />

                    <asp:Label ID="lbl5" runat="server" Text="Label" Font-Size="X-Large" ForeColor="#000080" Font-Bold="True"></asp:Label><br />

                    <asp:Label ID="lbl6" runat="server" Text="Label" Font-Size="Medium" ForeColor="#FFFFFF" Font-Bold="True"></asp:Label><br /></marquee></td>
                    </tr>
                    <tr>
                        <td>
                             <li><a href="notification.aspx">ADD NOTIFICATION</a></li>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style35">
                </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>

</div>
    </form>
</body>
</html>
