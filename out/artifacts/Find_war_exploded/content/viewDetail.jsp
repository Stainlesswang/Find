<%@ page contentType="text/html; charset=gbk" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="author" content="Yeeku.H.Lee(CrazyIt.org)" />
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<title>��Ʒ��ϸ��Ϣ</title>
</head>
<body>
<div class="page-container">
<div class="text-c"> <span class="select-box inline">
		<select name="" class="select">
			<option value="0">ȫ������</option>
			<option value="1">����һ</option>
			<option value="2">�����</option>
		</select>
		</span> ���ڷ�Χ��
	<input type="text" onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}'})" id="logmin" class="input-text Wdate" style="width:120px;">
	-
	<input type="text" onfocus="WdatePicker({minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d'})" id="logmax" class="input-text Wdate" style="width:120px;">
	<input type="text" name="" id="" placeholder=" ��Ѷ����" style="width:250px" class="input-text">
	<button name="" id="" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> ����Ѷ</button>
</div>
<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l">
		<a class="btn btn-primary radius"><i class="Hui-iconfont"></i>��ʧ��ϸ��Ϣ</a></span> </div>

<table class="table table-border table-bordered table-bg table-hover table-sort">
<tr class="text-c">
	<td><b>��Ʒ��</b></td>
	<td><b>��ʧ����</b></td>
	<td><b>��ʧ����</b></td>
	<td><b>��Ʒ����</b></td>
	<td><b>��ʧ��</b></td>
	<td><b>����</b></td>
	<td><b>Ѱ��ʱ��</b></td>
	<td><b>����ʱ��</b></td>
</tr>
<tr  class="text-c">
	<td><s:property value="item.name"/></td>
	<td><s:property value="item.remark"/></td>
	<td><s:property value="item.desc"/></td>
	<td><s:property value="item.kind"/></td>
	<td><s:property value="item.owner"/></td>
	<td><s:property value="item.initPrice"/></td>
	<td><s:property value="item.addTime"/></td>
	<td><s:property value="item.endTime"/></td>
</tr>

</table>
	<div class="panel panel-primary">
		<div class="panel-header"><h2>�����������ṩ<small>���ǽ����ʼ��ķ�ʽ֪ͨ��ʧ��</small></h2></div>
		<div class="panel-body"><div  class="row cl" id="from_div">

			<s:form class="form form-horizontal" action="bid">
				<%--<input type="hidden" name="itemId"--%>
				<%--value="<s:property value='item.id'/>"/>--%>
				<%--<input type="hidden" name="maxPrice"--%>
				<%--value="<s:property value='item.maxPrice'/>"/>--%>
				<%--<s:textfield name="bid.bidPrice" label="���ļ�"/>--%>
				<%--<s:textfield name="vercode" label="��֤��"/>--%>
				<%--<s:submit value="����"/>--%>
				<div class="row cl" hidden="hidden">
					<div class="formControls col-xs-8 col-sm-9">
						<input value="<s:property value='item.id'/>" type="text" class="input-text"  name="itemId">
					</div>
				</div>
				<div class="row cl" hidden="hidden">
					<div class="formControls col-xs-8 col-sm-9">
						<input value="<s:property value='item.initPrice'/>" type="text" class="input-text" name="initPrice">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">���ڳ��У�</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" class="input-text" name="city">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">��ϸ��ַ��</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" class="input-text" name="address">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">��ע��Ϣ��</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input  type="text" class="input-text" name="bid.beizhu">
					</div>
				</div>
				<div class="row cl">
					<div class="formControls col-xs-8 col-xs-offset-3">
						<input name="vercode" class="input-text size-L" type="text" placeholder="��֤��" onblur="if(this.value==''){this.value='��֤��:'}" onclick="if(this.value=='��֤��:'){this.value='';}" value="��֤��:" style="width:150px;"/>
						<img src="auth.jpg"> <a id="kanbuq" href="javascript:;">�����壬��һ��</a> </div>
				</div>
				<div class="row cl">
					<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
						<button class="btn btn-primary radius" type="submit"><i class="Hui-iconfont">&#xe632;</i>�ṩ����</button>
						<button onClick="cancel();" class="btn btn-default radius" type="button">&nbsp;&nbsp;ȡ��&nbsp;&nbsp;</button>
					</div>
				</div>
			</s:form>
		</div></div>
	</div>

	</div>
</body>
</html>