<%@ page contentType="text/html; charset=gbk" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="author" content="Yeeku.H.Lee(CrazyIt.org)" />
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<title>选择物品种类</title>
</head>
<body>
<table width="1300" height="430" align="center" cellspacing="0"
	background="">
<tr>
<td>
<s:actionerror/>
<table width="80%" align="center" cellpadding="0"
	cellspacing="1" style="border:1px solid black">
<tr>
	<td colspan="4"><div class="mytitle">请选择需要浏览的物品种类</div></td> 
</tr>
<s:iterator id="kind" value="kinds" status="st">
<tr height="24" <s:if test="#st.odd">
	style="background-color:#dddddd"</s:if>
	<s:else>style="background-color:#eeeeee"</s:else>>
<td>种类名</td>
<td><a href='viewItem.action?kindId=<s:property value="id"/>'>
<s:property value="kindName"/></a></td>
</tr>
<tr height="24" <s:if test="#st.odd">
	style="background-color:#dddddd"</s:if>
	<s:else>style="background-color:#eeeeee"</s:else>>
<td>种类描述</td>
<td><s:property value="kindDesc"/></td>
</tr>
</s:iterator>
</table>
</td>
</tr>
</table>
</body>
</html>