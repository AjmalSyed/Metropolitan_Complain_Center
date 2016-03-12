
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registration</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="StyleForRegistration_Login.css" rel="stylesheet">
        <script>
            function ValidateRegistration()
        {
        var Name = document.forms["REGISTRATION"]["fullname"].value;    
        var email = document.forms["REGISTRATION"]["email"].value;
        var password = document.forms["REGISTRATION"]["Password"].value;
        var confirmpass = document.forms["REGISTRATION"]["confirm"].value;
        
      
        if(Name==="")
        {
            alert("Name must be filled out");
        }
        else if(email==="")
        {
         alert("Email must be filled out");
        return  false;
        }
        else if (password==="")
        {
            
             alert("password must be filled out");
             return  false;
        }
        else if (confirmpass==="")
        {
            
             alert("Confirm Password must be filled out"+"Confirm pass"+confirmpass);
             return  false;
        }
        else if (password===confirmpass)
        {
            
             alert("Password Did Not Macth");
             return  false;
        }
        else 
        {
            
             alert(Name+" "+email+" "+password+" "+confirmpass);
            return true;
            
        }
        
        }
        </script>
    </head>
    <body>
       
        <h1><MARQUEE behavior="scroll" direction="left" width="100%" scrollamount="20">Metropolitan Complain Center</marquee></h1>
        <h2>Registration</h2>
        <div class="Mainblock">
            
            <form name="REGISTRATION" method="GET" onsubmit="ValidateRegistration()">
               <div class="text">
                     <label>Full Name</label>
                     <input type="text" placeholder="Enter Full Name" name="fullname">
                </div>
                
                <div class="email">
                     <label>Email</label>
                     <input type="email" placeholder="Enter Email" name="email">
                </div>
                <div class="passwordforRegis">
                     <label>Password</label>
                     <input type="password" placeholder="Enter Password" name="Password">
                </div>
                <div>
                     <label class="passwordforConfirm">Confirm Password</label>
                     <input id="confirm" type="password" placeholder="Confirm Password" name="confirm">
                </div>
                <div>
                   
                    <input id="register" type="submit" name="submint" value="Submint">
                </div>
            </form>
            
        </div>

    </body>
</html>

