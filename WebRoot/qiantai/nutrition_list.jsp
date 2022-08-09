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
	
<SCRIPT language=javascript>
function openwin(pagename){
window.open (pagename,'go', 'height=400, width=400, top=0, left=0, toolbar=no, menubar=no, scrollbars=yes,resizable=yes,location=no, status=no')
}
</SCRIPT>	
  </head>
  
  <body>
  <jsp:include flush="true" page="/servlet/ListServlet"/>
   <jsp:include flush="true" page="top.jsp"/>
  <div align="center">
	<table border="0" width="942" cellspacing="0" cellpadding="0" id="table1">
		<tr>
			<td rowspan="2" width="228" valign="top"><jsp:include flush="true" page="left.jsp"/></td>
			<td valign="top">
			<table border="1" width="100%" bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" bgcolor="#E8E8E8" style="border-collapse: collapse" id="table2">
				<tr>
					<td align="center" height="25">营养小贴士</td>
				</tr>
				<tr>
					<td height="350" valign="top">
					<%
					ArrayList nutrition = (ArrayList)request.getAttribute("nutrition");
					for(int i = 0;i < nutrition.size();i++){
						ArrayList alRow = (ArrayList)nutrition.get(i);
						%>&nbsp;&nbsp;<%=i+1 %>、<a onclick="openwin('<%=basePath %>qiantai/nutrition_show.jsp?id=<%=alRow.get(0) %>')" href="javascript:void(0);"><%=alRow.get(1) %></a><br><br><%
					}
					 %>
					</td>
				</tr>
			</table>
			</td>
		</tr>
	</table>
	</div>
	<jsp:include flush="true" page="Copyright.jsp"/>
  </body>
</html>