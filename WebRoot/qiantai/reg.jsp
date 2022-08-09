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
				
				if (document.form1.name.value == "" ) 
				{
					alert("用户名不能为空!");
					document.form1.name.focus();
					return false;
				}
				if (document.form1.pwd.value == ""  )  
				{
					alert("密码不能为空!");
					document.form1.pwd.focus();
					return false;
				}
				if (document.form1.qpwd.value == ""  )  
				{
					alert("确认密码不能为空!");
					document.form1.qpwd.focus();
					return false;
				}
				if (document.form1.qpwd.value != document.form1.pwd.value  )  
				{
					alert("两次密码不一致!");
					document.form1.qpwd.focus();
					return false;
				}
				if (document.form1.zname.value == ""  )  
				{
					alert("真实姓名不能为空!");
					document.form1.zname.focus();
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
<%
String error = (String)request.getAttribute("error");
if(error != null && error.equals("1")){
%><script>alert('用户名重复!')</script><%
}
%>
  <body>
  <form action="servlet/RegServlet" name="form1" method="post" onSubmit="return check11()">
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
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="text" name="name"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>您用来登录的用户名
					</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">密&nbsp;&nbsp; &nbsp;码：</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="password" name="pwd"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>长度必须大于5个小于16个字符，只能为英语字、数字
					</td>
				</tr>				
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">确认密码：</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="password" name="qpwd"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>请将输入的密码再次输入
					</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">真实姓名：</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="text" name="zname"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>填写您的真实的姓名
					</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">性&nbsp; &nbsp;&nbsp;别：</font>
					</td>
					<td align="center" bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input type="radio" name="sex" checked value="男">
						男&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="sex" value="女">
						女
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>请填写您的真实信息
					</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">年&nbsp;&nbsp; &nbsp;龄：</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="text" name="age"/>
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
						<input class="input7" type="text" name="noid"/>
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
						<input class="input7" type="text" name="address"/>
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
						<input class="input7" type="text" name="phone"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>请填写您的真实信息(格式为02411111111或13911111111) </td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">电子邮箱：</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="text" name="email"/>
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
						<input class="input7" type="text" name="code"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>请填写您的真实信息(格式为111111)</td>
				</tr>
				<tr>
					<td colspan="3" align="center" bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input type="submit" value="注册">
					</td>
				</tr>
				<tr>
				<%
				if(request.getAttribute("ok") != null){
				%>
					<th colspan="3" height="40" style="border: 2px groove #D5CD71" bgcolor="#FCCE8F">
						<font size="3" color="red"> 恭喜您注册成功！！！！</font><br>
						网页将在5秒钟后自动跳转到首页，如没自动跳转请按<a href="qiantai/index.jsp">这里</a>
					</th>
				<%}%>
				</tr>
			</table>
  </div>
  </form>
  <jsp:include flush="true" page="Copyright.jsp"/>
  </body>
</html>