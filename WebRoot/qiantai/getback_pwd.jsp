<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Language" content="zh-cn">
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  <script language="JavaScript">
		function login222()
			{
				
				if (document.form2.email.value == "" ) 
				{
					alert("请输入注册电子邮箱!");
					document.form2.email.focus();
					return false;
				}
				if (document.form2.name.value == "" ) 
				{
					alert("请输入用户名!");
					document.form2.name.focus();
					return false;
				}
				if (document.form2.pwd.value == "" ) 
				{
					alert("请输入新密码!");
					document.form2.pwd.focus();
					return false;
				}
				if (document.form2.cpwd.value == "" ) 
				{
					alert("请输入重复新密码!");
					document.form2.cpwd.focus();
					return false;
				}				
				if (document.form2.cpwd.value != document.form2.pwd.value) 
				{
					alert("两次密码不一致!");
					document.form2.cpwd.focus();
					return false;
				}
			}
</script>	
	
  </head>
<%
String error = (String)request.getAttribute("error1");
if(error != null && error.equals("1")){
%><script>alert('注册电子邮箱或用户名错误!')</script><%
}
%>
<%
String ok = (String)request.getAttribute("ok1");
if(ok != null && ok.equals("1")){
%><script>alert('密码找回成功，请登录!')</script><%
}
%> 
  <body>
  <jsp:include flush="true" page="/servlet/ListServlet"/>
   <jsp:include flush="true" page="top.jsp"/>
  <div align="center">
	<table border="0" width="942" cellspacing="0" cellpadding="0" id="table1">
		<tr>
			<td rowspan="2" width="228" valign="top"><jsp:include flush="true" page="left.jsp"/></td>
			<td valign="top">
			<form action="servlet/GetbackPwdServlet" method="post" name="form2" onsubmit="return login222()">
			<table border="1" width="100%" bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" bgcolor="#E8E8E8" style="border-collapse: collapse" id="table2">
				<tr>
					<td colspan="2" height="25" align="center">找回密码</td>
				</tr>
				<tr>
					<td height="25" align="right" width="48%">注册电子邮箱：</td>
					<td height="25" width="51%">&nbsp;<input class="input6" type="text" name="email" size="20"></td>
				</tr>
				<tr>
					<td height="25" align="right" width="48%">用户名：</td>
					<td height="25" width="51%">&nbsp;<input class="input6" type="text" name="name" size="20"></td>
				</tr>
				<tr>
					<td height="25" align="right" width="48%">新密码：</td>
					<td height="25" width="51%">&nbsp;<input class="input6" type="password" name="pwd" size="20"></td>
				</tr>
				<tr>
					<td height="25" align="right" width="48%">重复新密码：</td>
					<td height="25" width="51%">&nbsp;<input class="input6" type="password" name="cpwd" size="20"></td>
				</tr>
				<tr>
					<td height="25" colspan="2" align="center">
					<input type="submit" value="提交"></td>
				</tr>
			</table>
		</form>
			</td>
		</tr>
		<tr>
			<td>
			<table border="1" width="100%" cellspacing="0" cellpadding="0" style="border-style: solid; border-width: 1px" bordercolorlight="#C0C0C0" bordercolordark="#FFFFFF">
		</table>
			</td>
		</tr>
	</table>
	</div>
	<jsp:include flush="true" page="Copyright.jsp"/>
  </body>
</html>