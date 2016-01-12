<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isThreadSafe="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE THML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>web网站开发复习一</title>
<style type="text/css">
li {
	padding: 5px;
}
</style>
</head>
<body>


	<table style="margin-top: 10px;" width="500" border="1" align="center"
		cellpadding="0" cellspacing="0" bordercolor="#FFFFFF"
		bordercolorlight="#FFFFFF" bordercolordark="#FFCCCC">
		<tr>
			<td width="29%" height="27" align="center">标题</td>
			<td width="14%" height="27" align="center">上传人</td>
			<td width="23%" height="27" align="center">上传时间</td>
			<td width="6%" height="27" align="center">下载</td>
		</tr>
		<tr>
			<td height="29" align="center">新歌</td>
			<td height="29" align="center">小雨</td>
			<td height="29" align="center">2016年1月12日</td>
			<td height="29" align="center"><a
				href="DownServlet?path=<%=getServletContext().getRealPath("新歌.mp3")%>">下载</a>
			</td>
		</tr>
	</table>

	<%-- 
<!-- 上传文件 -->
<form action="UploadServlet" method="post" enctype="multipart/form-data" name="form1" id="form1" onsubmit="return validate()">
    <ul>
        <li>请选择要上传的附件：</li>
        <li>上传文件：<input type="file" name="file" /></li>
        <li><input type="submit" name="Submit" value="上传" />
            <input type="reset" name="submit2" value="重置"/>
        </li>
    </ul>    
        <%
        if(request.getAttribute("result")!=null){
        	out.println("<script>alert('"+request.getAttribute("result")+"');</script>");
        }
        %>
</form>
 --%>

	<%-- <ul>
<li>定义request范围内的变量username</li>
<c:set var="username" value="没人看见"></c:set>
<c:out value="username的值为：${username }"></c:out>
<li>设置UserInfo对象的
</ul>
 --%>


	<!-- 例9.1 -->
	<%-- secapeXML属性为true时：
<c:out value="水平线标记<hr>" escapeXml="true"></c:out>
<br>
secapeXML属性为false时：
<c:out value="水平线标记<hr>" escapeXml="false"></c:out>
<br>
 --%>



	<!-- 
<form action="doreg.jsp" method="get" id = "form">
<ul>
<li>用户名：<input type="text" name = "name" size="29"></li>
<li>职  &nbsp;&nbsp;   务：<input type="text" name = "job" size="29"></li>
<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="注册"><input type="reset" value="重置"></li>
</ul>
</form> -->

	<%-- <% String[] bookName = {"Java Web开发典型模块大全","Java Web开发实战宝典","Java Web开发全程实录"}; %>
<table border="1" align="center">
<tr>
<td align="center">编号</td>
<td align="center">书名</td>
</tr>
<% for(int i=0;i<bookName.length;i++){ %>
<tr>
<td align="center"><%=i %></td>
<td align="center"><%=bookName[i] %></td>
</tr>
<%} %>
</table>
 --%>

	<!-- <div>
    <form action="login.jsp" method="post">
        <ul>
            <li><h3>用户登录</h3></li>
        </ul>
         <ul>
            <li>用户名：<input type="text" name="username"></li>
        </ul>
         <ul>
            <li>密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="text" name="password"></li>
        </ul>
         <ul>
            <li><input type="submit" value="登&nbsp;&nbsp;录"></li>
        </ul>
    </form>
</div>
 -->

	<%-- <br>客户提交信息的方法：<%=request.getMethod() %>
<br>使用的协议：<%=request.getProtocol() %>
<br>获取发出请求字符串的客户端地址：<%=request.getRequestURI() %>
<br>获取发出请求字符串的客户端地址：<%=request.getRequestURL() %>
<br>获取提交数据的客户端IP地址：<%=request.getRemoteAddr() %>
<br>获取服务器端口号：<%=request.getServerPort() %>
<br>获取服务器的名称：<%=request.getServerName() %>
<br>获取客户端的主机名：<%=request.getRemoteHost() %>
<br>获取客户端所请求的脚本文件的文件路径：<%=request.getServletPath() %>
<br>获得HTTP协议定义的文件头信息Host的值：<%=request.getHeader("host") %>
<br>获得HTTP协议定义的文件头信息User-Agent的值：<%=request.getHeader("user-agent") %>
<br>获得HTTP协议定义的文件头信息accept-language的值：<%=request.getHeader("accept-language") %>
 --%>

	<%--  <%
 try{
	 int money=100;
	 int number=0;
	 request.setAttribute("result", money/number);//保存执行结果
 }catch(Exception e){
	 request.setAttribute("result", "很抱歉，页面产生错误！");//保存错误提示信息
 }
 %>
<jsp:forward page="deal.jsp"/> --%>

	<%-- <% response.sendRedirect("https://www.baidu.com/index.php?tn=monline_3_dg"); %> --%>

	<%-- <%response.sendRedirect("login.jsp"); %> --%>

	<!-- <form action="" name="form1" method="post">
    <p>用户名：<input name="name" type="text" id="name" style="width:120px"></p>
    <p>密&nbsp;&nbsp;&nbsp;&nbsp;码：<input name="pwd" type="password" id="pwd" style="width:120px"></p>
    <input type="submit" name="Submit" value="登录">
</form> -->





	<%-- <%@ include file="top.jsp" %><br>
<%!
int count = 0;
public int getCount(){
	count++;
	return count;
}
%>
坚韧、创新、顽强、笃行！<br>
<jsp:include page="top.jsp"></jsp:include><br>
您好！您是本站的第<%=getCount() %>位访问者！<br>

显示系统时间：<br>
<%
Date date = new Date();
SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
String today = df.format(date);
%>
<%=today %><br>
<jsp:forward page="login.jsp"></jsp:forward>'
<%@ include file="copyright.jsp" %> --%>
</body>
</html>