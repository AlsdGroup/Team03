<%--
  Created by IntelliJ IDEA.
  User: jbtms940317
  Date: 18/2/5
  Time: 上午11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>项目其他信息</title>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8">
    <link href="/css/demo.css" rel="stylesheet" type="text/css"/>

    <script src="/scripts/boot.js" type="text/javascript"></script>

    <style type="text/css">
        .table{
            width: 100%;
            height: 100%;
            background-color: #CCEEFF;
            border-collapse: collapse;

        }
        .trTitle{
            background-color:#CCEEFF ;
            width: 200px;
            height: 40px;
            border:2px solid white;

        }
        .trTitle1{
            background-color: #CCEEFF;
            width: 100%;
            height: 40px;
            border:2px solid white;
            text-align: right;
        }
        .button{
            float: right;
        }
    </style>
</head>
<body>
<table  class="table" border="0" cellpadding="1" cellspacing="2">
    <tr>
        <td class="trTitle" colspan="2">当前位置：科研项目申报 >> 项目其他信息</td>
    </tr>
    <tr>
        <td class="trTitle" colspan="2">技术第一负责人信息</td>
    </tr>
    <tr>
        <td class="trTitle1">姓名、专业经历和能力简述</td>
        <td >
            <input class="mini-textarea" style="width: 900px;height: 60px;"/>
        </td>
    </tr>
    <tr>
        <td class="trTitle" colspan="2">产品信息</td>
    </tr>
    <tr>
        <td class="trTitle1">产品形式</td>
        <td>
            <%--输入线问题--%>
            <div id="cbl1" class="mini-checkboxlist" textField="text" valueField="id"
                 data="[{'id':1001,'text':'专题报告'},{'id':1002,'text':'技术方案'},{'id':1003,'text':'技术标准'},{'id':1004,'text':'硬件产品'},{'id':1005,'text':'生产性文件'},{'id':1006,'text':'设计文件'},{'id':1007,'text':'计算机软件'},{'id':1008,'text':'其他 ________'}]">
            </div>
        </td>
    </tr>
    <tr>
        <td class="trTitle1">预计产权说明</td>
        <td >
            <input class="mini-textarea" style="width: 900px;height: 60px;"/>
        </td>
    </tr>
    <tr>
        <td class="trTitle1">经济效益</td>
        <td >
            <input class="mini-textarea" style="width: 900px;height: 60px;"/>
        </td>
    </tr>
    <tr>
        <td class="trTitle1">固定资产</td>
        <td >
            <input class="mini-textarea" style="width: 900px;height: 60px;"/>
        </td>
    </tr>
    <tr>
        <td class="trTitle1">验收标准</td>
        <td >
            <input class="mini-textarea" style="width: 900px;height: 60px;"/>
        </td>
    </tr>
    <tr>
        <td class="trTitle" colspan="2">附件信息</td>
    </tr>
    <tr>
        <td class="trTitle1">立项报告书*</td>
        <td>
            <div>
                <input class="mini-htmlfile" name="Fdata" id="file1" style="width: 900px;height: 30px">
            </div>
        </td>
    </tr>
    <tr>
        <td class="trTitle" colspan="2">流程信息</td>
    </tr>
    <tr>
        <td class="trTitle1">审批（部门经理)*</td>
        <td>
            <input id="btnEdit1" class="mini-buttonedit" onbuttonclick="onButtonEdit" name="a" textName="b" style="width: 900px;height: 30px"/>
        </td>
    </tr>
</table>
<button type="submit" value="提交" class="button" id="button">提交</button>
</body>
</html>

