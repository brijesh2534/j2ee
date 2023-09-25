<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/j2eedemo","root","");
                Statement st=con.createStatement();
                String a=request.getParameter("rn");
                String sql="delete from j2eedemo where rollno='"+a+"'";
                int rows=st.executeUpdate(sql);
                out.print("deleted");
            }catch(Exception e){
                e.printStackTrace();
            }
        %>
    </body>
</html>
