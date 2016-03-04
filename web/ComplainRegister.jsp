<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%!

Connection con;
java.sql.Statement statement;
ResultSet rs;
boolean valid=false;

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
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     
    <%String name=request.getParameter("name"); %>
        <%String nic=request.getParameter("cnic");%>
        <%String address=request.getParameter("ra"); %>
        <%String email=request.getParameter("email");%>
        <%String uc=request.getParameter("uc"); %>
        <%String distric=request.getParameter("dis");%>
        
        <% if(request.getParameter("check")!=null)
        {
         
          session.setAttribute("message","valid NIC" );
          String nicComplain=request.getParameter("nic");
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
        %>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
