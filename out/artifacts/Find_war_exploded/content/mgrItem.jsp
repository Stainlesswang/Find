
<%@ page contentType="text/html; charset=gbk" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="author" content="Yeeku.H.Lee(CrazyIt.org)" />
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<title>�����ҵķ���</title>
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
	<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a  onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> ����ɾ��</a>
		<a class="btn btn-primary radius" data-title="�����Ѷ" _href="article-add.html" onclick="article_add('������ʧ��Ϣ','viewFailItem.action','','510')" ><i class="Hui-iconfont">&#xe600;</i> ������ʧ</a></span> </div>


	<div class="row cl" id="from_div" hidden="hidden">
		<s:actionerror/>
		<s:form class="form form-horizontal"  action="proAddItem">
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">��Ʒ����</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text"  name="item.itemName">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">��ϸ��ַ��</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" name="item.itemDesc">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">���ڳ��У�</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" name="item.itemRemark">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">���ͣ�</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="number" class="input-text"  name="item.initPrice">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">��Ʒ������</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text"  name="item.beizhu">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>������Ŀ��</label>
				<div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
					<select name="avail" class="select">
						<option value="1">һ��</option>
						<option value="2">����</option>
						<option value="3">����</option>
						<option value="4">����</option>
						<option value="5">����</option>
						<option value="6">һ������</option>
						<option value="7">һ����</option>
						<option value="8">һ��</option>
					</select>
				</span>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>������Ŀ��</label>
				<div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
				<select  name="kindId"  class="select"  >
					<s:iterator id="kind" value="kinds" >
						<option value="<s:property value="id"/>"><s:property value="kindName"/></option>
					</s:iterator>
				</select>
				</span>
				</div>
			</div>
			<div class="row cl">
				<div class="formControls col-xs-8 col-xs-offset-3">
					<input name="vercode" class="input-text size-L" type="text" placeholder="��֤��" onblur="if(this.value==''){this.value='��֤��:'}" onclick="if(this.value=='��֤��:'){this.value='';}" value="��֤��:" style="width:150px;"/>
					<img src="auth.jpg"> <a id="kanbuq" href="javascript:;">�����壬��һ��</a> </div>
			</div>
			<div class="row cl">
				<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
					<button class="btn btn-primary radius" type="submit"><i class="Hui-iconfont">&#xe632;</i> ���沢�ύ���</button>
					<button onClick="cancel();" class="btn btn-default radius" type="button">&nbsp;&nbsp;ȡ��&nbsp;&nbsp;</button>
				</div>
			</div>
		</s:form>
	</div>
	<table class="table table-border table-bordered table-bg table-hover table-sort">
		<tr class="text-c">
			<td><b>��Ʒ��</b></td>
			<td><b>����ʱ��</b></td>
			<td><b>��Ʒ����</b></td>
			<td><b>Ӯȡ�۸�</b></td>
			<td><b>��Ʒ��ע</b></td>
			<td><b>����</b></td>
		</tr>
		<s:iterator id="item" value="items" status="st">
			<tr class="text-c">
				<td><s:property value="name"/></td>
				<td><s:property value="addTime"/></td>
				<td><s:property value="kind"/></td>
				<td><s:property value="maxPrice"/></td>
				<td><s:property value="remark"/></td>
				<td class="f-14 td-manage"><i class="Hui-iconfont">&#xe6de;</i></a> <a style="text-decoration:none" class="ml-5" onClick="article_edit('��Ѷ�༭','article-add.html','10001')" href="javascript:;" title="�༭"><i class="Hui-iconfont">&#xe6df;</i></a> <a style="text-decoration:none" class="ml-5" onClick="article_del(this,'10001')" href="javascript:;" title="ɾ��"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
			</tr>
		</s:iterator>
	</table>

</div>


<script type="text/javascript">
	$('.table-sort').dataTable({
		"aaSorting": [[ 2, "desc" ]],//Ĭ�ϵڼ�������
		"bStateSave": true,//״̬����
		"aoColumnDefs": [
			//{"bVisible": false, "aTargets": [ 3 ]} //�����е�������ʾ
			{"orderable":false,"aTargets":[0,5]}// �������������
		]
	});

	function cancel(){
		$("#from_div").hide();
	}
	/*��Ѷ-���*/
	function article_add(title,url,w,h){
		$("#from_div").show();
//		var index = layer.open({
//			type: 2,
//			title: title,
//			content: url
//		});
//		layer.full(index);
	}
	/*��Ѷ-�༭*/
	function article_edit(title,url,id,w,h){
		var index = layer.open({
			type: 2,
			title: title,
			content: url
		});
		layer.full(index);
	}
	/*��Ѷ-ɾ��*/
	function article_del(obj){
		layer.confirm('ȷ��Ҫɾ����',function(index){


			var cardtr= $(obj).parents("tr");
			var cardid=cardtr.find("td").eq(1);

			$.ajax({
				type: "POST",
				url : "/appshop/deletecard?cardid="+cardid.text(),
				success: function(){
					layer.msg('��ɾ������!',{icon:1,time:1000});
					$(obj).parents("tr").remove();
				},
				error : function(){
					layer.msg('ɾ��ʧ�ܣ�',{icon:1,time:1000});
				}
			})

		});;
	}
</script>
</body>

</html>