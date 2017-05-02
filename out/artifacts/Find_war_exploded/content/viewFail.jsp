<%@ page contentType="text/html; charset=gbk" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="author" content="Yeeku.H.Lee(CrazyIt.org)" />
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<title>所有流拍的物品</title>
</head>
<body>
<table width="1300" height="430" align="center" cellspacing="0"
	background="">
<tr>
<td>
<table class="table table-border table-bordered table-hover table-bg table-sort">
<tr>
	<td colspan="4" ><div class="mytitle">所有流拍的物品</div></td> 
</tr>
<tr  class="text-c">
	<th>物品名</th>
	<th>物品种类</th>
	<th>赢取价格</th>
	<th>物品备注</th>
</tr>
<s:iterator value="failItems" id="item" status="st">	
	<tr class="text-c">
	<td><s:property value="name"/></td>
	<td><s:property value="kind"/></td>
	<td><s:property value="maxPrice"/></td>
	<td><s:property value="remark"/></td>
</tr>
</s:iterator>
</table>
</td>
</tr>
</table>
</body>
</html>