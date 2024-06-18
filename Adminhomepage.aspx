<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminhomepage.aspx.cs" Inherits="FEEBACK_SYSTEM.Adminhomepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Adminhome.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 43px;
            width: 1560px;
        }
        .style2
        {
            height: 718px;
            margin-top: 2px;
            width: 109%;
            margin-right: 0px;
        }
        .style4
        {
            width: 1447px;
            height: 756px;
            margin-right: 2px;
        }
        .style5
        {
            width: 1432px;
            height: 726px;
        }
    </style>
</head>

<body style="margin-bottom: 1px; height: 48px; width: 1571px;">
    
    <form id="form1" runat="server" class="style4">
    
<ul class="style1" style="background-color: #000000">
  <li><a href="Homepage.aspx">HOME</a></li>
  <li class="dropdown">
    <a href="javascript:void(0)">STUDENT ▼</a>
    <div class="dropdown-content">
      <a href="AddStudent.aspx">ADD STUDENT</a>
      <a href="updatestudent.aspx">UPDATE STUDENT MOBILE NUMBER</a>
       <a href="stdmsg.aspx">SEND MESSAGE TO STUDENT MOBILE NUMBER</a>
      </div>
  </li>
  <li class="dropdown">
    <a href="javascript:void(0)">STAFF ▼</a>
    <div class="dropdown-content">
      <a href="addstaff.aspx">ADD STAFF</a>
     
    </div>
  </li>
   <li><a href="addc.aspx">ADD COURSE</a></li>
   <li><a href="demo.aspx">VIEW FEEDBACK</a></li>
   
</ul>


</body>
<div class="style5">
    <img src="Images/clg.jpg" class="style2" />

</div>
    </form>

</html>
