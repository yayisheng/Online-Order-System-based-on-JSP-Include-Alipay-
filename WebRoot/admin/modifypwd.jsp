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

  	<style>
<!--
*{padding:0;margin:0}
.ry{background:#FFF8F0}
td{font:13px 宋体}
#TbM td{border:0;font-size:13px;line-height:24px!important;line-height:24px}
}
#TbM td.pl{width:64px}
a:link{color:#000;text-decoration:none}
a:link.greenfont1{color:#178517; cursor: hand; font-family:宋体; text-decoration: none}
#TbM td.pr{width:60px}
.rb{background:#F0F7FF}
a:link.greenfont{color:#179117; cursor: hand; font-family:宋体; text-decoration: none}
}
.redfont{color:#fd2828}
-->
</style>
<script language="JavaScript">
		function check11()
			{
				
				if (document.form1.oldpwd.value == "" ) 
				{
					alert("请输入旧密码!");
					document.form1.oldpwd.focus();
					return false;
				}
				if (document.form1.newpwd.value == ""  )  
				{
					alert("请输入新密码!");
					document.form1.newpwd.focus();
					return false;
				}
				if (document.form1.cnewpwd.value == ""  )  
				{
					alert("请输入重复新密码!");
					document.form1.cnewpwd.focus();
					return false;
				}
				if (document.form1.cnewpwd.value != document.form1.newpwd.value  )  
				{
					alert("两次密码不一致!");
					document.form1.cnewpwd.focus();
					return false;
				}
			}
</script>
  </head>
  <jsp:include flush="true" page="/servlet/SessAdminServlet"/>
  <body style="background:url(img/bg1.jpeg)">
  <div align="center">
  <jsp:include flush="true" page="/admin/top.jsp"/>
  <form name="form1" action="servlet/PwdNameUserServlet?xpwd=1" method="post" onSubmit="return check11()">
  <table border="0" width="800" align="center" background="img/MainBg.gif" height="494">
		<tr>
			<td valign="top">
			<table id="table2" style="width: 100%; border-left: 1px solid #7BD676; border-right: 1px solid #7BD676; border-top: 11px solid #7bd676; border-bottom: 1px solid #7BD676; margin: 0; padding: 0" cellSpacing="1" cellPadding="0">
				<tbody style="margin: 0; padding: 0">
					<tr class="rb">
						<td class="pl" width="726" align="center" colspan="2" height="40">						
						<a href="admin/modifypwd.jsp">修改密码</a>&nbsp;&nbsp;&nbsp; 
						<a href="admin/modifyname.jsp">修改用户名</a>
						&nbsp;&nbsp;&nbsp; <a href="admin/adduser.jsp">添加系统管理员</a>
						</td>
					</tr>
					<tr class="ry">
						<td class="pl" width="335" align="right">
						<span style="color: #874604">旧&nbsp; 密&nbsp; 码：</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" width="456" align="left">
						<input type="password" name="oldpwd" size="20"></td>
					</tr>
					<tr class="rb">
						<td class="pl" width="335" align="right">
						<span style="color: #874604">新&nbsp; 密&nbsp; 码：</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" width="456" align="left">
						<input type="password" name="newpwd" size="20"></td>
					</tr>
					<tr class="ry">
						<td class="pl" width="335" align="right">
						<span style="color: #874604">重复新密码：</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" width="456" align="left">
						<input type="password" name="cnewpwd" size="20"></td>
					</tr>
					<tr><td colspan="2" align="center"><input type="submit" value="修改"/></td></tr>
					</table>
			</td>
			
		</tr>
		</table>
		</form>
  <jsp:include flush="true" page="Copyright.jsp"/>
  </div>
  </body>
</html>