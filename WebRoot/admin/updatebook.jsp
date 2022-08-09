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
  <script language="JavaScript">
		function check11()
			{
				
				if (document.form1.name.value == "" ) 
				{
					alert("菜品名称不能为空!");
					document.form1.name.focus();
					return false;
				}
				if (document.form1.author.value == ""  )  
				{
					alert("厨师不能为空!");
					document.form1.author.focus();
					return false;
				}
				if (document.form1.publishing.value == ""  )  
				{
					alert("厨房号不能为空!");
					document.form1.publishing.focus();
					return false;
				}
				if (document.form1.number.value == ""  )  
				{
					alert("菜号不能为空!");
					document.form1.number.focus();
					return false;
				}				
				if (document.form1.price.value == ""  )  
				{
					alert("单价不能为空!");
					document.form1.price.focus();
					return false;
				}				
				if (document.form1.storage.value == ""  )  
				{
					alert("成菜数量不能为空!");
					document.form1.storage.focus();
					return false;
				}				
				if (document.form1.brief.value == ""  )  
				{
					alert("内容概要不能为空!");
					document.form1.brief.focus();
					return false;
				}
			}
</script>
<%
String ok = (String)request.getAttribute("ok");
if(ok != null && ok.equals("1")){
%><script>alert('修改成功!')</script><%
}
 %> 
	<jsp:include flush="true" page="/servlet/SessAdminServlet"/> 
  <body>
	<div align="center">
	<jsp:include flush="true" page="/servlet/ListServlet"/>
	<jsp:include flush="true" page="/admin/top.jsp"/>
	<form action="servlet/UpdateBookServlet" method="post" name="form1" onSubmit="return check11()">
	<table border="1" width="47%" bordercolorlight="#C0C0C0">
	<%
	 ArrayList al = (ArrayList)request.getAttribute("bookinf");
 	 ArrayList bookinf = (ArrayList)al.get(0);
 	 ArrayList type = (ArrayList)request.getAttribute("type");
	 %>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right" width="27%">菜品名称：</td>
			<td height="25" bgcolor="#FFE3BB" width="70%">
			<input type="text" name="name" size="45" value="<%=bookinf.get(1)%>"></td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right" width="27%">原&nbsp;&nbsp;&nbsp; 
			料：</td>
			<td height="25" bgcolor="#FFE3BB" width="70%">
			<input type="text" name="author" size="45" value="<%=bookinf.get(2)%>"></td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right" width="27%">单&nbsp;&nbsp;&nbsp; 
			价：</td>
			<td height="25" bgcolor="#FFE3BB" width="70%">
			<input type="text" name="price1" size="45" value="<%=bookinf.get(12)%>"></td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right" width="27%">说&nbsp;&nbsp;&nbsp; 
			明：</td>
			<td height="25" bgcolor="#FFE3BB" width="70%">
			<textarea rows="12" name="brief" cols="43"><%=bookinf.get(7)%></textarea></td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right" width="27%">菜品类别：</td>
			<td height="25" bgcolor="#FFE3BB" width="70%">
			<select name="type">
			<%
            for(int i = 0;i < type.size();i++){
            	ArrayList alRow = (ArrayList)type.get(i);
            	if(alRow.get(0).equals(bookinf.get(8))){ 
            %>
             <option value="<%=alRow.get(0)%>" selected><%=alRow.get(1)%></option>
              <%}else{
              %><option value="<%=alRow.get(0)%>"><%=alRow.get(1)%></option><%
              } }%>
			</select></td>
		</tr>
		<tr><input type="hidden" name="id" value="<%=bookinf.get(0)%>"/>
			<td height="25" bgcolor="#66CCFF" align="center" colspan="2">
			<input type="submit" value="修改"></td>
		</tr>
		</table>
	</form>
  	</div>
  </body>
</html>