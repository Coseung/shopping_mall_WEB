<%@ page contentType="text/html;charset=utf-8" %>	
<%@ page import="example.*" %>

<footer class="container">
	<p>&copy; 쇼핑몰 대표 : 이름, 고유번호 : 학번, 연락처 : 이메일 주소<br> 
            

        <%
    	ShopTime time = new ShopTime();
         %>    
        오늘 날짜와 시간 : <%=time.timenow() %>
        </p>


	</footer>