
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    
    <head>
       
        <title>Metropolitan</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="styleOfIndex.css" rel="stylesheet">
        <script>
            function validateform()
        {
        var email = document.forms["login"]["email"].value;
        var password = document.forms["login"]["password"].value;
       
        
        if(email==="")
        {
         alert("Email must be filled out");
        return  false;
        }
        else if (password==="")
        {
            
             alert("password must be filled out");
             return  false;
        }
        else 
        {
            
            alert(email+""+password);
            return true;
            
        }
        
        }
        // for registration login
        function Register_login()
        {
         
            
        }
        </script>
    </head>
      
    <body>
    
        <%--  <h1><MARQUEE behavior="scroll" direction="left" width="100%" scrollamount="20">Metropolitan Complain Center</marquee></h1> --%>
        <form method="POST" action="Administrator.jsp">
        <div class="admintxt">
           
                For Administration Used Only
         </div>
            <div class="admincode">
               <input type="password" name="passcode" placeholder="Enter passcode">
                </div>
                 <div class="adminbutton">
                   <input type="submit" name="admin" value="Go">
                </div>
            </form>
            
        
        <div class="form-container">  
            <form method="POST" name="login" onsubmit="return  validateform()" action="MovingState_In_Index.jsp">
                <div class="email">
                     <label>Email</label>
                     <input type="email" placeholder="email" name="email">
                </div>
                <div class="password">
                     <label>Password</label>
                     <input type="password" placeholder="password" name="password">
                </div>
                <div><input type="submit" name="Home" value="Login"></div>
                <div><input id="loginregis" type="submit" name="Regis" value="Registration"></div>
                <div><input id="forget" type="button" value="Forget Password"></div>

               </form>
            </div>
    </body>
</html>

