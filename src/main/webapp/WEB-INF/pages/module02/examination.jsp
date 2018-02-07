<%--
  Created by IntelliJ IDEA.
  User: hxd
  Date: 18/2/5
  Time: 下午2:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>审批</title>
    <link href="../../../css/demo.css" rel="stylesheet" type="text/css">
    <script src="../../../scripts/boot.js" type="text/javascript"></script>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8">

    <style>
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

        .t {
            width: 10%;
            height: 40px;
        }


    </style>
</head>
<body>
<div id="panel1" class="mini-panel" title="当前位置:科研合同项目申报>>申请信息" iconCls="icon-add" style="width: auto;height: auto"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <table>
        <tr class="trTitle">
            <td class="t">合同名称</td>
            <td><input class="mini-textarea" style="width: 100%;height: 30px"/></td>

            <td class="t">合同编号</td>
            <td><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
        </tr>
        <tr class="trTitle">
            <td class="t">合同对方信息</td>
            <td><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
            <td colspan="2"></td>

        </tr>
        <tr class="trTitle">
            <td class="t">合同起日期</td>

            <td><input type="date" class="mini-datepicker" required="true" style="width: 100%;height: 30px"/></td>

            <td class="t">合同止日期</td>
            <td><input type="date" class="mini-datepicker" required="true" style="width: 100%;height: 30px"/></td>
        </tr>
    </table>
</div>
<div id="panel2" class="mini-panel" title="合同经费信息" iconCls="icon-add" style="width: auto;height: auto;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <table>
        <tr class="trTitle">
            <td class="t">总费用</td>
            <td><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
            <td class="t">对方拨付</td>
            <td><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
        </tr>
        <tr class="trTitle">
            <td class="t">公司自筹</td>
            <td><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
        </tr>
    </table>
</div>

<div id="panel3" class="mini-panel" title="项目成果分配" iconCls="icon-add" style="width: auto;height: auto;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <table>
        <tr>
            <td colspan="4">
                <div id="cbl1" class="mini-checkboxlist" textField="text" valueField="id"
                     data="[{'id':1001,'text':'专题报告'},
             {'id':1002,'text':'技术方案'},
             {'id':1003,'text':'技术标准'},
             {'id':1004,'text':'硬件产品'},
             {'id':1005,'text':'生产性文件'},
             {'id':1006,'text':'设计文件'},
             {'id':1007,'text':'计算机软件'},
             {'id':1008,'text':'其他'}]">
                </div>
            </td>
        </tr>
        <tr class="trTitle">
            <td class="t">形成的知识产权及分配方式</td>
            <td colspan="3"><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
        </tr>
        <tr class="trTitle">
            <td class="t">直接经济效益及分配方式</td>
            <td colspan="3"><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
        </tr>
        <tr class="trTitle">
            <td class="t">形成的固定资产及分配方式</td>
            <td colspan="3"><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
        </tr>
        <tr class="trTitle">
            <td class="t">合同运作情况简介</td>
            <td colspan="3"><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
        </tr>
        <tr class="trTitle">
            <td class="t">附件</td>
            <td><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
        </tr>
    </table>
</div>

<div id="panel4" class="mini-panel" title="审批意见" iconCls="icon-add" style="width: auto;height: auto;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <table>

        <tr class="trTitle">
            <td class="t">审批意见</td>
            <td><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
            <td class="t">常用词条</td>
            <td ><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
        </tr>





    </table>
    <div style="width: 150px;height: 30px;float: right;">
    <a class="mini-button" style="float: left" iconCls="submit" onclick="">通过</a>
    <a class="mini-button" style="float: right"iconCls="submit" onclick="">不通过</a>
</div>
</div>
<script type="text/javascript">

</script>
</body>
</html>
