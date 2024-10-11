<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.*,jakarta.servlet.*" %>
<%@ page import="java.io.*" %>

<%
    String username = request.getParameter("uname");
    String password = request.getParameter("pwd");

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/studms", "root", "845416");

            String query = "SELECT name FROM reg WHERE name = ? AND password = ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, username);
            stmt.setString(2, password);

            rs = stmt.executeQuery();

            if (rs.next()) {
                String name = rs.getString("name");
                session.setAttribute("name",name);
                response.sendRedirect("index.html");
            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('User does not exist or incorrect password');");
                out.println("location='login.jsp';");
                out.println("</script>");

            }
        } catch (Exception e) {
        out.println("Error: " + e.getMessage());
        e.printStackTrace();
        }
        finally {
        try {
        if (rs != null) rs.close();
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
        } catch (SQLException e) {
        out.println("Error during closing: " + e.getMessage());
        e.printStackTrace();
        }
        }
%>
