<%-- 
    Document   : selectdata
    Created on : 25 Sep, 2023, 9:03:42 AM
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
                String a=request.getParameter("rn");
                String sql="select * from j2eedemo where rollno='"+a+"'";
                ResultSet rs=st.executeQuery(sql);
                while(rs.next()){
                    String b,c;
                    b=rs.getString("name");
                    c=rs.getString("rollno");
                    out.print(b+c);
                }
            }catch(Exception e){
                e.printStackTrace();
            }
        %>
    </body>
</html>
