<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>登录页面</title>
</head>
<body>

<form action="/login">
    用户名: <input type="text" id="staffUserName" name="staffUserName"/>
    <br>
    密码: <input type="password" id="staffPwd" name="staffPwd"/>
    <br>
    <input type="submit" value="登录"/>
</form>

<h2>${loginMsg}</h2>

</body>
</html>
