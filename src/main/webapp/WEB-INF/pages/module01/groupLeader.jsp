<%--
  Created by IntelliJ IDEA.
  User: jbtms940317
  Date: 18/2/5
  Time: 下午4:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>评审小组组长填写评审意见</title>
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
<div id="panel3" class="mini-panel" title="工程师评审意见" iconCls="icon-add" style="width: 100%;height: 100%;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <table class="table">
        <tr class="trTitle">
            <td class="title">评审结果</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:60px;" value="" name=""/></td>
        </tr>
        <tr class="trTitle">
            <td class="title">立项报告书</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:60px;" value="" name=""/></td>
        </tr>
    </table>
</div>
<div id="panel4" class="mini-panel" title="技术可行性分析意见" iconCls="icon-add" style="width: 100%;height: 100%;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <table class="table">
        <tr class="trTitle">
            <td class="title">对阳江公司科技发展规划的符合性审定</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:60px;" value="" name=""/></td>
        </tr>
        <tr class="trTitle">
            <td class="title">对项目成果的应用领域和价</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:60px;" value="" name=""/></td>
        </tr>
        <tr class="trTitle">
            <td class="title">总体评价</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:60px;" value="" name=""/></td>
        </tr>
    </table>
</div>
</body>
</html>
