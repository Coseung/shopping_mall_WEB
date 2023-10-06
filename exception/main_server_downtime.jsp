<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="java.util.Date"%>
<%@ page import="example.*" %>
<%@ page errorPage = "exception/main_server_downtime.jsp" %>

<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
    <title>상품 상세 정보</title>
</head>
<body>
       <%@ include file="../top_banner.jsp" %>
	<%@ include file="../top_menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">404에러입니다 다시시도 하세요 </h1>
          
		</div>
	</div>
    <%@ include file="../footer.jsp" %>
    <style>
        .display-3 {
            
            font-family: 'Black Han Sans', sans-serif;
            color : #FF8C00; 
        }
    
    </style>
</body>
</html>