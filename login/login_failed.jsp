<%@ page contentType = "text/html;charset=utf-8" %>
<%	
    
	// response.sendRedirect("login.jsp?error=1");


    String referringPage = request.getHeader("Referer");
    String redirectUrl = "login.jsp?error=1"; // 기본적으로 login.jsp로 리다이렉트
    
    if (referringPage != null && referringPage.contains("login_user.jsp")) {
        redirectUrl = "login_user.jsp?error=1"; // login_user.jsp로 리다이렉트
    }
    
    response.sendRedirect(redirectUrl);

%>