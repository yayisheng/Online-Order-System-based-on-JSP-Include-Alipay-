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
	
	
  </head>
  
  <body>
  <jsp:include flush="true" page="/servlet/ListServlet"/>
  <%
  ArrayList al = (ArrayList)request.getAttribute("bookinf");
  ArrayList bookinf = (ArrayList)al.get(0);
  ArrayList type = (ArrayList)request.getAttribute("type");
   %>
   <jsp:include flush="true" page="top.jsp"/>
  <div align="center">
	<table border="0" width="942" cellspacing="0" cellpadding="0" id="table1">
		<tr>
			<td rowspan="2" width="228" valign="top"><jsp:include flush="true" page="left.jsp"/></td>
			<td>
			<table border="1" width="100%" style="border-style: solid; border-width: 1px" bordercolorlight="#C0C0C0" bordercolordark="#FFFFFF" height="334">
		<tr>
			<td colspan="2" align="center">菜品信息</td>
		</tr>
		<tr>
			<td rowspan="3" width="31%" align="center"><a target="_blank" href="<%=bookinf.get(11)%>"><img alt="点击浏览商品大图" src="<%=bookinf.get(11)%>" border="0" width="65" height="96"></td>
			<td width="67%">【菜品名称】<%=bookinf.get(1)%></td>
		</tr>
		<tr>
			<td width="67%">【原&nbsp;&nbsp;&nbsp; 料】<%=bookinf.get(2)%></td>
		</tr>
		<tr>
			<td width="67%">
			<%
            for(int i = 0;i < type.size();i++){
            	ArrayList alRow = (ArrayList)type.get(i);
            	if(alRow.get(0).equals(bookinf.get(8))){ 
            %>【所属类别】<%=alRow.get(1)%>
              <%break;}} %>
			</td>
		</tr>
		<tr>
			<td width="31%" align="center"><a href="<%=bookinf.get(11)%>" target="_blank"><img height="36px" src="img/view2.gif" width="115px" border="0"></a></td>
			<td height="30" width="67%">【单&nbsp;&nbsp;&nbsp;&nbsp;价】<%=bookinf.get(12)%> 元</td>
		</tr>
		<tr>
			<td colspan="2" align="center" height="45">
			<a href="servlet/ShoppingServlet?bookId=<%=bookinf.get(0)%>"> <img height="18" src="img/goumai2.gif" width="40" border="0" alt=""/></a></td>
		</tr>
	</table>
			</td>
		</tr>
		<tr>
			<td>
			<table border="1" width="100%" cellspacing="0" cellpadding="0" style="border-style: solid; border-width: 1px" bordercolorlight="#C0C0C0" bordercolordark="#FFFFFF">
		<tr>
			<td height="37" style="font-family: 隶书; font-size: 25px; color: #000080; font-style: oblique">&nbsp;菜品说明</td>
		</tr>
		<tr>
			<td><textarea rows="10" name="S1" cols="85" disabled ><%=bookinf.get(7)%></textarea>
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