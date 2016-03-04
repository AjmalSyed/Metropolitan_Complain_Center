 function ValidateNIC()
        {
             var nic = document.forms["complain"]["nic"].value;
             if (nic==="")
        {
            
             alert("nic must be filled out");
             return  false;
        }
        else 
        {
            return true;
            
        }
        }