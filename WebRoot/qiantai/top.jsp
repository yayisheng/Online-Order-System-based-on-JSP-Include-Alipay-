<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>���϶���</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link href="img/lucfron.css" type="text/css" rel="stylesheet" />

	</head>

	<body topmargin="0" leftmargin="0" rightmargin="0">
		<div align="center">
			<center>
				<table style="width:942px; height: 30px;" cellpadding="0"
					cellspacing="0">
					<tr>
						<td
							style="width: 518px; background-color: #fef6e1; text-align: left;">
							���ã����϶��͸���~������~ &nbsp;&nbsp;&nbsp;&nbsp;
							 &nbsp;
							<span style="color: #ff6600"><a
								href="qiantai/reg.jsp">����ע��</a>
							</span>
						</td>
						<td
							style="width: 512px;background-color: #fef6e1; text-align: right;">
							&nbsp; ������˿��֣�����Ҽ����ղذɣ�
							<span style="font-size: 10pt; color: #ff6600">|</span>
							<a href="admin/index.jsp">��̨��¼</a>
							<span style="font-size: 10pt; color: #ff6600">|</span>
							<a href="qiantai/index.jsp">������ҳ</a>
							<span style="font-size: 10pt; color: #ff6600">|</span>
							<input type=button value=�����ղؼ�
								onclick="window.external.AddFavorite('', '����')">
						</td>
					</tr>
				</table>
			</center>
			<div>
				<img src="img/bg.jpg"  height="200" width="900"/>
			</div>
			<table border="0" width="942" cellspacing="0" cellpadding="0"
				id="table1" height="42">
				<tr>
					<td background="img/bg1.jpeg">
						<div align="center">
							<table border="0" width="90%" id="table2" cellpadding="0"
								height="100%" cellspacing="0">
								<tr>
									<td align="center">
										<a class="linkbody" href="qiantai/index.jsp">[ ��ҳ ]</a>
									</td>
									<td align="center">
										<a class="linkbody" href="qiantai/reg.jsp">[ �û�ע�� ]</a>
									</td>
									<td align="center">
										<a class="linkbody" href="servlet/ShowUserServlet">[ �û�����
											]</a>
									</td>
									<td align="center">
										<a class="linkbody" href="qiantai/getback_pwd.jsp">[ �һ�����
											]</a>
									</td>
									<td align="center">
										<a class="linkbody" href="qiantai/search.jsp">[ �͵����� ]</a>
									</td>
									<td align="center">
										<a class="linkbody" href="servlet/ShoppingServlet">[ ���ͳ� ]</a>
									</td>
									<td align="center">
										<a class="linkbody" href="qiantai/nutrition_list.jsp">[
											Ӫ��С��ʿ ]</a>
									</td>
									<td align="center">
										<a class="linkbody" href="qiantai/leave_word.jsp">[ �������� ]</a>
									</td>
									<td align="center">
										<a class="linkbody" href="servlet/RemoveServlet?login=1">[
											ע���˳� ]</a>
									</td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
			</table>
		</div>

	</body>
</html>
