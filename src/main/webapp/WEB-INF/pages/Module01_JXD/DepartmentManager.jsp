<%--
  Created by IntelliJ IDEA.
  User: jbtms940317
  Date: 18/2/5
  Time: 下午4:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>部门经理审批</title>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8">
    <link href="/css/demo.css" rel="stylesheet" type="text/css"/>
    <script src="/scripts/boot.js" type="text/javascript"></script>
    <style type="text/css">


        .table {
            width: 100%;
            height: 100%;
            border: 1px solid #d5e9fa;
            border-collapse: collapse;
            margin: auto;
        }

        .trTitle {

            background-color: #CCEEFF;
            border: solid white 2px;

        }

        .title {
            width: 100px;
            height: 40px;
            text-align: center;
            border: solid white 2px;
            padding: 0px;
        }

        .t {
            width: 100%;
            height: 40px;
        }
    </style>
</head>
<body>
<div id="panel1" class="mini-panel" title="项目基本信息" iconCls="icon-add" style="width: 100%;height: 100%;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <table class="table">
        <tr class="trTitle">
            <td class="title">项目名称</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/></td>
        </tr>
        <tr class="trTitle">
            <td class="title">项目申报单位</td>
            <td>
                <input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/>
            </td>
            <td class="title">联合申报单位</td>
            <td>
                <input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/>
            </td>
        </tr>
        <tr class="trTitle">
            <td class="title">目的</td>
            <td colspan="3">
                <input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/>
            </td>
        </tr>
    </table>
</div>
<div id="panel2" class="mini-panel" title="与核电生产运营安全性、可靠性、经济的适应分析" iconCls="icon-add" style="width: 100%;height: 100%;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <table class="table">
        <tr class="trTitle">
            <td class="title">安全性</td>
            <td><input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/></td>
            <td class="title">可靠性</td>
            <td><input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/></td>
        </tr>
        <tr class="trTitle">
            <td class="title">经济性</td>
            <td><input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/></td>
            <td class="title">其他</td>
            <td>
                <input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/>
            </td>
        </tr>
    </table>
</div>
<div id="panel3" class="mini-panel" title="审批意见" iconCls="icon-add" style="width: 100%;height: 100%;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <table class="table">
        <tr class="trTitle">
            <td class="title">审批意见</td>
            <td>
                <input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/>
            </td>
            <td class="title">常用词条</td>
            <td>
                <input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
