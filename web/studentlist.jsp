<%-- 
    Document   : viewstud
    Created on : 28 Feb, 2019, 7:06:04 AM
    Author     : settu
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.dao.dbconnect"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        <link rel="stylesheet" href="css/studentlist.css">
    </head>
    <body>
        <div class="container mt-3 mb-5"> 
            <h1>OD GENERATOR</h1> 
        </div>
        
        <div class="container">
            <table class="table">
                <thead>
                    <tr>
                        <th>Roll No</th>
                        <th>Name</th>
                        <th>Department</th>
                        <th>Gender</th>
                        <th>Shift</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                
                <tbody>
                    <%
                        Statement st = dbconnect.getConnection();
                        ResultSet rs = st.executeQuery("select rollno,name,department,gender,shift from student ");
                        while(rs.next()){
                    %>
                    <tr>
                        <td><%=rs.getString("rollno") %></td>
                        <td><%=rs.getString("name") %></td>
                        <td><%=rs.getString("department") %></td>
                        <td><%=rs.getString("gender") %></td>
                        <td><%=rs.getString("shift") %></td>
                        <td><a href="EditStudent?rollno=<%=rs.getString("rollno") %>">Edit</a></td>
                        <td><a data-rollno="<%=rs.getString("rollno") %>" onclick="deleteRecord()">Delete</a></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            
        </div>
        
       <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
    </body>
</html>
