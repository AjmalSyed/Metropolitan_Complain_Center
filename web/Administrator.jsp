<%-- 
    Document   : Administrator
    Created on : Mar 12, 2016, 1:08:52 AM
    Author     : Abdul
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!Connection con;
java.sql.Statement statement;
ResultSet rs;%>
<%!
public Connection connection() throws Exception
{
 
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/complaincenter","root","");
return con;
}%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <marquee  scrollamount="20" onmouseover="this.stop();" onmouseout="this.start();"><h1> FOR ADMINISTIRATOR USE </h1></MARQUEE>

        <table border="1" cellspacing="5" cellpadding="10" width="1000" height="100" align="center">
		<tr>
			<th>
				Name
			</th>
			
			<th>
				CNIC N.O
			</th>
			
			<th>
				E-MAIL
			</th>
			
			<th>
				UC N.O
			</th>
			
			<th>
				DISTRIC
			</th>
			
			<th>
				ADDRESS
			</th>
			
			<th>
				COMPLAIN
			</th>
			
		</tr>
                        <% try {  %>
                        
                        <% con=connection();
            statement=con.createStatement();
            String insert="select *from administrator";
            rs=statement.executeQuery(insert);%>
             
             <%while(rs.next()){%>
             
                      <tr> 
			<td>
                            <%out.print(rs.getString("name"));%>
			</td>
			
			<td>
                             <%out.print(rs.getString("nic"));%>
			</td>
			
			<td>
                             <%out.print(rs.getString("email"));%>
			</td>
			
			<td>
                             <%out.print(rs.getString("ucNumber"));%>
			</td>
			
			<td>
                             <%out.print(rs.getString("districName"));%>
			</td>
			
			<td>
                             <%out.print(rs.getString("address"));%>
			</td>
			
			<td>
                             <%out.print(rs.getString("complain"));%>
			</td>
                        <br>
                        </tr>
                        <br>
                        <%}%>
                         <%  } catch(Exception e){}  %>
		
	</table>

    </body>
</html>
