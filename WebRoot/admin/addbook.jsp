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
					alert("菜品名称不可以为空!");
					document.form1.name.focus();
					return false;
				}
				if (document.form1.author.value == ""  )  
				{
					alert("原料不可以为空!");
					document.form1.author.focus();
					return false;
				}				
				if (document.form1.price1.value == ""  )  
				{
					alert("菜品单价不可以为空!");
					document.form1.price1.focus();
					return false;
				}				
				if (document.form1.brief.value == ""  )  
				{
					alert("说明不可以为空!");
					document.form1.brief.focus();
					return false;
				}
								
				if (document.form1.img.value == ""  )  
				{
					alert("上传图片不可以为空!");
					document.form1.img.focus();
					return false;
				}
			}
</script>
<%
String error = (String)request.getAttribute("error");
if(error != null && error.equals("1")){
%><script>alert('菜品名称重复!')</script><%
}
 %> 
	<jsp:include flush="true" page="/servlet/SessAdminServlet"/> 
  <body style="background:url(img/bg1.jpeg)">
	<div align="center">
	<jsp:include flush="true" page="/servlet/ListServlet"/>
	<jsp:include flush="true" page="/admin/top.jsp"/>
	<form action="servlet/AddBookServlet" method="post" name="form1" onSubmit="return check11()" enctype="multipart/form-data">
	<table border="1" width="50%" bordercolorlight="#C0C0C0">
	<%
 	 ArrayList type = (ArrayList)request.getAttribute("type");
	 %>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right" width="31%">菜品名称：</td>
			<td height="25" bgcolor="#FFE3BB" width="66%">
			<input type="text" name="name" size="45"></td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right" width="31%">原&nbsp;&nbsp;&nbsp; 
			料：</td>
			<td height="25" bgcolor="#FFE3BB" width="66%">
			<input type="text" name="author" size="45"></td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right" width="31%">单&nbsp;&nbsp;&nbsp; 
			价：</td>
			<td height="25" bgcolor="#FFE3BB" width="66%">
			<input type="text" name="price1" size="45"></td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right" width="31%">说&nbsp;&nbsp;&nbsp; 
			明：</td>
			<td height="25" bgcolor="#FFE3BB" width="66%">
			<textarea rows="12" name="brief" cols="43"></textarea></td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right" width="31%">菜品类别：</td>
			<td height="25" bgcolor="#FFE3BB" width="66%">
			<select name="type">
			<%
            for(int i = 0;i < type.size();i++){
            	ArrayList alRow = (ArrayList)type.get(i);
            %>
             <option value="<%=alRow.get(0)%>"><%=alRow.get(1)%></option>
             <%}%>
			</select>
			</td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right" width="31%">
			上传菜品相关图片：</td>
			<td height="25" bgcolor="#66CCFF" width="66%">
			<input type="file" name="img" size="34"></td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="center" colspan="2">
			<input type="submit" value="添加"></td>
		</tr>
		</table>
	</form>
  	</div>
  </body>
</html>