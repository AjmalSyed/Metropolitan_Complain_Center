 function ValidateNIC()
        {
             var nic = document.forms["complain"]["nic"].value;
             var complain = document.forms["complain"]["textarea"].value;
             if (nic==="")
        {
            
             alert("nic must be filled out");
             return  false;
        }
        else if(nic!="" && complain=="		")
        {
            
            alert("Now You can Enter Complain");
            return true;
        }
        else 
        {
            return true;
            
        }
        }
        function  ValidateComplain()
        {
            
             var complain = document.forms["complain"]["textarea"].value;
             var nic = document.forms["complain"]["nic"].value;
              if (complain==="		")
        {
            
             alert("Complain must be filled out");
             return  false;
        }
        else if (nic==="")
        {
            
             alert("nic must be filled out");
             return  false;
        }
        else 
        {
            return true;
            
        }
            
        }
        function complainFieldvalidate()
        {
            
            var complain = document.forms["complain"]["textarea"].value;
              if (complain==="		")
        {
            
             alert("Complain must be filled out");
             
        }
            
        }