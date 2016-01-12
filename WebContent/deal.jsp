<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String message = request.getAttribute("result").toString(); %>
<%=message %>
</body>
</html> --%>
<%@ page import="java.util.*" %>
<% 
String[][] userList={{"mr","mrsoft"},{"wgh","111"},{"sk","111"}};
//定义一个保存用户列表的二维数组
boolean flag=false;//登录状态
request.setCharacterEncoding("UTF-8");//设置编码
String username=request.getParameter("username");//获取用户名
String pwd=request.getParameter("pwd");//获取密码
for(int i=0;i<userList.length;i++){//遍历二维数组
	if(userList[i][0].equals(username)){//判断用户名
		if(userList[i][1].equals(pwd)){//判断密码
			flag=true;//表示登录成功
			break;//跳出for循环
		}
	}
}
if(flag){//如果值为true，表示登录成功
	session.setAttribute("username", username);//保存用户名到session范围的变量中
	response.sendRedirect("main.jsp");
}else{
	response.sendRedirect("index.jsp");
}

%>