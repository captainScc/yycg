<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/easyui/jquery.easyui.1.4.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>数据列表</title>
</head>
<body>
<%
    HttpSession httpSession = request.getSession();
    String username = (String)httpSession.getAttribute("username");
%>
<header>
    <div class="title">珠海慈心园投资有限公司</div>
    <div>${username},您好</div>
</header>
<div>
    <form id="selectForm" action="${pageContext.request.contextPath }/selectData.do" method="post">

        开始日期:
        <input id="startTime" type="text" name="startTime"  value="${startTime}" placeholder="yyyy-mm-dd"/>
        结束日期:
        <input id="endTime" type="text" name="endTime" value="${endTime}" placeholder="yyyy-mm-dd"/>
        应用:
        <select id="cpmc" name="name" style="width: 150px">
            <option value="">全部</option>
            <c:forEach	items="${stringList}" var="name">
                <option value="${name}">${name}</option>
            </c:forEach>
        </select>
        <button type="submit" >搜索</button>
    </form>
    <div class="dao">
        <a id="export" href="javascript:void(0);">导出</a>
        <c:if test="${username == 'liwenfeng'}">
            <a href="${pageContext.request.contextPath }/import.do">导入</a>
        </c:if>
    </div>
    <div class="list">数据列表：</div>
    <table border="1" cellspacing="0" cellpadding="0" width="85%">
        <thead>
        <tr>
            <th>行号</th>
            <th>日期</th>
            <th>产品名称</th>
            <th>收入</th>
            <th>推广个数</th>
            <th>单价</th>
            <th>渠道</th>
            <th>投放模式</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${excelList }" var="excel" varStatus="vs">
            <tr>
                <c:if test="${pageIndex-1<0}">
                    <td>${vs.index+1}</td>
                </c:if>
                <c:if test="${pageIndex-1>=0}">
                    <td>${vs.index+1+(pageIndex-1)*50}</td>
                </c:if>
                <td>${excel.theday }</td>
                <td>${excel.name }</td>
                <td>${excel.income }</td>
                <td>${excel.num }</td>
                <td>${excel.price }</td>
                <td>${excel.channel }</td>
                <td>${excel.model }</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div>
        <c:forEach begin="1" end="${totalPage}" step="1" var="i">
            <c:if test="${pageIndex == i}">
                <a style="color:red;font-weight:bolder" href="${pageContext.request.contextPath }/selectData.do?pageIndex=${i}&startTime=${startTime}&endTime=${endTime}&name=${name}">${i}</a>
            </c:if>
            <c:if test="${pageIndex != i}">
                <a href="${pageContext.request.contextPath }/selectData.do?pageIndex=${i}&startTime=${startTime}&endTime=${endTime}&name=${name}">${i}</a>
            </c:if>
        </c:forEach>
    </div>
</div>

<script type="text/javascript">
    $(function(){
        //异步加载下拉框
        $.ajax({
            url:"${pageContext.request.contextPath }/getNameList.do",
            async:true,
            data:"",
            dataType:"text",
            success:function() {

            }
        });

        /*var startTime = ${startTime};
        <c:if test="startTime == null || startTime == ''">
         startTime = "2016-01-01";
        </c:if>
         var endTime = ${endTime};
        <c:if test="endTime == null || endTime == ''">
         endTime = "2019-01-01";
        </c:if>
         var name = ${name};
        <c:if test="name == null">
         name = "";
        </c:if>*/

        $("body").on("click","#export",function() {
            $.ajax({
                url:"${pageContext.request.contextPath }/export.do",
                async:true,
                data:{
                    startTime:$("#startTime").val(),
                    endTime:$("#endTime").val(),
                    name:$("#name").val()
                },
                dataType:"text",
                success:function(res) {
                    console.log(res)
                    $("html").html(res);
                }
            });
        });

        $("#cpmc").change(function() {
            gameType = $("#cpmc option:selected").html();
            console.log(gameType)
        });

    });
</script>

</body>
</html>