<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的订餐车</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="img/css.css" type="text/css" rel="stylesheet"/>
	
  </head>
    	<style>
<!--
.input1 {
	BORDER-BOTTOM-WIDTH: 0px; WIDTH: 60px; COLOR: #000000; HEIGHT: 20px; BORDER-RIGHT-WIDTH: 0px
}
-->
</style> 
  <script language="JavaScript">
		function abc222(id,i)
			{
				form1.action="servlet/ShoppingServlet?i="+i+"&bookId="+id;
  				form1.submit();
			}
</script>
 
  <body>
  <form name="form1" action="" method="post">
  <table width="620" cellspacing="1" cellpadding="1" border="1" bgcolor="#ffcc00" align="center"> 
		<tr bgcolor="#ffe2a6"> 
			<td valign="middle" align="center" colspan="6"> 
			<font size="3" face="华文行楷">在线支付</font></td> 
		</tr> 
		<tr bgcolor="#ffe2a6"> 
			</tr></table><div align="center"><a href="http://47.103.213.221:8880/wldc2/index2.jsp" target="_blank"><img border="0" src="img/b4.gif"></a></div><table width="620" cellspacing="1" cellpadding="1" border="0" bgcolor="#ffcc00" align="center"><tr bgcolor="#ffe2a6"> 
		</tr> 
		 
		 
		 
		 
		<tr bgcolor="#ffffff"> 
			<td height="25" align="center" colspan="6"> 
				<a href="qiantai/index.jsp"> 
		          继续订餐 
		        </a> 
		        
		     </td> 
		</tr> 
		 
	</table>
	</form>
  </body>
</html>
