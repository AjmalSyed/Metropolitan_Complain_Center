<%-- 
    Document   : register
    Created on : Mar 1, 2016, 11:39:36 PM
    Author     : Abdul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>

<head>
    

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Metropolitan City Complain System</title>

<link href="../css training/my website/style.css" rel="stylesheet" type="text/css">

 <script src="script.js" type="text/javascript"></script>

<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css">

</head>

<body>

<html>
    <head>
       <title>css html layout</title>
	
	
	<link rel="stylesheet" href="style.css">
	
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
    <form method="post" name="register" onsubmit="return ValidateRegistration()" action="process.jsp">
  <table align="center" border="5" cellspacing="3" cellpadding="3" width="80%">
	
	<tr>
	<td>
	<h2>
	ENTER YOUR NAME:<input type="text" name="name" SIZE="100">
	</h2>
	</td>
	</tr>
	<tr>
	<td>
	<h2>
	SELECT YOUR ZONE:
        <select id = "chose" name="dis" onchange="getVal()">
            <option value="East">
		East
		</option>
                <option value ="West" name="west" onclick="AsignUC(this.value)">
		West
		</option>
		<option value ="North" name="north" onclick="AsignUC(this.value)">
		North
		</option>
		<option value ="South" name="south" onclick="AsignUC(this.value)">
		South
		</option>
		<option value ="Central" name="central" onclick="AsignUC(this.value)">
		Central
		</option>
	</select>
	</h2>
	</td>
	<tr>
		<td>
		<h2>
			SELECT YOUR UC NUMBER:
			<select id = "choseUC" name ="uc">
		<option>
		UC 1
		</option>
		<option>
		UC 2
		</option>
		<option>
		UC 3
		</option>
		<option>
		UC 4
		</option>
		<option>
		UC 5
		</option>
	</select>
		</h2>
		</td>
	</tr>
	<tr>
	<td>
	<h2>
	ENTER YOUR RESSIENDITAL ADDRESS:<input type="text" name="ra" SIZE="100">
	</h2>
	</td>
	</tr>
	<tr>
	<td>
	<h2>
	ENTER YOUR CNIC NUMBER:<input type="text" name="cnic" SIZE="20">
	</h2>
	</td>
	</tr>
	<tr>
	<td>
	<h2>ENTER YOUR EMAIL:<input type="email" name="email" size="100"></h2>
	</td>
	</tr>
	<tr>
		<td>
		<h2>Upload your Picture:</h2><input type="file" name="picture">
		</td>
	</tr>
	<tr>
		<td ALIGN="CENTER">
		<input type="submit" value="REGISTER" SIZE="200">
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