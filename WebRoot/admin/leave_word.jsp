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
	
	<link rel="stylesheet" type="text/css" href="img/css.css">
	

  </head>
  <jsp:include flush="true" page="/servlet/SessAdminServlet"/>
  <body style="background:url(img/bg1.jpeg)">
  <%
  String error = (String)request.getAttribute("error");
  if(error != null && !error.equals("")){
  	%><script>alert('该类别还有菜品，不能删除!')</script><%
  }
   %>
	<div align="center">
	<jsp:include flush="true" page="/servlet/ListServlet"/>
	<jsp:include flush="true" page="/admin/top.jsp"/>
  	<%
	  ArrayList users = (ArrayList)request.getAttribute("users");
	  ArrayList leaveword = (ArrayList)request.getAttribute("leaveword");
	   %>
	   <%
		    for(int i = 0;i < leaveword.size();i++){  
		    	ArrayList alRow = (ArrayList)leaveword.get(i);
		     %>			
			<table border="0" width="800" id="table2" bgcolor="#C0C0C0">
				<tr>
					<td bgcolor="#DDEEFF" height="20" width="14%">用户名：</td>
					<td bgcolor="#DDEEFF" height="20" width="36%">
					<%
					for(int j = 0;j < users.size();j++){
						ArrayList usersRow = (ArrayList)users.get(j);
						if(usersRow.get(0).equals(alRow.get(1))){
							%><%=usersRow.get(1) %><%
							break;
						}
					}
					 %>
					</td>
					<td bgcolor="#DDEEFF" height="20" width="14%">顾客留言时间：</td>
					<td bgcolor="#DDEEFF" height="20" width="27%"><%=alRow.get(4).toString().substring(0,16) %></td>
					<td bgcolor="#DDEEFF" height="60" width="7%" rowspan="3" align="center">
					<a href="servlet/DelServlet?leaveword=<%=alRow.get(0) %>">删除</a></td>
				</tr>
				<tr>
					<td bgcolor="#FFEEFF" height="20" width="14%">顾客留言标题：</td>
					<td bgcolor="#FFEEFF" height="20" colspan="3"><%=alRow.get(2) %></td>
				</tr>
				<tr>
					<td bgcolor="#FFEEFF" height="20" width="14%">顾客留言内容：</td>
					<td bgcolor="#FFEEFF" height="20" colspan="3"><%=alRow.get(3) %></td>
				</tr>
			</table><br>
			<%} %>
  	</div>
  </body>
</html>