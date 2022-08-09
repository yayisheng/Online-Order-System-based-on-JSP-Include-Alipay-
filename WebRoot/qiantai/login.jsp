<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
  </head>
  <script language="JavaScript">
		function login11()
			{
				
				if (document.form1.name.value == "" ) 
				{
					alert("请输入用户名!");
					document.form1.name.focus();
					return false;
				}
				if (document.form1.pwd.value == ""  )  
				{
					alert("请输入密码!");
					document.form1.pwd.focus();
					return false;
				}
			}
</script>
<%
String error = (String)request.getAttribute("error");
String ok = (String)request.getAttribute("ok");
if(error != null && error.equals("1")){
%><script>alert('用户名或密码错误!')</script><%
}
%>  
  <body>
  <form method="post" action="servlet/UserLoginServlet" name="form1" onSubmit="return login11()">
  <table border="0" width="170">
  <%
  if(session.getAttribute("login") != null && !session.getAttribute("login").equals("")){
  ArrayList al = (ArrayList)session.getAttribute("login");
  String name = (String)al.get(1);
  %>
  <tr><td align="center"><%=name %>您好<br>欢迎光临</td></tr>
  <%
  }else{
   %>
		<tr>
			<td colspan="2">
	   <FONT color="#999999">用户您好，订餐前请先登录</FONT></td>
		</tr>
		<tr>
			<td>用户名</td>
			<td><input class="input6" type="text" name="name" size="20"></td>
		</tr>
		<tr>
			<td>密&nbsp;码</td>
			<td><input class="input6" type="password" name="pwd" size="20"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="登录"></td>
		</tr>
		
		<%} %>
		</table>
	</form>
  </body>
</html>