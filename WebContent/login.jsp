<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
</head>
<body>
<!-- <form action="">
<div>
<ul><li><h3>用户登录</h3></li></ul>
<ul><li>用户名：<input type="text" name="username"></li></ul>
<ul><li>密码：<input type="password" name="password"></li></ul>
<ul><li><input type="button" value="登录"></li></ul>
</div>
</form> -->

<%-- <%//获取用户名
String username = request.getParameter("username");
//获取密码
String password = request.getParameter("password");
//判读用户名是否为mr，密码是否为mesoft
if("mr".equals(username)&&"mrsoft".equals(password)){
	//登录成功
	out.print("<h3>恭喜，登录成功！</h3>");
}else{
	//登录失败
	out.print("<h3>对不起，登录失败！</h3>");
}
%> --%>

<form action="" name="form1" method="post">
    <p>用户名：<input name="name" type="text" id="name" style="width:120px"></p>
    <p>密&nbsp;&nbsp;&nbsp;&nbsp;码：<input name="pwd" type="password" id="pwd" style="width:120px"></p>
    <input type="submit" name="Submit" value="提交">
</form>

</body>
</html>