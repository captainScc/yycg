<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/common/tag.jsp"%>
<html> 
<head>
<title>数据导入</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<script src="${baseurl}/js/jquery-1.11.3.min.js"></script>
	<style>
		#zz{
			width:100%;
			height:100%;
			position: fixed;
			top:0;
			left:0;
			background: rgba(0,0,0,0.5);
			z-index: 99;
			display: none;
		}
		img{
			width:100px;
			height: 100px;
			position: fixed;
			top:50%;
			left:50%;
			margin-top:-50px;
			margin-left:-50px;
			z-index: 100;
			display: none;
		}
	</style>

<%@ include file="/common/common_css.jsp"%>
<%@ include file="/common/common_js.jsp"%>

<script lang="text/javascript">
$(function(){
	//***********按钮**************
	$('#submitbtn').linkbutton({   
		iconCls: 'icon-ok'  
	});  
	$('#closebtn').linkbutton({   
		iconCls: 'icon-cancel'  
	});
});
//文件导入提交
function importexcelsubmit(){
	jquerySubByFId('importexcelForm',importexcelsubmit_callback,null);
	$("#zz").show();
	$("img").show();
}
function importexcelsubmit_callback(data){
	$("#zz").hide();
	$("img").hide();
	_alert(data);

}
</script>

</head>
<body>
<div id="zz"></div>
<img src="${baseurl}/images/dots_2.gif">
<form id="importexcelForm" name="excelimportForm" action="${baseurl}/importData.do" method="post" enctype="multipart/form-data">
<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" bgColor=#c4d8ed>
		<TBODY>
			<TR>
				<TD background=images/r_0.gif width="100%">
					<TABLE cellSpacing=0 cellPadding=0 width="100%">
						<TBODY>
							<TR>
								<TD>&nbsp;数据导入</TD>
								<TD align=right>&nbsp;</TD>
							</TR>
						</TBODY>
					</TABLE>
				</TD>
			</TR>
			<TR>
				<TD>
					<TABLE class="toptable grid" border=1 cellSpacing=1 cellPadding=4
						align=center>
						<TBODY>
							<TR>
								<TD height=30 align=right>导入说明：</TD>
								<TD >
								1、导入文件为Excel 97-2003版本，文件扩展名为.xls，如果使用高版本的Excel请另存为Excel 97-2003版本。
								<br>2、点击 <a class="blue" href="${baseurl}/template/template.xls">数据导入模板</a> 下载，并按照说明录入数据。
								<br>3、导入文件内容填写完毕请在下方选择导入文件，点击 导入按钮。
								</TD>
							</TR>
							<TR>
								<TD height=30 align=right>选择导入文件</TD>
								<TD class=category>
								<input type="file" name="file" />
								</TD>
							</TR>
							<TR>
								<TD colspan=2  align=center class=category>
									<a id="submitbtn" href="#" onclick="importexcelsubmit()">导入</a>
									<!-- <a id="closebtn" href="#" onclick="parent.closemodalwindow()">关闭</a> -->
								</TD>
							</TR>
						</TBODY>
					</TABLE>
				</TD>
			</TR>
		</TBODY>
	</TABLE>
</form>

</body>

</html>

