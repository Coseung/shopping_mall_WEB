<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>

<%
    String id = request.getParameter("id");
    String password = request.getParameter("password");

    String sqli = "SELECT * FROM member WHERE id = ? and password = ?";
    pstmt = conn.prepareStatement(sqli);
    pstmt.setString(1, id);
    pstmt.setString(2, password);
    rs = pstmt.executeQuery();

    if (rs.next()) {
        session.setAttribute("id", id);
        response.sendRedirect("../index.jsp");
        %>
        <script>
            alert('로그인 성공!');
        </script>
        <%
    }
    else {
        response.sendRedirect("login_failed_user.jsp");
    }
        
    if (rs != null)
        rs.close();
    if (pstmt != null)
        pstmt.close();
    if (conn != null)
        conn.close();
%>