<%@page import="com.Bean.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    String username=((UserInfo)request.getAttribute("us")).getName();
    String userjob=((UserInfo)request.getAttribute("us")).getJob();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
<li>注册成功！</li>
<li><b>用户名：</b><%=username %>&nbsp;&nbsp;<b>职&nbsp;&nbsp;务：</b><%=userjob %></li>
<li><a href="index.jsp">【返回】</a></li>
</ul>
</body>
</html>