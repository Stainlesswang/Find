<%@ page contentType="text/html; charset=gbk" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="author" content="Yeeku.H.Lee(CrazyIt.org)" />
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<title>��������е���Ʒ</title>
</head>
<body>
<table width="1300"  height="430" align="center" cellspacing="0"
	background="">
<tr>
<td>
<br />
<s:actionerror/>
<table class="table table-border table-bordered table-bg table-hover table-sort">
  <tr class="text-c" >
    <th>��Ʒ��</th>
    <th>����ʱ��</th>
    <th>���ͻ���</th>
    <th>������</th>
    <th>���ڳ���</th>
    <th>����</th>
  </tr>
<s:iterator id="item" value="items" status="st">
<tr class="text-c">
<td><a href='viewDetail.action?itemId=<s:property value="id"/>'>
<s:property value="name"/></a></td>
<td><s:property value="addTime"/></td>
<td><s:property value="initPrice"/></td>
<td><s:property value="owner"/></td>
<td><s:property value="remark"/></td>
  <td><s:property value="beizhu"/></td>
</tr>
</s:iterator>
</table>
</td>
</tr>
</table>
</body>
</html>