<%@ page contentType="text/html;charset=utf-8" %>	
<%@ page import="example.*" %>

<footer class="container">
	<p>&copy; 쇼핑몰 대표 : 땅근마켓, 고유번호 : 20201027, 연락처 : 성결@성결<br> 
            

        <%
    	ShopTime time = new ShopTime();
         %>    
        오늘 날짜와 시간 : <%=time.timenow() %>
        </p>


	</footer>