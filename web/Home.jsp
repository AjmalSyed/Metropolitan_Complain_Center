<%-- 
    Document   : Home
    Created on : Mar 1, 2016, 11:26:17 PM
    Author     : Abdul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html> 

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Metropolitan City Complain System</title>

<link href="../css training/my website/style.css" rel="stylesheet" type="text/css">

<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>

<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css">

</head>

<body>

<html>
    <head>
       <title>css html layout</title>
	
	
	<link rel="stylesheet" href="style.css">
        <script src="Complainscript.js" type="text/javascript"></script>
	
	</head>

<body>

<header>
<img src="C:\Users\Moiz ur Rehman\Desktop\my website\pic2.jpg" height="200" width="100%">
</header>

<marquee scrollamount="20" onmouseover="this.stop();" onmouseout="this.start();">FOR REGISTERATION CLICK ON REGISTERATION OPTION <BR>IF YOU HAVE A COMPLAIN CLICK ON COMPLAIN FORM</marquee>
<nav>
  <table align="center" border="5" cellspacing="3" cellpadding="3" width="80%">
  <tr>
	<ul id="MenuBar1" class="MenuBarHorizontal" align="center">
	<td>
    <a href="register.jsp">REGISTRATION</a>
	</td>
	<td>
    <a href="Home.jsp" class="MenuBarItemSubmenu">COMPLAIN</a>
	</td>
	<td>
    <a href="registration.jsp">INFORMATION</a>
	</td>
	<td>
    <a href="img.html" target="_blank">IMAGES</a>
	</td>
  
  </tr>
  </table>
    <form method="post" name ="complain" onsubmit="return  ValidateNIC()" action="process.jsp">
  <table align="center" border="5" cellspacing="3" cellpadding="3" width="80%">
	<tr>
	<td>
	<h2>
	ENTER YOUR CNIC NUMBER:<input type="text" name="nic" SIZE="20">
        <input type="submit" name="check" SIZE="20" value="check">
        <%
            if(session.getAttribute("message")==null)
            {
              out.print("");
            }
            else
            {
            out.print(session.getAttribute("message"));
            session.invalidate(); 
            }
 
        %>
	</h2>
	</td>
	</tr>
	<tr>
		<td>
		<h1>Enter Your Complain</h1>
		<textarea name="textarea" cols="100" rows="100">
		</textarea>
		</td>
	</tr>
	<tr>
		<td ALIGN="CENTER">
		<input type="submit" value="SEND COMPLAIN" SIZE="200">
		</td>
	</tr>
	
	<tr>
		<td ALIGN="CENTER">
		<input type="reset" value="RESET" SIZE="200">
		</td>
	</tr>
  </table>
  </form>
</nav>
</body>
</html>