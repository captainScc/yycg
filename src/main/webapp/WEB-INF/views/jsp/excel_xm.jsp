<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>数据列表</title>
    <script src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        html,body{
            width: 100%;
            height: 100%;
        }
        header{
            width: 100%;
            height: 50px;
            background: url(${pageContext.request.contextPath }/images/20613.jpg) center center;
        }
        header div{
            width: auto;
            height: 100%;
            line-height: 50px;
            float: right;
            margin-right: 50px;
        }
        .container{
            width: 94%;
            height: auto;
            margin: 20px auto;
            background: #E0E0E0;
        }
        thead th{
            height: 24px;
            line-height: 24px;
            font-size: 12px;
            font-weight: normal;
        }
        tbody td{
            text-align: center;
            border:1px solid #ACD6FF;
        }
        tbody tr:nth-child(even) {
            background:#FCFCFC;
        }
        .list{
            margin: 20px 0;
        }
        .dao{
            margin: 10px 0;
        }
        .title{
            float: left;
            margin-left: 50px;
        }
        button{
            width: 50px;
            height: 50px;
        }
    </style>
</head>
<body>
<%
    HttpSession httpSession = request.getSession();
    String username = (String)httpSession.getAttribute("username");
%>
<header>
    <div class="title">迅迈（上海）文化传播有限公司</div>
    <div>${username},您好</div>
</header>
<div class="container">
    <div class="dao">
        <a id="export" href="javascript:void(0);">导出</a>
        <c:if test="${username == 'liwenfeng'}">
            <a href="${pageContext.request.contextPath }/import.do">导入</a>
        </c:if>
    </div>
    <form id="selectForm" action="${pageContext.request.contextPath }/selectData.do" method="post">
        开始时间：
        <input id="startTime" type="text" name="startTime" value="${startTime}" />
        结束时间：
        <input id="endTime" type="text" name="endTime" value="${endTime}" />
        名称:
        <select id="cpmc" name="name" style="width: 150px">
            <option value="">全部</option>
            <c:forEach	items="${stringList}" var="name">
                <option value="${name}">${name}</option>
            </c:forEach>
        </select>
        <button type="submit" >确定</button>
    </form>

    <div class="list">列表：</div>
    <table border="0" cellspacing="0" cellpadding="0" width="80%">
        <thead>
        <tr>
            <th>行号</th>
            <th>日期</th>
            <th>产品名称</th>
            <th>收入</th>
            <th>推广个数</th>
            <th>单价</th>
            <th>渠道</th>
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
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
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
                    name:$("#cpmc").val()
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

        $("#cpmc").val("${name}");
    });
</script>

</body>
</html>
