<%--
  Created by IntelliJ IDEA.
  User: sanliangsan
  Date: 2019/9/24
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>


    <title>表格信息</title>

       <%--加上方法  绝对路径--%>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
       <%--监听事件--%>
    <script src="<%=request.getContextPath() %>/layui/layui.js"></script>
       <script src="<%=request.getContextPath() %>/layui"></script>
    <style>
        .ssm{
            width: 100px;}
    </style>
</head>
<body>

<%--事件过滤器 --%>
<table class="layui-hide" id="custom" lay-filter="test"></table>
<%--修改隐藏弹窗--%>
<div hidden="hidden" id="uptade">
    <form class="layui-form" action="<%=request.getContextPath()%>/customs/upda" method="post">
        <div class="layui-form-item layui-form-pane">
            <label class="layui-form-label">客户编号:</label>
            <div class="layui-input-block">
                <input id="cid" type="text" name="cid" lay-verify="required" placeholder="请输入客户编号" readonly="readonly" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-pane">
            <label class="layui-form-label">客户名称:</label>
            <div class="layui-input-block">
                <input id="cname" type="text" name="cname" lay-verify="required" placeholder="请输入客户名称" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-pane">
            <label class="layui-form-label">客户全称:</label>
            <div class="layui-input-block">
                <input id="crealname" type="text" name="crealname" lay-verify="required" placeholder="请输入客户全称" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-pane">
            <label class="layui-form-label">地址:</label>
            <div class="layui-input-block">
                <input id="caddress" type="text" name="caddress" lay-verify="required" placeholder="请输入地址" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-pane">
            <label class="layui-form-label">传真:</label>
            <div class="layui-input-block">
                <input id="cfax" type="text" name="cfax" lay-verify="required" placeholder="请输入传真" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-pane">
            <label class="layui-form-label">邮箱:</label>
            <div class="layui-input-block">
                <input id="cemail" type="text" name="cemail" lay-verify="required" placeholder="请输入邮箱" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-pane">
            <label class="layui-form-label">经理姓名:</label>
            <div class="layui-input-block">
                <input id="cadmin" type="text" name="cadmin" lay-verify="required" placeholder="请输入经理姓名" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-pane">
            <label class="layui-form-label">联系电话:</label>
            <div class="layui-input-block">
                <input id="cphone" type="text" name="cphone" lay-verify="required" placeholder="请输入联系电话" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-pane">
            <label class="layui-form-label">客户状态:</label>
            <div class="layui-input-block">
                <input id="cstate" type="text" name="cstate" lay-verify="required" placeholder="请输入客户状态" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-pane">
            <label class="layui-form-label">备注:</label>
            <div class="layui-input-block">
                <input id="cps" type="text" name="cps" lay-verify="required" placeholder="请输入备注" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" >提交</button>
            </div>
        </div>
    </form>
</div>
<%--添加隐藏的弹窗内容--%>
<div hidden="hidden" id="sddd">
    <form class="layui-form " action="<%=request.getContextPath()%>/customs/add" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">客户编号</label>
            <div class="layui-input-block">
                <input type="text" name="cid" lay-verify="title" autocomplete="off" placeholder="请输入客户编号" class="layui-input" >
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">客户名称</label>
            <div class="layui-input-block">
                <input type="text" name="cname" lay-verify="title" autocomplete="off" placeholder="请输入客户名称" class="layui-input" >
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">客户全称</label>
            <div class="layui-input-block">
                <input type="text" name="crealname" lay-verify="title" autocomplete="off" placeholder="请输入客户全称" class="layui-input" >
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">地址</label>
            <div class="layui-input-block">
                <input type="text" name="caddress" lay-verify="title" autocomplete="off" placeholder="请输入地址" class="layui-input" >
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">传真</label>
            <div class="layui-input-block">
                <input type="text" name="cfax" lay-verify="title" autocomplete="off" placeholder="请输入传真" class="layui-input" >
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">邮箱</label>
            <div class="layui-input-block">
                <input type="text" name="cemail" lay-verify="title" autocomplete="off" placeholder="请输入邮箱" class="layui-input" >
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">经理姓名</label>
            <div class="layui-input-block">
                <input type="text" name="cadmin" lay-verify="title" autocomplete="off" placeholder="请输入经理姓名" class="layui-input" >
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">联系电话</label>
            <div class="layui-input-block">
                <input type="text" name="cphone" lay-verify="title" autocomplete="off" placeholder="请输入联系电话" class="layui-input" >
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">客户状态</label>
            <div class="layui-input-block">
                <input type="text" name="cstate" lay-verify="title" autocomplete="off" placeholder="请输入客户状态" class="layui-input" >
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
                <input type="text" name="cps" lay-verify="title" autocomplete="off" placeholder="请输入备注" class="layui-input" >
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="bond_sumbit">提交</button>
            </div>
        </div>
    </form>
</div>
<script>
    layui.use(['table','layer'],
        function (){
            var $ = layui.$;
            var table=layui.table;
            var layer = layui.layer;
            table.render({
                elem:'#custom'/*表名*/
                ,url:'<%=request.getContextPath()%>/customs/customList'
                ,toolbar:'default'
                ,cols:[[
                    {field:'cid',width:110,title:'客户编号',sort:true}
                    ,{field:'cname',width:110,title:'客户名称',sort:true}
                    ,{field:'crealname',width:110,title:'客户全称',sort:true}
                    ,{field:'caddress',width:110,title:'地址',sort:true}
                    ,{field:'cfax',width:110,title:'传真',sort:true}
                    ,{field:'cemail',width:110,title:'邮箱',sort:true}
                    ,{field:'cadmin',width:110,title:'经理姓名',sort:true}
                    ,{field:'cphone',width:110,title:'联系电话',sort:true}
                    ,{field:'cstate',width:110,title:'客户状态',sort:true}
                    ,{field:'cps',width:110,title:'备注',sort:true}
                    , {/*在每一行*/
                        fixed: 'right',
                        title: '操作',
                        width: 120,
                        align: 'center',
                        toolbar: '<div class="layui-btn-group">' +
                            '<button type="button" class="layui-btn  layui-btn-xs layui-margin" lay-event="edit">编辑</button>' +
                            '<button class="layui-btn layui-btn-danger layui-btn-xs layui-margin" lay-event="del">删除</button>' +
                            '</div>'
                    }
                ]]

                /*在上面添加工具按钮*/
                ,toolbar:"<div class='layui-btn-group'>" +
                    "<button class='layui-btn' lay-event='add'>增加</button> " +
                        "<form action='<%=request.getContextPath()%>/customs/dim' method='post'>"+
                            "<input type='text' name='dim' class='layui-input ssm'/>"+
                    "<button type='submit' class='layui-btn' >搜索</button>"+
                    "</button>"+
                    "</form> "+
                    "</div>"

                ,page:true,
                /*分页信息*/
                limits : [5,10,20]
            });
            /*行内监听*/
            table.on('toolbar(test)', function(obj) {
                var data = obj.data;
                //alert(obj.data);
                if(obj.event === 'add'){
                    /*弹窗事件*/
                    layer.open({
                        /*1弹出页面内容2是弹出iframe中的内容*/
                        type: 1
                        /*不要自带标题*/
                        ,title: false
                        /*不要自带按钮*/
                        ,btn: false
                        /*弹窗大小*/
                        ,area: '420px'
                        /*弹出内容*/
                        ,content: $('#sddd')
                    });
                }
            });
            /*删除监听*/
            table.on('tool(test)',function (obj) {
                var data=obj.data;
                if(obj.event==='del'){
                    layer.confirm("确认删除？",function(index){
                        obj.del();/*在前台删除*/
                        $.ajax({
                            type:"POST",
                            url:"<%=request.getContextPath()%>/customs/dele?cid="+data.cid,
                            success:function(msg){
                                layer.msg(msg);
                            }
                        });
                        /*关闭特定层*/
                        layer.close(index);
                    });
                }else if (obj.event==='edit') {/*修改*/
                    $("#cid").val(data.cid);
                    $("#cname").val(data.cname);
                    $("#crealname").val(data.crealname);
                    $("#caddress").val(data.caddress);
                    $("#cfax").val(data.cfax);
                    $("#cemail").val(data.cemail);
                    $("#cadmin").val(data.cadmin);
                    $("#cphone").val(data.cphone);
                    $("#cstate").val(data.cstate);
                    $("#cps").val(data.cps);
                        layer.open({
                            /*1弹出页面内容2是弹出iframe中的内容*/
                            type: 1
                            /*不要自带标题*/
                            ,title: false
                            /*不要自带按钮*/
                            ,btn: false
                            /*弹窗大小*/
                            ,area: '420px'
                            /*弹出内容*/
                            ,content: $('#uptade')
                        })
                    }
            });
        });

</script>
</body>
</html>
