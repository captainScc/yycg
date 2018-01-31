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
        .title{
            float: left;
            margin-left: 50px;
        }
        header{
            width: 100%;
            height: 50px;
            background: #0092EF;
        }
        header div{
            width: auto;
            height: 100%;
            line-height: 50px;
            float: right;
            margin-right: 50px;
        }
        .container{
            width: 82%;
            height: auto;
            padding: 20px;
            background: #ECFFFF;
            float: right;
        }
        form{
            margin: 5px 0 20px;
        }
        form input{
            width: 15%;
            height: 30px;
            margin-right: 20px;
            font-size: 14px;
            line-height: 1.428571429;
            color: #555555;
            vertical-align: middle;
            background-color: #ffffff;
            background-image: none;
            border: 1px solid #cccccc;
            border-radius: 4px;
        }
        form select{
            width: 15%;
            height: 30px;
            margin-right: 20px;
            font-size: 14px;
            line-height: 1.428571429;
            color: #555555;
            vertical-align: middle;
            background-color: #ffffff;
            background-image: none;
            border: 1px solid #cccccc;
            border-radius: 4px;
        }
        form button{
            background: #B1D2EC;
            border-color: #009FCC;
            display: inline-block;
            margin-bottom: 0;
            font-weight: normal;
            text-align: center;
            vertical-align: middle;
            cursor: pointer;
            background-image: none;
            border: 1px solid transparent;
            white-space: nowrap;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.428571429;
            border-radius: 4px;
        }
        .dao{
            margin-bottom: 20px;
        }
        .dao a{
            background: #B1D2EC;
            border-color: #009FCC;
            display: inline-block;
            margin-bottom: 0;
            font-weight: normal;
            text-align: center;
            vertical-align: middle;
            cursor: pointer;
            background-image: none;
            border: 1px solid transparent;
            white-space: nowrap;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.428571429;
            border-radius: 4px;
            text-decoration: none;
            color:#000;
        }
        thead th{
            background: #7288A0;
            color: #fff;
            height: 24px;
            line-height: 24px;
            font-size: 12px;
            font-weight: normal;
        }
        tbody td{
            text-align: center;
            border: 1px solid #CECEFF;
        }
        tbody tr:nth-child(even) {
            background:#EBF0F3;
        }
        .list{
            margin: 20px 0;
        }
        .left{
            width: 200px;
            height: 100%;
            background: #fff;
            float: left;
            border-right: 1px solid #ccc;
        }
    </style>
</head>
<body>
<%
    HttpSession httpSession = request.getSession();
    String username = (String)httpSession.getAttribute("username");
%>
<header>
    <div>${username},您好</div>
</header>
<div class="left">
    <div class="title">北京瑞萨斯科技有限公司</div>
</div>
<div class="container">
    <div class="tiao">查询条件：</div>
    <form id="selectForm" action="${pageContext.request.contextPath }/selectData.do" method="post">
        <input id="startTime" type="text" name="startTime" value="${startTime}" placeholder="开始时间"/>
        <input id="endTime" type="text" name="endTime" value="${endTime}" placeholder="结束时间"/>
        名称:
        <select id="cpmc" name="name" style="width: 150px">
            <option value="">全部</option>
            <c:forEach	items="${stringList}" var="name">
                <option value="${name}">${name}</option>
            </c:forEach>
        </select>
        <button type="submit" >查询</button>
    </form>
    <div class="dao">
        <a id="export" href="javascript:void(0);">导出</a>
        <c:if test="${username == 'liwenfeng'}">
            <a href="${pageContext.request.contextPath }/import.do">导入</a>
        </c:if>
    </div>
    <div class="list">数据列表：</div>
    <table border="0" cellspacing="0" cellpadding="0" width="96%">
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
