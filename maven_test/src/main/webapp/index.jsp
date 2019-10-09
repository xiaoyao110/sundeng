<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>跳转首页</title>
    <script>
        location.href="<%=request.getContextPath()%>/user/toLogin";
    </script>
</head>
<body>
$END$
</body>
</html>