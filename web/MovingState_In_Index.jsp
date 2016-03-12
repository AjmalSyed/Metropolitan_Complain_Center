<%-- 
    Document   : MovingState_In_Index
    Created on : Mar 12, 2016, 4:57:50 AM
    Author     : Abdul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%          if(request.getParameter("Home")!=null)
            {
               // request.getRequestDispatcher("/Home.jsp").forward(request, response);
                response.sendRedirect("Home.jsp");
            }
            else if(request.getParameter("Regis")!=null)
            {
               // request.getRequestDispatcher("/Registration_for_Login.jsp").forward(request, response);
                response.sendRedirect("Registration_for_Login.jsp");
                
            }
               else
            {
            
            }
             
             %>