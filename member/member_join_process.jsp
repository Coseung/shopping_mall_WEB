<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.Enumeration" %>
<%@ include file="../db/db_conn.jsp" %>

<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String birth = request.getParameter("birth");
    String mail = request.getParameter("mail");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
    
    // 현재 날짜/시간 가져오기
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String registDay = dateFormat.format(new Date());
    boolean Success = false;
    // 데이터베이스에 회원 정보 삽입
    String query = "INSERT INTO member VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
    
    if (id != null) {
        try {
            pstmt = conn.prepareStatement(query);
            pstmt.setString(1, id);
            pstmt.setString(2, password);
            pstmt.setString(3, name);
            pstmt.setString(4, gender);
            pstmt.setString(5, birth);
            pstmt.setString(6, mail);
            pstmt.setString(7, phone);
            pstmt.setString(8, address);
            pstmt.setString(9, registDay);
            pstmt.executeUpdate();
            pstmt.close();
            Success =true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    if (Success) {
        out.println("<h2>회원가입이 완료되었습니다!</h2>");
    } else {
        out.println("<h2>회원가입에 실패하였습니다.</h2>");
        out.println("<p>다시 입력해주세요.</p>");
    }
    conn.close();
    // 세션 체크 후 전체 삭제
    session.invalidate();
    
    
    
    response.sendRedirect("../index.jsp");
%>