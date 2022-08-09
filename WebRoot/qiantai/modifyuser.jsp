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
		function check11()
			{				
				if (document.form1.pwd.value == ""  )  
				{
					alert("密码不能为空!");
					document.form1.pwd.focus();
					return false;
				}
				if (document.form1.age.value == ""  )  
				{
					alert("年龄不能为空!");
					document.form1.age.focus();
					return false;
				}
				if (document.form1.noid.value == ""  )  
				{
					alert("身份证不能为空!");
					document.form1.noid.focus();
					return false;
				}
				if (document.form1.address.value == ""  )  
				{
					alert("家庭住址不能为空!");
					document.form1.address.focus();
					return false;
				}
				if (document.form1.phone.value == ""  )  
				{
					alert("电话号码不能为空!");
					document.form1.phone.focus();
					return false;
				}
				if (document.form1.email.value == ""  )  
				{
					alert("电子邮箱不能为空!");
					document.form1.email.focus();
					return false;
				}
				if (document.form1.code.value == ""  )  
				{
					alert("邮政编码不能为空!");
					document.form1.code.focus();
					return false;
				}
			}
</script>
<jsp:include flush="true" page="/servlet/SessLoginServlet"/>
  <body>  
  <form action="servlet/ModifyUserServlet" name="form1" method="post" onSubmit="return check11()">
  <jsp:include flush="true" page="top.jsp"/>
  <div align="center"><br>
  <table bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" border="1">
				<tr>
					<td colspan="3" align="center" bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#666666">请填写用户信息(带<font color="red">*</font>为必填项)</font>
					</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">用 户 名：</font>
					</td>
					<%
  					ArrayList user = (ArrayList)request.getAttribute("user");
  					ArrayList users = (ArrayList)user.get(0);
   					%>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
					<%=users.get(1) %></td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;</font></td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">密&nbsp;&nbsp; &nbsp;码：</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="password" name="pwd" value="<%=users.get(2) %>"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>长度必须大于5个小于16个字符，只能为英语字、数字
					</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">真实姓名：</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
					<%=users.get(3) %></td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						　</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">性&nbsp; &nbsp;&nbsp;别：</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
					<%=users.get(4) %></td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						　</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">年&nbsp;&nbsp; &nbsp;龄：</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="text" name="age" value="<%=users.get(5) %>"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>请输入您的真实年龄
					</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">身份证号：</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="text" name="noid" value="<%=users.get(6) %>"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>请填写您的真实信息
					</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">家庭住址：</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="text" name="address" value="<%=users.get(7) %>"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>请填写您的真实信息
					</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">电话号码：</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="text" name="phone" value="<%=users.get(8) %>"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>请填写您的真实信息(格式为02411111111或13911111111) </td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">电子邮箱：</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="text" name="email" value="<%=users.get(9) %>"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>请填写您有效的邮件地址，以便于我们为您提供有效的服务。
					</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">邮政编码：</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="text" name="code" value="<%=users.get(10) %>"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>请填写您的真实信息(格式为111111)</td>
				</tr>
				<tr>
					<td colspan="3" align="center" bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input type="submit" value="修改">
					</td>
				</tr>
			</table><input type="hidden" name="id" value="<%=users.get(0) %>">
  </div>
  </form>
  <jsp:include flush="true" page="Copyright.jsp"/>
  </body>
</html>