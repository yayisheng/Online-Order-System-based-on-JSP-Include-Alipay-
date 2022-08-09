<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>网络订餐后台管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="img/lucfron.css">
	

  </head>
  
  <body topmargin="0" leftmargin="0" rightmargin="0">
	<div align="center">
	<table style="border-style: dotted; border-width: 1px">
	<tr><td background="img/tpbg.jpg" width="795" height="100"></td></tr>
  <tr>
  <td align="center" valign="top">
  <table width="100%">
  <tr><td align="center" bgcolor="#C0C0C0">
  <table>
  <tr>
  <td><a href="admin/booklist.jsp">菜品管理|</a></td>
  <td><a href="admin/typelist.jsp">菜品类别管理|</a></td>
  <td><a href="admin/nutrition_list.jsp">营养小贴士管理|</a></td>
  <td><a href="admin/userlist.jsp">会员管理|</a></td>
  <td><a href="admin/emp_list.jsp">员工管理|</a></td>
  <td><a href="admin/leave_word.jsp">留言管理|</a></td>
  <td><a href="admin/stock_list.jsp">采购管理|</a></td>
  <td><a href="admin/order2.jsp">销售订单查询|</a></td> 
  <td><a href="admin/statistic_list.jsp">统计管理|</a></td> 
  <td><a href="admin/modifypwd.jsp">用户管理|</a></td>
  <td><a href="admin/fenxi.jsp">销售数据分析|</a></td>
  <td><a href="servlet/RemoveServlet?admin=1">注销退出|</a></td> 
  </tr>
  </table>
  </td></tr>
  </table>
  </td>
  </tr>
  </table>
  	</div>
  </body>
</html>