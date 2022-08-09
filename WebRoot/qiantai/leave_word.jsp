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
				
				if (document.form2.title.value == "" ) 
				{
					alert("请输入留言标题!");
					document.form2.title.focus();
					return false;
				}
				if (document.form2.content.value == ""  )  
				{
					alert("请输入留言内容!");
					document.form2.content.focus();
					return false;
				}
			}
</script>	
	
  </head>
<%
String ok = (String)request.getAttribute("ok");
if(ok != null && ok.equals("1")){
%><script>alert('留言成功!')</script><%
}
%>
 <jsp:include flush="true" page="/servlet/SessLoginServlet"/> 
  <body>
  <jsp:include flush="true" page="/servlet/ListServlet"/>
  <%
  ArrayList users = (ArrayList)request.getAttribute("users");
  ArrayList leaveword = (ArrayList)request.getAttribute("leaveword");
   %>
   <jsp:include flush="true" page="top.jsp"/>
  <div align="center">
	<table border="1" width="800" cellpadding="0" id="table1" bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" style="border-collapse: collapse">
		<tr>
			<td rowspan="2" width="178" valign="top"><jsp:include flush="true" page="left.jsp"/></td>
			<td height="350" valign="top">
			<%
		    for(int i = 0;i < leaveword.size();i++){  
		    	ArrayList alRow = (ArrayList)leaveword.get(i);
		     %>			
			<table border="0" width="100%" id="table2" bgcolor="#C0C0C0">
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
					<td bgcolor="#DDEEFF" height="20" width="14%">留言时间：</td>
					<td bgcolor="#DDEEFF" height="20" width="34%"><%=alRow.get(4).toString().substring(0,16) %></td>
				</tr>
				<tr>
					<td bgcolor="#FFEEFF" height="20" width="14%">留言标题：</td>
					<td bgcolor="#FFEEFF" height="20" colspan="3"><%=alRow.get(2) %></td>
				</tr>
				<tr>
					<td bgcolor="#FFEEFF" height="20" width="14%">留言内容：</td>
					<td bgcolor="#FFEEFF" height="20" colspan="3"><%=alRow.get(3) %></td>
				</tr>
			</table><br>
			<%} %>
			</td>
		</tr>
		<tr>
			<td>
			<form action="servlet/LeaveWordServlet" method="post" name="form2" onsubmit="return login222()">			
			<table border="1" width="100%" id="table3" bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" bgcolor="#E8E8E8" style="border-collapse: collapse">
				<tr>
					<td width="77">留言标题：</td>
					<td><input type="text" name="title" size="48"></td>
				</tr>
				<tr>
					<td width="77">留言内容：</td>
					<td><textarea rows="9" name="content" cols="57"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" height="25" align="center">
					<input type="submit" value="提交留言"></td>
				</tr>
			</table>
			</form>			
			</td>
		</tr>
	</table>
	</div>
	<jsp:include flush="true" page="Copyright.jsp"/>
  </body>
</html>