<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<jsp:include page="baseCss.jsp"></jsp:include>
<link rel="shortcut icon" href="favicon.ico">
<!-- jqgrid-->
<link href="/static/css/plugins/jqgrid/ui.jqgrid.css-0820.css" rel="stylesheet">

</head>
<body>
	<div class="col-sm-6">
		<div class="ibox">
			<div class="ibox-content">
				<div class="ibox-content">
					<div class="row form-body form-horizontal m-t">
						<div class="col-md-12 droppable sortable ui-droppable ui-sortable"
							style="display: none;"></div>
						<div class="col-md-6 droppable sortable ui-droppable ui-sortable"
							style="">
							<div class="form-group draggable ui-draggable dropped"
								style="position: static;">
								<label class="col-sm-3 control-label">教师姓名：</label>
								<div class="col-sm-9">
									<input type="text" name="xingming" class="form-control"
										placeholder="教师姓名">

								</div>
							</div>
							<div class="form-group draggable ui-draggable dropped"
								style="position: static;">
								<label class="col-sm-3 control-label">电话号码：</label>
								<div class="col-sm-9">
									<input type="text" name="tel" class="form-control"
										placeholder="电话号码">
								</div>
							</div>
							<div class="form-group draggable ui-draggable dropped"
								style="position: static;">
								<label class="col-sm-3 control-label">证件号码：</label>
								<div class="col-sm-9">
									<input type="text" name="zhengjianhaoma" class="form-control"
										placeholder="证件号码">
								</div>
							</div>
							<div class="form-group draggable ui-draggable dropped"
								style="position: static;">
								<label class="col-sm-3 control-label">所属校区：</label>
								<div class="col-sm-9">
									<select class="form-control" name="xiaoqu">
										<option value="0" selected="selected">海淀校区</option>
										<option value="1">朝阳校区</option>
										<option value="2">丰台校区</option>
										<option value="3">顺义校区</option>
									</select>
								</div>
							</div>
						</div>
						<div class="col-md-6 droppable sortable ui-droppable ui-sortable"
							style="">
							<div class="form-group draggable ui-draggable dropped"
								style="position: static;">
								<label class="col-sm-3 control-label">全职/兼职：</label>
								<div class="col-sm-9">
									<select class="form-control" name="quanzhi">
										<option value="1" selected="selected">全职</option>
										<option value="0">兼职</option>
									</select>
								</div>
							</div>
							<div class="form-group draggable ui-draggable dropped"
								style="position: static;">
								<label class="col-sm-3 control-label">学历：</label>
								<div class="col-sm-9">
									<select class="form-control" name="xueli">
										<option value="0" selected="selected">大专</option>
										<option value="1">本科</option>
										<option value="2">研究生</option>
										<option value="3">硕士</option>
									</select>
								</div>
							</div>
							<div class="form-group draggable ui-draggable dropped"
								style="position: static;">
								<label class="col-sm-3 control-label">擅长学科：</label>
								<div class="col-sm-9">
									<select class="form-control" name="shanchengxueke">
										<option value="0" selected="selected">语文</option>
										<option value="1">英语</option>
										<option value="2">数学</option>
										<option value="3">化学</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="ibox-content">
						<jsp:include page="teacherTable.jsp"/>
					</div>
				</div>

				
			</div>

		</div>
	</div>
	<jsp:include page="baseJs.jsp"></jsp:include>
	<script src="/static/js/plugins/jqgrid/i18n/grid.locale-cn.js-0820"></script>
	<script src="/static/js/plugins/jqgrid/jquery.jqGrid.min.js-0820"></script>
	<script src="/static/js/plugins/peity/jquery.peity.min.js"></script>
</body>

<script type="text/javascript">
function techerQuery(){
	//查询	/teacherQuery.html
	$.ajax({
		type: 'POST',
	    url: "/teacherQuery.html" ,
	    data: {
	    	"xingming":$("input[name='xingming']").val()
	    } ,
	    cache:false,  
	    dataType:'json',  
	    success:function(data) {
	    	$("#teacherTable").empty();
				for(var i = 0; i < data.length; i++){
					$("#teacherTable").append('<tr> <td>'+i+'</td> <td>'+data[i].xingming+'</td> <td>'+data[i].ruzhiriqi+'</td> <td>'
							+data[i].bumen+'</td> <td>'+data[i].zhiwu+'</td> <td>'+data[i].zhiji+'</td> <td>'+data[i].gongzifangan
							+'</td> <td>'+data[i].tel+'</td> <td>'+data[i].qq+'</td> <td>'+data[i].weixin+'</td> <td>'+data[i].beixianlianxiren+'</td> <td>'+data[i].beixuanlianxirentel+'</td></tr>');
				}	    	
	     },  
	     error : function(data) {
	     }  

	});
	
}
</script>
</html>