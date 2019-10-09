<%--
  Created by IntelliJ IDEA.
  User: sanliangsan
  Date: 2019/9/23
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--编码格式--%>
    <meta charset="utf-8">
    <%--<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">--%>
        <%--载入layuicss资源--%>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/layui.css">
        <%--引入layuijs文件--%>
    <script src="<%=request.getContextPath()%>/layui/layui.js"></script>
    <title>主页</title>
    <script>
        //注意：导航 依赖 element 模块，否则无法进行功能性操作
        layui.use('element', function(){
            var element = layui.element;

            //…
        });
    </script>
    <style type="text/css">
       .layui-header{

            height: 150px;
        }
    </style>
</head>
<body class="layui-layout-body ">
<div class="layui-layout layui-layout-admin ">

    <div class="layui-header layui-bg-green ">
    </div>
<div class="layui-side layui-bg-black" style="margin-top: 90px;">

    <div class="layui-side-scroll" >

<ul class="layui-nav layui-nav-tree " style="height: 630px">
    <li class="layui-nav-item layui-nav-itemed">
        <a href="javascript:;">计划进度</a>
        <dl class="layui-nav-child">
            <%--向Controller请求转发，在iframe区域展示请求信息--%>
            <dd><a href="<%=request.getContextPath()%>/customs/toCustomList" target="showCustom">客户管理</a></dd>
            <dd><a href="<%=request.getContextPath()%>/Orderss/oList" target="showCustom">订单管理</a></dd>
            <dd><a href="javascript:;">产品管理</a></dd>
            <dd><a href="javascript:;">作业管理</a></dd>
            <dd><a href="javascript:;">生产计划管理</a></dd>
            <dd><a href="javascript:;">生产派工管理</a></dd>
        </dl>
    </li>
    <li class="layui-nav-item">
        <a href="javascript:;">设备管理</a>
        <dl class="layui-nav-child">
            <dd><a href="">移动模块</a></dd>
            <dd><a href="">后台模版</a></dd>
            <dd><a href="">电商平台</a></dd>
        </dl>
    </li>
    <li class="layui-nav-item"><a href="">产品</a></li>
    <li class="layui-nav-item"><a href="">大数据</a></li>
</ul>
    </div>

</div>

</div>
<div>
    <%--iframe  把另一个页面展示到这个页面的一块区域--%>
    <iframe name="showCustom" width="100%" height="80%" style="margin-left: 200px"></iframe>

</div>
<%--<div>
    &lt;%&ndash;iframe  把另一个页面展示到这个页面的一块区域&ndash;%&gt;
    <iframe name="showOrders" width="100%" height="100%" style="margin-left: 200px "></iframe>
</div>--%>
</body>
</html>













