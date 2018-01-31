<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>数据列表</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/libs/layui/css/layui.css">
    <%--<link rel="stylesheet" href="${pageContext.request.contextPath }/libs/layui/css/date.css">--%>
    <script src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        html,body{
            width: 100%;
            height: 100%;
            background:#fff;
        }
        header{
            width: 100%;
            height: 100px;
            background: #fff;
            margin-bottom: 25px;
            border-bottom:1px solid #FDFDFD;
        }
        header div{
            width: auto;
            height: 100%;
            line-height: 100px;
            float: left;
            margin-left: 50px;
            color: #fff;
        <%--background: url(${pageContext.request.contextPath }/images/jinyujiangwo.png) right center no-repeat;--%>
            /*background-size: 20px 20px;*/
            padding-right: 25px;
        }
        .container{
            /*width: 73%;*/
            float: right;
            /*margin:0 3%;*/
            box-shadow: 0px 0px 5px #ccc;
        <%--background: url(${pageContext.request.contextPath }/images/index-bg.jpg) no-repeat center center;--%>
            /*background-size: 100% 100%;*/
        }
        .con{
            width:96%;
            margin:0 auto;
        }
        form{
            width:100%;
            height:218px;
            float: left;

        }
        form input{
            width: 10%;
            height: 34px;
            margin-right: 20px;
            /*margin-left: 20px;*/
            font-size: 14px;
            line-height: 1.428571429;
            color: #555555;
            vertical-align: middle;
            background-color: #ffffff;
            background-image: none;
            border: 1px solid #3C3C3C;
            border-radius: 4px;
        }
        button{
            width: 60px;
            height: 30px;
        }
        table{
            margin:0 auto;
        }
        form select{
            width: 60%;
            height: 38px;
            /*padding: 6px 12px;*/
            margin-right: 8.5%;
            margin-top:10px;
            /*margin-left: 20px;*/
            font-size: 14px;
            line-height: 1.428571429;
            color: #555555;
            vertical-align: middle;
            background-color: #ffffff;
            background-image: none;
            border: 1px solid #e6e6e6;
            border-radius: 4px;
            float: right;
        }
        form button{
            width:210px;
            height:32px;
            line-height:30px;
            background:#FDB803;
            border-color:#FDB803;
            display: inline-block;
            margin-bottom: 0;
            margin-left:10px;
            margin-top:38px;
            font-weight: normal;
            text-align: center;
            vertical-align: middle;
            cursor: pointer;
            background-image: none;
            border: 1px solid transparent;
            white-space: nowrap;
            /*padding: 6px 12px;*/
            font-size: 14px;
            line-height: 1.428571429;
            border-radius: 4px;
            color:#fff;
        }
        .dao{
            float: right;
            margin-bottom: 0px;
            margin-top:15px;
            margin-right: 10px;
        }
        .dao a{
            width: 210px;
            height: 30px;
            line-height: 30px;
            background: #86B817;
            border-color:#86B817;
            display: inline-block;
            margin-bottom: 0;
            font-weight: normal;
            text-align: center;
            vertical-align: middle;
            cursor: pointer;
            background-image: none;
            border: 1px solid transparent;
            white-space: nowrap;
            /*padding: 6px 12px;*/
            font-size: 14px;
            border-radius: 4px;
            text-decoration: none;
            color:#fff;
        }
        thead th{
            background: #fff;
            color: #000;
            height: 24px;
            line-height: 24px;
            font-size: 18px;
            font-weight: normal;
        }
        tbody td{
            text-align: center;
        }
        tbody tr:nth-child(even) {
            background:#F7FBFE;
        }
        .list{
            margin: 20px 0;
        }
        .title{
            width: 350px;
            height:50px;
            float: right;
            margin-right: 50px;
            margin-top: 25px;
        <%--background: url(${pageContext.request.contextPath }/images/logo/bqw.png) no-repeat;--%>
        }
        .title-l{
            width: 314px;
            height:95px;
            float: left;
            margin-top:24.5px;
            background:url(${pageContext.request.contextPath }/images/logo/lsj.png) no-repeat;
        }
        .fen{
            height:50px;
            line-height:40px;
            /*line-height:50px;*/
            /*margin-left:4.5%;*/
            font-size: 18px;
            text-align: center;
            padding-top: 11px;
            background: #fff;
        }
        .fen a{
            display: inline-block;
            width: 25px;
            height:25px;
            line-height:25px;
            text-align: center;
            color:#000;
            text-decoration: none;
            border:1px solid #ccc;
            border-radius: 3px;
            background: #fff;
        }
        .ff{
            width:230px;
            padding:50px 30px 0 30px;
            height:100%;
            float: left;
            background: #F7F7F7;
        }
        .ff-title{
            width: 100%;
            height: 80px;
            background: url(${pageContext.request.contextPath }/images/logo/yfzh.png) no-repeat;
        }
    </style>
</head>
<body>
<%
    HttpSession httpSession = request.getSession();
    String username = (String)httpSession.getAttribute("username");
%>
<%--<header>--%>
    <%--<div class="title"></div>--%>
    <%--<div class="title-l"></div>--%>
<%--</header>--%>
<div class="ff">
    <c:if test="${username == 'liwenfeng'}">
        <a href="${pageContext.request.contextPath }/import.do">导入</a>
    </c:if>
    <div class="ff-title">
    </div>
    <form id="selectForm" style="color:#000" action="${pageContext.request.contextPath }/selectData.do" method="post">

        <div class="" style="width:100%;height: 92px;;float: left">
            <div class="" style="margin-bottom: 0;line-height: 50px">

                <div class="" style="width:250px;">
                    开始日期:
                    <input id="startTime" style="width:60%;float: right;margin-top:5px" type="text" name="startTime" class="layui-input test-item" value="${startTime}">
                </div>

                <div class="" style="width:250px;">
                    结束日期:
                    <input id="endTime" style="width:60%;float: right;margin-top:5px" type="text" name="endTime" class="layui-input test-item" value="${endTime}">
                </div>
            </div>

        </div>


        <%--<input id="startTime" type="text" name="startTime" value="${startTime}"/>--%>

        <%--<input id="endTime" type="text" name="endTime" value="${endTime}"/>--%>
        <div style="line-height:50px; margin-top: 8px;width: 250px;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名称:
            <select id="cpmc" name="name">
                <option value="">全部</option>
                <c:forEach	items="${stringList}" var="name">
                    <option value="${name}">${name}</option>
                </c:forEach>
            </select>
        </div>

        <button type="submit" >查询</button>
    </form>
    <div class="dao">

        <a id="export" href="javascript:void(0);">导出</a>

    </div>
</div>
<div class="container">
    <div class="con">
        <!--<div class="tiao">查询条件：</div>-->


        <!--<div class="list">数据：</div>-->
        <table border="0" cellspacing="0" cellpadding="0" width="100%">
            <thead>
            <tr style="height: 40px">
                <th>行号</th>
                <th>日期</th>
                <th>产品名称</th>
                <th>曝光</th>
                <th>点击</th>
                <th>广告主名称</th>
                <th>投放模式</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${excelList }" var="excel" varStatus="vs">
                <tr style="height: 40px;color:#000">
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
                    <td>${excel.channel }</td>
                    <td>${excel.model }</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div class="fen" id="fenye">
            <%--上一页--%>
            <c:if test="${pageIndex!=1 && pageIndex != null}">
                <a style="color:#000;width: 80px" href="${pageContext.request.contextPath }/selectData.do?pageIndex=${pageIndex-1}&startTime=${startTime}&endTime=${endTime}&name=${name}">上一页</a>
            </c:if>

            <c:if test="${totalPage <= 10}">
                <c:forEach begin="1" end="${totalPage}" step="1" var="i">
                    <c:if test="${pageIndex == i}">
                        <a style="background:#86B817;color:#fff" href="${pageContext.request.contextPath }/selectData.do?pageIndex=${i}&startTime=${startTime}&endTime=${endTime}&name=${name}">${i}</a>
                    </c:if>
                    <c:if test="${pageIndex != i}">
                        <a href="${pageContext.request.contextPath }/selectData.do?pageIndex=${i}&startTime=${startTime}&endTime=${endTime}&name=${name}">${i}</a>
                    </c:if>
                </c:forEach>
            </c:if>
            <c:if test="${totalPage >10}">
                <c:forEach begin="1" end="5" step="1" var="i">
                    <c:if test="${pageIndex == i}">
                        <a style="color:#FA636C;color:#fff" href="${pageContext.request.contextPath }/selectData.do?pageIndex=${i}&startTime=${startTime}&endTime=${endTime}&name=${name}">${i}</a>
                    </c:if>
                    <c:if test="${pageIndex != i}">
                        <a href="${pageContext.request.contextPath }/selectData.do?pageIndex=${i}&startTime=${startTime}&endTime=${endTime}&name=${name}">${i}</a>
                    </c:if>
                </c:forEach>
                &nbsp;&nbsp;...&nbsp;&nbsp;
                <c:forEach begin="${totalPage-5}" end="${totalPage}" step="1" var="i">
                    <c:if test="${pageIndex == i}">
                        <a style="color:#FA636C;color:#fff" href="${pageContext.request.contextPath }/selectData.do?pageIndex=${i}&startTime=${startTime}&endTime=${endTime}&name=${name}">${i}</a>
                    </c:if>
                    <c:if test="${pageIndex != i}">
                        <a href="${pageContext.request.contextPath }/selectData.do?pageIndex=${i}&startTime=${startTime}&endTime=${endTime}&name=${name}">${i}</a>
                    </c:if>
                </c:forEach>
            </c:if>
            <%--下一页--%>
            <c:if test="${pageIndex != totalPage && pageIndex != null}">
                <a style="color:#000;width: 80px" href="${pageContext.request.contextPath }/selectData.do?pageIndex=${pageIndex+1}&startTime=${startTime}&endTime=${endTime}&name=${name}">下一页</a>
            </c:if>
            <span>共${totalPage}页</span>
        </div>
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
<script src="${pageContext.request.contextPath }/libs/layui/layui.js"></script>
<%--<script src="${pageContext.request.contextPath }/libs/layui/main.js?1"></script>--%>
<script>
    layui.use('laydate', function(){
        var laydate = layui.laydate;
        //同时绑定多个
        lay('.test-item').each(function(){
            laydate.render({
                elem: this
                ,trigger: 'click'
            });
        });
    })
    $(function() {
        $(".ff").height($(".container").height());
        $(".container").width($("html").width() - 290);
    })
</script>
</body>
</html>
