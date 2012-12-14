<#include "inc/header.ftl">

<h1>设置</h1>

<table width="100%" class="listt">
	<tbody>
	<#list settings as s>
	<tr id="tr${s.name}">
		<td width="120" align="right">${s.description}: <input type="hidden" name="name" id="name${s.name}" value="${s.name}" ></td>
		<td>
			<textarea name="value" id="value${s.name}" class="shadowfocus" style="width: 95%; height: 50px;">${s.value}</textarea>
		</td>
		<td width="50">
			<input type="button" class="btn2 shadowhover2" value="修改" onclick="save('${s.name}')">
		</td>
	</tr>
	</#list>
	</tbody>
</table>

<script type="text/javascript" src="http://lib.sinaapp.com/js/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript">
function save(name) {
	$.ajax({
		url: "${ctxPath}/admin/setting",
		data: { name: $("#name" + name).val(), value: $("#value" + name).val() },
		type: "POST",
		success: function(tagid) {
		}
	});
}
</script>
<#include "inc/footer.ftl">