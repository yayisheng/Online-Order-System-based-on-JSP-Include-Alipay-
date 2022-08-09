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
    
    <title>∆Û“µÕ¯’æ</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="img/lucfron.css">
	
  </head>

  <body topmargin="0" bgcolor="#EAEAEA">
  <jsp:include flush="true" page="/servlet/ListServlet"></jsp:include>
  <%
  ArrayList nutrition = (ArrayList)request.getAttribute("nutrition");
  String id = request.getParameter("id");
  ArrayList newRow = null;
  for(int i = 0;i < nutrition.size();i++){
  	newRow = (ArrayList)nutrition.get(i);
  	if(newRow.get(0).equals(id)){
  		break;
  	}
  }
   %>
  <table width="80%" align="center" border="0" id="table1">
	<tr>
		<td class="redtext" align="middle"><br>
		<%=newRow.get(1) %>
		</td>
	</tr>
	<tr>
		<td><hr></td>
	</tr>
	<tr>
		<td class="textline" vAlign="top" align="left" height="200">
		<%=newRow.get(2) %>
		</td>
	</tr>
	<tr>
		<td align="middle"><a href="javascript:window.close();">
		<img src="img/close.gif" border="0"></a> </td>
	</tr>
	</table>
  
  </body>
</html>