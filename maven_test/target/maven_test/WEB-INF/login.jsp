<%--
  Created by IntelliJ IDEA.
  User: sanliangsan
  Date: 2019/9/23
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="layui/css/layui.css">
    <title>首页</title>
    <style type="text/css">
        *{/*头*/
            margin: 0;
            padding: 0;
        }
        #head {/*上面的背景颜色和文字*/
            height: 220px;
            width: 100%;
            background-color: #66CCCC;
            text-align: center;
            position: relative;
        }
        #wrap .logGet {/*整个登录框*/
            height: 408px;
            width: 368px;
            position: relative;
            background-color: #FFFFFF;
            top: 20%;
            left: 600px;
        }
        .logC a button {/*登录按钮*/
            width: 100%;
            height: 45px;
            background-color: #ee7700;
            border: none;
            color: white;
            font-size: 18px;
        }
        .logGet .logD.logDtip .p1 {/*登录字体*/
            display: inline-block;
            font-size: 25px;
            margin-top: 50px;
            left: 800px;
        }
        .logGet .lgD img {/*输入框的图片*/

            position: absolute;
            top: 12px;
            left: 8px;
        }
        .logGet .lgD input {/*输入框的大小*/
            width: 100%;
            height: 42px;
            text-indent: 2.5rem;
        }
        #wrap .logGet .lgD {/*输入框的间距*/
            width: 86%;
            position: relative;
            margin-bottom: 30px;
            margin-top: 30px;
            margin-right: auto;
            margin-left: auto;
        }
        #wrap .logGet .logC {/*登录按钮的宽度*/
            width: 86%;
            margin-top: 0px;
            margin-right: auto;
            margin-bottom: 0px;
            margin-left: auto;
        }
        .title {/*管理系统四个字的格式*/
            font-family: "宋体";
            color: #FFFFFF;
            position: absolute;
            top: 80%;
            left: 48%;
            transform: translate(-50%, -50%);  /* 使用css3的transform来实现 */
            font-size: 25px;
            height: 0px;
            width: 30%;
        }
    </style>
</head>
<body>
<div class="header" id="head">
    <div class="title">管理系统</div>
</div>
<div class="wrap" id="wrap">
    <div class="logGet">
        <!-- 头部提示信息 -->
        <div class="logD logDtip">
            <center>  <p class="p1">登录</p></center>
        </div>
        <form action="<%=request.getContextPath()%>/user/home" method="post">
            <span style="color:red">${msg}</span><br>
        <!-- 输入框 -->
        <div class="lgD">

            <img src="img/logName.png" width="20" height="20" alt=""/>
            <input type="text" name="name" placeholder="输入用户名" />
        </div>
        <div class="lgD">
            <img src="img/logPwd.png" width="20" height="20" alt=""/>
            <input type="text" name="password"
                   placeholder="输入用户密码" />
        </div>
        <div class="logC">

            <a href="<%=request.getContextPath()%>/user/home" target="_self"><button type="submit">登 录</button></a>
        </div>
        </form>
    </div>
</div>
</body>
</html>
