<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>
<%

   
	String productId = request.getParameter("id");

	String sql = "select * from product where p_id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, productId);
	rs = pstmt.executeQuery();
	if (rs.next()) {
       String sqli = "delete from product where p_id = ?";
       pstmt = conn.prepareStatement(sqli);
       pstmt.setString(1, productId); 
       pstmt.executeUpdate();
	}
	if (rs != null)
		rs.close();
		if (pstmt != null)
			pstmt.close();
        
	if (conn != null)
		conn.close();
    response.sendRedirect("../admin/product_edit.jsp?edit=delete");
 %>
<!-- <a href ="../admin/product_edit.jsp"></a> -->
