<%-- 
    Document   : updatedata
    Created on : 25 Sep, 2023, 9:00:27 AM
    Author     : Admin
--%>

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
                String a=request.getParameter("nm");
                String b=request.getParameter("rn");
                String sql="update j2eedemo set name='"+a+"' where rollno='"+b+"'";
                int rows=st.executeUpdate(sql);
                out.print("updated");
            }catch(Exception e){
                e.printStackTrace();
            }
        %>
    </body>
</html>
