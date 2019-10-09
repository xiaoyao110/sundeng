<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--
  Created by IntelliJ IDEA.
  User: sanliangsan
  Date: 2019/9/24
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <%--加上方法  绝对路径--%>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <%--监听事件--%>
    <script src="<%=request.getContextPath() %>/layui/layui.js" type="text/javascript"></script>
</head>
<body>
<%--事件过滤器 --%>
<table class="layui-hide" id="orders" lay-filter="test"></table>
<div hidden="hidden" id="update"><%--修改--%>
    <form class="layui-form" action="<%=request.getContextPath()%>/Orderss/upda" method="post">
        <input class="layui-input" type="text" name="oid" id="oid" style="width: 50%;" placeholder="请输入id"><br>
        <input class="layui-input" type="text" name="o_cname" id="o_cname" style="width: 50%;" placeholder="请输入订单客户"><br>
        <input class="layui-input" type="text" name="o_pname" id="o_pname" style="width: 50%;" placeholder="请输入订购产品"><br>
        <input class="layui-input" type="text" name="onum" id="onum" style="width: 50%;" placeholder="请输入订购数量"><br>
        <input class="layui-input" type="text" name="oprice" id="oprice" style="width: 50%;" placeholder="请输入税前单价"><br>
        <input class="layui-input" type="text" name="ounit" id="ounit" style="width: 50%;" placeholder="请输入单位"><br>
        <input class="layui-input" type="text" name="ostate" id="ostate" style="width: 50%;" placeholder="请输入订单状态"><br>
        <input class="layui-input laydate" type="text" name="ocreatetime"  style="width: 50%;" id="data3"><br>
        <input class="layui-input laydate" type="text" name="ofinishtime" style="width: 50%;" id="data4"><br>
        <input class="layui-input" type="text" name="ops" id="ops" style="width: 50%;" placeholder="请输入订单要求"><br>
        <input class="layui-input" type="text" name="oimg" id="oimg" style="width: 50%;" placeholder="请输入订单照片"><br>
        <input class="layui-input" type="text" name="oacr" id="oacr" style="width: 50%;" placeholder="请输入订单附件"><br>
        <input type="submit" value="提交">
    </form>
</div>
<div hidden="hidden" id="sadd">
    <form class="layui-form" action="<%=request.getContextPath()%>/Orderss/add" method="post">
        <input class="layui-input" style="width: 50%;" type="text" name="o_cname" placeholder="请输入订单客户"><br>
        <input class="layui-input" style="width: 50%;" type="text" name="o_pname" placeholder="请输入订购产品"><br>
        <input class="layui-input" style="width: 50%;" type="text" name="onum" placeholder="请输入订购数量"><br>
        <input class="layui-input" style="width: 50%;" type="text" name="oprice" placeholder="请输入税前单价"><br>
        <input class="layui-input" style="width: 50%;" type="text" name="ounit" placeholder="请输入单位"><br>
        <input class="layui-input" style="width: 50%;" type="text" name="ostate" placeholder="请输入订单状态"><br>
        <input class="layui-input laydate" style="width: 50%;" type="text" name="ocreatetime" id="data1"><br>
        <input class="layui-input laydate" style="width: 50%;" type="text" name="ofinishtime" id="data2"><br>
        <input class="layui-input" style="width: 50%;" type="text" name="ops" placeholder="请输入订单要求"><br>
        <input class="layui-input" style="width: 50%;" type="text" name="oimg" placeholder="请输入订单照片"><br>
        <input class="layui-input" style="width: 50%;" type="text" name="oacr" placeholder="请输入订单附件"><br>
        <input type="submit" value="提交">
    </form>
</div>
<%--这是表格的信息--%>
<table class="layui-hide" id="orders" lay-filter="test"></table>
<script type="text/javascript">
    layui.use(['table','layer','laydate'],
        function (){
            var $ = layui.$;
            var table=layui.table;
            var layer = layui.layer;
            var laydate=layui.laydate;
            var util=layui.util;
            /*添加输入框的格式日期时间选择器*/
            laydate.render({elem:'#data1',btns:['confirm'],type:'datetime',format:'yyyy-MM-dd HH:mm:ss'});
            laydate.render({elem:'#data2',btns:['confirm'],type:'datetime',format:'yyyy-MM-dd HH:mm:ss'});
            /*修改*/
            laydate.render({elem:'#data3',btns:['confirm'],type:'datetime',format:'yyyy-MM-dd HH:mm:ss'});
            laydate.render({elem:'#data4',btns:['confirm'],type:'datetime',format:'yyyy-MM-dd HH:mm:ss'});
            table.render({
                elem:'#orders'
                ,url:'<%=request.getContextPath()%>/Orderss/ordersList'
                ,toolbar:'default'
                ,cols:[[
                    {field:'oid',width:100,title:'订单编号',sort:true}
                    ,{field:'o_cname',width:100,title:'订购客户',sort:true}
                    ,{field:'o_pname',width:100,title:'订购产品',sort:true}
                    ,{field:'onum',width:100,title:'订购数量',sort:true}
                    ,{field:'oprice',width:100,title:'税前单价',sort:true}
                    ,{field:'ounice',width:100,title:'单位',sort:true}
                    ,{field:'ostate',width:100,title:'订单状态',sort:true}
                    ,{field:'ocreatetime',width:100,title:'订购日期',sort:true
                        ,templet:'<div>{{layui.util.toDateString(d.ocreatetime,"yyyy-MM-dd HH:mm:ss")}}</div>'}
                    ,{field:'ofinishtime',width:100,title:'要求日期',sort:true
                        ,templet:'<div>{{layui.util.toDateString(d.ofinishtime,"yyyy-MM-dd HH:mm:ss")}}</div>'}
                    ,{field:'ops',width:100,title:'订单要求',sort:true}
                    ,{field:'oimg',width:100,title:'相关照片',sort:true}
                    ,{field:'oacr',width:100,title:'订单附件',sort:true}
                    ,{
                        field:'right',
                        title:'操作',
                        width:120,
                        align:'center',
                        toolbar:'<div class="layui-btn-group">'+
                                '<button type="button" class="layui-btn layui-btn-xs layui-margin" lay-event="etit">编辑</button>'+
                                '<button class="layui-btn layui-btn-danger layui-btn-xs layui-margin" lay-event="del">删除</button>'+
                                '</div>'
                    }
                ]]

                /*添加工具按钮*/
                ,toolbar:"<div class='layui-btn-group'>" +
                    "<button class='layui-btn' lay-event='add'>增加</button> " +
                    "</div>"

                ,page:true,
                /*分页信息*/
                limits : [5,10,20]
            });
            /*行内监听*/
            table.on('toolbar(test)',function (obj) {
                var data=obj.data;
                /*如果*/
                if(obj.event==='add'){
                    /*弹窗事件*/
                    layer.open({
                        /*弹出页面内容*/
                        type: 1
                        /*不要自带标题*/
                        , title: '添加'
                        /*不要自带标题*/
                        ,btn:false
                        /*弹框大小*/
                        ,area:'420px'
                        ,content:$('#sadd')
                    });
                }
            });
            /*删除*/
            table.on('tool(test)',function (obj) {
                var data=obj.data;
                if(obj.event==='del'){
                    layer.confirm("确认删除?",function (index) {
                        obj.del();
                        $.ajax({
                            type:"POST",
                            url:"<%=request.getContextPath()%>/Orderss/dele?oid="+data.oid,
                            success:function (msg) {
                                layer.msg(msg);
                            }
                        });
                        layer.close(index);
                    });
                    /*修改*/
                }else if(obj.event=='etit'){
                    $("#oid").val(data.oid);
                    $("#o_cname").val(data.o_cname);
                    $("#o_pname").val(data.o_pname);
                    $("#onum").val(data.onum);
                    $("#oprice").val(data.oprice);
                    $("#ounice").val(data.ounice);
                    $("#ostate").val(data.ostate);
                    $("#data3").val(util.toDateString(data.ocreatetime,'yyyy-MM-dd HH:mm:ss'));
                    $("#data4").val(util.toDateString(data.ofinishtime,'yyyy-MM-dd HH:mm:ss'));
                    $("#ops").val(data.ops);
                    $("#oimg").val(data.oimg);
                    $("#oacr").val(data.oacr);
                    layer.open({
                        type:1
                        ,title:false
                        ,area:'420px'
                        ,content:$("#update")
                    })
                }
            });

        });
</script>
</body>
</html>
