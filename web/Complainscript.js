 function ValidateNIC()
        {
             var nic = document.forms["complain"]["nic"].value;
             var complain = document.forms["complain"]["textarea"].value;
             if (nic==="")
        {
            
             alert("nic must be filled out");
             return  false;
        }
        else if(complain=="		")
        {
            
            alert("Complain Must Be filled Out");
            return false;
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
        function ajaxFunction()
        {
            var xhttp;
if (window.XMLHttpRequest) {
    xhttp = new XMLHttpRequest();
    } else {
    // code for IE6, IE5
    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
}
            xhttp.onreadystatechange = function(){
   
      if(xhttp.readyState == 4){
          
         var ajaxDisplay = document.getElementById('ajaxDiv');
         ajaxDisplay.innerHTML = xhttp.responseText;
      }
   }
   var nic = document.getElementById('check').value;
   var queryString = "?check=" + nic ;
   xhttp.open("GET", "validate.jsp" + queryString, true);
   xhttp.send(null);
            
        }