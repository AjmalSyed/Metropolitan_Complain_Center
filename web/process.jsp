<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%!

Connection con;
java.sql.Statement statement;
ResultSet rs;

public Connection connection() throws Exception
{
 
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/complaincenter","root","");
return con;
}

// new function for insertion
 public void insert_into_registration(String name,String nic,String address,String email) {
        
        try {
            con=connection();
            statement=con.createStatement();
            String insert="insert into registratin (name,nic,address,email) values ('"+name+"','"+nic+"','"+address+"','"+email+"')";
            statement.execute(insert);
            con.close();
        } catch (Exception e) {
            
            
        }
    }
 public void insert_into_District(String nic,String Distric,String uc) {
        
        try {
            con=connection();
            uc=uc+"-"+nic;
            statement=con.createStatement();
            String insert="insert into distric (nic,distrcName,UC) values ('"+nic+"','"+Distric+"','"+uc+"')";
            statement.execute(insert);
            con.close();
        } catch (Exception e) {
            
           
            
        }
    }
 public void setUC(String nic,String uc)
 {
 
 try {
            con=connection();
            statement=con.createStatement();
            String insert="select *from localuc where uc='"+uc+"'";
            rs=statement.executeQuery(insert);
            while(rs.next())
            {
                uc=uc+"-"+nic;
            String sql ="insert into uc (voiceChairmon,chairmon,concelour,ucNum) values ('"+rs.getString("voiceChairmon")+"','"+rs.getString("chairmon")+"','"+rs.getString("concelour")+"','"+uc+"')";
            statement.execute(sql);
            }
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
        <title>GetValues</title>
    </head>
    <body>
        <%String name=request.getParameter("name"); %>
        <%String nic=request.getParameter("cnic");%>
        <%String address=request.getParameter("ra"); %>
        <%String email=request.getParameter("email");%>
        <%String uc=request.getParameter("uc"); %>
        <%String distric=request.getParameter("dis");%>
        <%insert_into_registration(name,nic,address,email);%>
        <%setUC(nic,uc);%>
        <%insert_into_District(nic, distric, uc);%>
        <%out.print(name+" "+nic+""+address+" "+email+" "+uc+" "+distric);%>
        
    </body>
</html>
