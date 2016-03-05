<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%!

Connection con;
java.sql.Statement statement;
ResultSet rs;
boolean valid=false;
String name,nic,address,districname,ucnumber,email,complain,chairmon,voicechairmon,concelour;


public Connection connection() throws Exception
{
 
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/complaincenter","root","");
return con;
}

// new function for insertion
 
 public void validate(String nic)
 {
  
     try {
            con=connection();
            statement=con.createStatement();
            String insert="select *from registratin where nic='"+nic+"'";
            rs=statement.executeQuery(insert);
            while(rs.next())
            {
                if(nic.equalsIgnoreCase(rs.getString("nic")))
                {
                 valid=true;
                 break;
                }
                
            }
     }catch (Exception e) {
              
        }
 
 }
 public void RetrieveAllData(String nicnumb,String Complain)
 {
 
     try {
            con=connection();
            statement=con.createStatement();
            String insert="select *from registratin where nic='"+nicnumb+"'";
            rs=statement.executeQuery(insert);
            while(rs.next())
            {
               name=rs.getString("name");
               nic=rs.getString("nic");
               address=rs.getString("address");
               email=rs.getString("email");
                
            }
             insert="select *from distric where nic='"+nic+"'";
            rs=statement.executeQuery(insert);
             while(rs.next())
            {
                districname=rs.getString("distrcName");
                ucnumber=rs.getString("UC");;
            }
            insert="select *from uc where ucNum='"+ucnumber+"'";
            rs=statement.executeQuery(insert); 
              while(rs.next())
            {
                voicechairmon=rs.getString("voiceChairmon");
                chairmon=rs.getString("chairmon");
                concelour=rs.getString("concelour");
                complain=Complain;
            }
     }catch (Exception e) {
              
        }
 }
 public void insert_into_Administration() {
        
        try {
            con=connection();
            statement=con.createStatement();
            String insert="insert into administrator(name,nic,address,districName,ucNumber,email,complain)"
                    + " values ('"+name+"','"+nic+"','"+address+"','"+districname+"','"+ucnumber+"','"+email+"','"+complain+"')";
            statement.execute(insert);
            con.close();
        } catch (Exception e) {
            
            
        }
    }
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="ComplainCss.css" rel="stylesheet">
        <title>ComplainRegistered</title>
    </head>
     
    <%String name=request.getParameter("name"); %>
        <%String nicComplain=request.getParameter("cnic");%>
        <%String address=request.getParameter("ra"); %>
        <%String email=request.getParameter("email");%>
        <%String uc=request.getParameter("uc"); %>
        <%String complain=request.getParameter("dis");%>
        
        <% if(request.getParameter("check")!=null)
        {
         
          session.setAttribute("message","valid NIC" );
          nicComplain=request.getParameter("nic");
          validate(nicComplain);
          if(valid==true)
          {
              session.setAttribute("message","Valid Nic Number");
              session.setAttribute("nic",nicComplain);
              valid=false;
          request.getRequestDispatcher("/Home.jsp").forward(request, response);
          }
          else
          {
              session.setAttribute("message","InValid Nic Number");
           request.getRequestDispatcher("/Home.jsp").forward(request, response);
          }
          request.getRequestDispatcher("/Home.jsp").forward(request, response);

        }
        else{
        
         nicComplain=request.getParameter("nic");
         complain=request.getParameter("textarea");
         RetrieveAllData(nicComplain,complain);
         insert_into_Administration();
         
        }
        %>
    <body>
         <h1><MARQUEE behavior="scroll" direction="left" width="100%" scrollamount="20">Metropolitan Complain Center</marquee></h1>
          <br>
          
        <div class="Mainblock">
            
            <div>
                <label class="text">
                
                               Congratulation <%out.print(this.name+" Nic #="+nic);%>
                Your Complain Registered SuccessFully.<br> Your Complain Solve As Soon As Possible Please
                Keep In touch Thanks,Regard
                
            </label>
                <a href="Home.jsp"><input type="button" value="Back To Home">
            </div>
            
        </div>
    </body>
</html>
