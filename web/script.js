var EAST=['UC 1','UC 2','UC 3','UC 4'];
var WEST=['UC 5','UC 6','UC 7','UC 8'];
var NORTH=['UC 9','UC 10','UC 11','UC 12'];
var SOUTH=['UC 13','UC 14','UC 15','UC 16'];
var CENTRAL=['UC 17','UC 18','UC 19','UC 20'];

            function getVal(){

                var id=document.getElementById("chose").value;
           
                if(id==="East")
                {
                  var ucNames=document.getElementById("choseUC");
                  ucNames.innerHTML="";
                  EAST.forEach(function(i,j){
                  ucNames.innerHTML+="<option>"+i+"</option>"
                  });
                }
                else if(id==="West")
                {
                   var ucNames=document.getElementById("choseUC");
                  ucNames.innerHTML="";
                  WEST.forEach(function(i,j){
                  ucNames.innerHTML+="<option>"+i+"</option>"
                  }); 
                }
                else if(id==="North")
                {
                 var ucNames=document.getElementById("choseUC");
                 ucNames.innerHTML="";
                  NORTH.forEach(function(i,j){
                  ucNames.innerHTML+="<option>"+i+"</option>"
                  });   
                    
                }
                else if(id==="South")
                {
                  var ucNames=document.getElementById("choseUC");   
                 ucNames.innerHTML="";
                  SOUTH.forEach(function(i,j){
                  ucNames.innerHTML+="<option>"+i+"</option>"
                  });   
                }
                else if(id==="Central")
                {
                  var ucNames=document.getElementById("choseUC");   
                 ucNames.innerHTML="";
                  CENTRAL.forEach(function(i,j){
                  ucNames.innerHTML+="<option>"+i+"</option>"
                  });   
                    
                }
                

            }
             function ValidateRegistration()
        {
        var Name = document.forms["register"]["name"].value;    
        var district = document.forms["register"]["dis"].value;
        var addes = document.forms["register"]["ra"].value;
        var nic = document.forms["register"]["cnic"].value;
        var uc=document.getElementById("choseUC").value;
        
        if(Name==="")
        {
            alert("Name must be filled out");
            return false;
        }
        else if(district==="")
        {
         alert("Distric must be filled out");
        return  false;
        }
        else if (addes==="")
        {
            
             alert("Address must be filled out");
             return  false;
        }
        else if (nic==="")
        {
            
             alert("nic must be filled out"+"Confirm pass");
             return  false;
        }
        else if (uc==="")
        {
            
             alert("Password Did Not Macth");
             return  false;
        }
        else 
        {
            
             alert(Name+" "+district+" "+nic+" "+addes);
            return true;
            
        }
        
        }
        function Ajaxvalidate()
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
   var nic = document.getElementById('cnic').value;
   var queryString = "?cnic=" + nic ;
   xhttp.open("GET", "validateNic.jsp" + queryString, true);
   xhttp.send(null);
            
        }
    
