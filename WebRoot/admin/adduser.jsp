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
td{font:13px ����}
#TbM td{border:0;font-size:13px;line-height:24px!important;line-height:24px}
}
#TbM td.pl{width:64px}
a:link{color:#000;text-decoration:none}
a:link.greenfont1{color:#178517; cursor: hand; font-family:����; text-decoration: none}
#TbM td.pr{width:60px}
.rb{background:#F0F7FF}
a:link.greenfont{color:#179117; cursor: hand; font-family:����; text-decoration: none}
}
.redfont{color:#fd2828}
-->
</style>
<script language="JavaScript">
		function check11()
			{
				
				if (document.form1.name.value == "" ) 
				{
					alert("�������û���!");
					document.form1.name.focus();
					return false;
				}
				if (document.form1.pwd.value == ""  )  
				{
					alert("����������!");
					document.form1.pwd.focus();
					return false;
				}
				if (document.form1.cpwd.value == ""  )  
				{
					alert("�������ظ�����!");
					document.form1.cpwd.focus();
					return false;
				}
				if (document.form1.cpwd.value != document.form1.pwd.value  )  
				{
					alert("�������벻һ��!");
					document.form1.cpwd.focus();
					return false;
				}
			}
</script>
  </head>
  <jsp:include flush="true" page="/servlet/SessAdminServlet"/>
  <%
String error = (String)request.getAttribute("error");
if(error != null && error.equals("1")){
%><script>alert('�û������ظ�!')</script><%
}
 %>
  <body>
 
  <jsp:include flush="true" page="/admin/top.jsp"/>
  <form name="form1" action="servlet/PwdNameUserServlet?xuser=1" method="post" onSubmit="return check11()">
   <div align="center">
  <table border="0" width="800" align="center" background="img/MainBg.gif" height="494">
		<tr>
			<td valign="top">
			<table id="table2" style="width: 100%; border-left: 1px solid #7BD676; border-right: 1px solid #7BD676; border-top: 11px solid #7bd676; border-bottom: 1px solid #7BD676; margin: 0; padding: 0" cellSpacing="1" cellPadding="0">
				<tbody style="margin: 0; padding: 0">
					<tr class="rb">
						<td class="pl" width="726" align="center" colspan="2" height="40">						
						<a href="admin/modifypwd.jsp">�޸�����</a>&nbsp;&nbsp;&nbsp; 
						<a href="admin/modifyname.jsp">�޸��û���</a>						
						&nbsp;&nbsp;&nbsp; <a href="admin/adduser.jsp">���ϵͳ����Ա</a>
						</td>
					</tr>
					<tr class="ry">
						<td class="pl" width="335" align="right">
						<span style="color: #874604">�� �� ����</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: ����; border: 0 none; margin: 0; padding: 0" width="456" align="left">
						<input type="text" name="name" size="20"></td>
					</tr>
					<tr class="rb">
						<td class="pl" width="335" align="right">
						<span style="color: #874604">��&nbsp;&nbsp;&nbsp; �룺</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: ����; border: 0 none; margin: 0; padding: 0" width="456" align="left">
						<input type="password" name="pwd" size="20"></td>
					</tr>
					<tr class="ry">
						<td class="pl" width="335" align="right">
						<span style="color: #874604">�ظ����룺</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: ����; border: 0 none; margin: 0; padding: 0" width="456" align="left">
						<input type="password" name="cpwd" size="20"></td>
					</tr>					
					<tr><td colspan="2" align="center"><input type="submit" value="���"/></td></tr>
					</table>
			</td>
			
		</tr>
		</table>
		</div>
		</form>
  <jsp:include flush="true" page="Copyright.jsp"/>
  
  </body>
</html>