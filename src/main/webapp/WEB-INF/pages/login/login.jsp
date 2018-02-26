<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>登录页面</title>
    <style>
        body {
            background-color: #f0f9fb;
        }

        #div1 {
            width: 100%;
            height: 20%;
            position: relative;
        }

        #div11 {
            background: url(../../../img/bg2.jpg);
            background-size:100% auto;
            background-repeat:no-repeat;
            width: 100%;
            height: 50%;
            position: absolute;
            left: 0;
            bottom: 0;
        }

        #div2 {
            background: url(../../../img/bg1.jpg);
            background-size: 100% auto;
            background-repeat: no-repeat;
            width: 100%;
            height: 55%;
            position: relative;
        }
        #div21 {
            background: url(../../../img/login1.jpg);
            background-size: 100% auto;
            background-repeat: no-repeat;
            width: 340px;
            height: 330px;
            position: absolute;
            right: 40px;
            top: 40px;
        }
        #div211 {
            position: absolute;
            right: 60px;
            top: 80px;
        }
        #div3 {
            width: 100%;
            height: 25%;
            position: relative;
        }
        #div31 {
            width: 100%;
            height: 100%;
            color: #333a3a;
            text-align: center;
            position: absolute;
            left: 0;
            top: 0;
        }
    </style>


</head>
<body>

<div id="div1">
    <div id="div11">
    </div>
</div>
<div id="div2">
    <div id="div21">
        <div id="div211">
            <form action="/login">
                用户名: &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" id="staffUserName" name="staffUserName" value="xll"/>
                <br><br>
                密码哦: &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="password" id="staffPwd" name="staffPwd" value="1"/>
                <br><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="checkbox"/>记住密码
                <br><br>
                <%--<img src="../../../img/submitbtn1.jpg" onclick="">--%>
                <input type="submit" value="登录" style="width: 225px;height: 30px;text-align: center"/>
            </form>
            <h5>${loginMsg}</h5>
        </div>
    </div>
</div>
<div id="div3">
    <div id="div31">
        中广核集团信息技术中心 @ Copyright 2018-2019 技术支持: 信息技术中心 联系电话: 45683*
    </div>
</div>


</body>
</html>
