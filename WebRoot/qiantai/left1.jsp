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
<script language="javascript">
	function opencat(cat,img)
	{
 	 	if(cat.style.display=="none"){
     	cat.style.display="";
    	 img.src="img/class2.gif";
  		} else {
     	cat.style.display="none";
     	img.src="img/class1.gif";
  		}
	}
</script>  
  <body>
  <jsp:include flush="true" page="/servlet/ListServlet"/>
  <%
  ArrayList type = (ArrayList)request.getAttribute("type");
  ArrayList xiaosou = (ArrayList)request.getAttribute("xiaosou");
  ArrayList xiaosou1 = (ArrayList)request.getAttribute("xiaosou1");
   %>
  <table border="0" width="228" cellspacing="0" cellpadding="0" id="table1">
	<tr>
		<td height="34" background="img/cpflnew.gif"><font size="5">菜品分类</font></td>
	</tr>
	<tr>
		<td>
		<table cellspacing="0" cellpadding="0" width="100%" align="center" bgcolor="#e6e6e6" border="0">
			<tr bgcolor="#ffffff">
				<td language="javascript" onmouseup="opencat(cat101000,img101000);" id="item$pval[CatID])" onmouseover="this.bgColor='#E3F4F0';" style="CURSOR: hand" onmouseout="this.bgColor='#FFFFFF';" height="24">
					<img id="img101000" height="20" src="img/class1.gif" width="20" align="absMiddle" />
					菜品分类
				</td>
			</tr>
			<tr>
				<%-- 类型树--%>
				<td id="cat101000" style="DISPLAY: none" bgcolor="#fefdf5">
					<%
					if(type != null){
					for(int i = 0;i<type.size();i++){
						ArrayList alRow = (ArrayList)type.get(i);
					%>
					<img height="20" src="img/class3.gif" width="36" align="absMiddle" border="0" alt="" />
					<a href="servlet/SearchServlet?types=<%=alRow.get(0)%>"><%=alRow.get(1)%></a><br />
					<%}}%>
					<br />
				</td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td height="34" background="img/cpflnew.gif"><font size="5">最新菜品</font></td>
	</tr>
	<%
	if(xiaosou1 != null){
		for(int i = 0;i < xiaosou1.size();i++){
		ArrayList alRow = (ArrayList)xiaosou1.get(i);
	 %>
	<tr>
		<td background="img/dp_bg.gif" height="24">&nbsp;&nbsp;&nbsp;
		<a href="servlet/BookinfServlet?id=<%=alRow.get(0) %>">
		<%if(alRow.get(1).toString().length()>10){%>
                                《<%=alRow.get(1).toString().substring(0,7)%>......》
                                <%}else{%>
                                《<%=alRow.get(1)%>》
                                <%}%>
		</a>
		</td>
	</tr>
	<%
	}} %>
	<tr>
		<td height="34" background="img/cpflnew.gif"><font size="5">销售排行</font></td>
	</tr>
	<%
	if(xiaosou != null){
		for(int i = 0;i < xiaosou.size();i++){
		ArrayList alRow = (ArrayList)xiaosou.get(i);
	 %>
	<tr>
		<td title="已销售<%=alRow.get(13)%>次" background="img/dp_bg.gif" height="24">&nbsp;&nbsp;&nbsp;
		<a href="servlet/BookinfServlet?id=<%=alRow.get(0) %>">
		<%if(alRow.get(1).toString().length()>10){%>
                                《<%=alRow.get(1).toString().substring(0,7)%>......》
                                <%}else{%>
                                《<%=alRow.get(1)%>》
                                <%}%>
		</a>
		</td>
	</tr>
	<%
	}} %>
	</table>
  </body>
</html>
