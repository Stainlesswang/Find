<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="author" content="Yeeku.H.Lee(CrazyIt.org)" />
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<title>出错提示页</title>
</head>
<body>
<table width="1300" height="430" align="center" cellspacing="0"
	>
<tr> 
	<td height="39" valign="top">
		<div align="center" style="font-size:11pt;color:red;font-weight:bold">
			系统处理过程中发生了一个错误，信息如下：</div>
	</td>
</tr>
<tr>
	<td height="100">
		<center>
		<div class="error"><br /><br />
		<s:property value="errMsg"/>
		</div>
		</center>
	</td>
</tr>
</table>
</body>
</html>