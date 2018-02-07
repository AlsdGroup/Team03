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
        table {
            width: 100%;
            height: auto;
            border: 0px solid #ffffff;
            border-collapse: collapse;
            padding: 0px;
        }

        .trTitle {

            background-color: #d2f0f0;
            border: solid white 2px;

        }

        .title {
            width: 10%;
            height: 40px;
            text-align: center;
        }
        body{
            padding: 0px;
        }
        div{
            background-color: #d2f0f0;
        }
        #button{
            float: right;
        }
    </style>
</head>
<body>
<div id="panel1" class="mini-panel" title="技术第一负责人信息" iconCls="icon-add" style="width: auto;height: auto;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <table class="table">
        <tr class="trTitle">
            <td class="title">姓名、专业经历和能力简述</td>
            <td >
                <input class="mini-textarea" style="width: 100%;height: 30px" value="" name=""/>
            </td>
        </tr>
    </table>
</div>
<div id="panel2" class="mini-panel" title="产品信息" iconCls="icon-add" style="width: auto;height: auto;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <table class="table">
        <tr class="trTitle">
            <td class="title">产品形式</td>
            <td >
                <div id="cbl1" class="mini-checkboxlist" textField="text" valueField="id"
                     data="[{'id':1001,'text':'专题报告'},{'id':1002,'text':'技术方案'},{'id':1003,'text':'技术标准'},{'id':1004,'text':'硬件产品'},{'id':1005,'text':'生产性文件'},{'id':1006,'text':'设计文件'},{'id':1007,'text':'计算机软件'},{'id':1008,'text':'其他 ________'}]">
                </div>
            </td>
        </tr>
        <tr class="trTitle">
            <td class="title">预计产权说明</td>
            <td>
                <input class="mini-textarea" style="width: 100%;height: 30px;" value="" name=""/>
            </td>
        </tr>
        <tr class="trTitle">
            <td class="title">经济效益</td>
            <td>
                <input class="mini-textarea" style="width: 100%;height: 30px;" value="" name=""/>
            </td>
        </tr>
        <tr class="trTitle">
            <td class="title">固定资产</td>
            <td>
                <input class="mini-textarea" style="width: 100%;height: 30px;" value="" name=""/>
            </td>
        </tr>
        <tr class="trTitle">
            <td class="title">验收标准</td>
            <td>
                <input class="mini-textarea" style="width: 100%;height: 30px;" value="" name=""/>
            </td>
        </tr>
    </table>
</div>
<div id="panel3" class="mini-panel" title="附件信息" iconCls="icon-add"
     style="width: auto;height: auto;background-color: #d2f0f0"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true"
     collapseOnTitleClick="true">
    <table class="table">
        <tr class="trTitle">
            <td>立项报告书*</td>
            <td>
                <div>
                    <input class="mini-htmlfile" name="Fdata" id="file1" style="width: 100%;height: 30px;background-color: #d2f0f0">
                </div>
            </td>
        </tr>
    </table>
</div>
<div id="panel4" class="mini-panel" title="流程信息" iconCls="icon-add" style="width: auto;height: auto;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true"
     collapseOnTitleClick="true">
    <table class="table">
        <tr class="trTitle">
            <td>审批(部门经理)*</td>
            <td>
                <input id="btnEdit1" class="mini-buttonedit" onbuttonclick="onButtonEdit" name="a" textName="b"
                       style="width: 100%;height: 30px"/>
            </td>
        </tr>
    </table>
    <div id="button">
        <a href="" class="mini-button" iconCls="icon-addfolder" onclick="">提交</a>
    </div>
</div>
</body>
</html>

