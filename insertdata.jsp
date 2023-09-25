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
                    String sql="insert into j2eedemo (`name`,`rollno`) values('"+a+"','"+b+"')";
                    int rows=st.executeUpdate(sql);
                    out.print("inserted");
                }catch(Exception e){
                    e.printStackTrace();
                }
            %>
    </body>
</html>
