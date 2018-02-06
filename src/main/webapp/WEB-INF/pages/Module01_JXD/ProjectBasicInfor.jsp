<%--
  Created by IntelliJ IDEA.
  User: jbtms940317
  Date: 18/2/5
  Time: 上午9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>项目基本信息</title>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8">
    <link href="/css/demo.css" rel="stylesheet" type="text/css"/>
    <script src="/scripts/boot.js" type="text/javascript"></script>
    <style type="text/css">


        .table {
            width: 100%;
            height: auto;
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

        }

    </style>
</head>
<body>
<div id="panel1" class="mini-panel" title="当前位置,科研项目申报>>项目基本信息" iconCls="icon-add" style="width: 100%;height: 100%;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <table class="table">
        <tr class="trTitle">
            <td class="title">项目名称*</td>
            <td><input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/></td>
            <td colspan="2" style="background-color: white"></td>
        </tr>
        <tr class="trTitle">
            <td class="title">项目申报单位*</td>
            <td>
                <input id="btnEdit1" class="mini-buttonedit" onbuttonclick="onButtonEdit" name="a" textName="b"
                       style="width: 100%;height: 30px"/>
            </td>
            <td class="title">联合申报单位*</td>
            <td>
                <input id="btnEdit2" class="mini-buttonedit" onbuttonclick="onButtonEdit" name="a" textName="b"
                       style="width: 100%;height: 30px"/>
            </td>
        </tr>
        <tr class="trTitle">
            <td class="title">目的*</td>
            <td colspan="3">
                <input class="mini-textarea" style="width:100%;height:60px;" value="" name=""/>
            </td>
        </tr>
    </table>
</div>

<div id="panel2" class="mini-panel" title="与核电生产运营安全性,可靠性,经济的适应分析" iconCls="icon-add" style="width: 100%;height: 100%;"
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
<div id="panel3" class="mini-panel" title="其他信息" iconCls="icon-add" style="width: 100%;height: 100%;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <table class="table">
        <tr class="trTitle">
            <td class="title">成果应用</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:60px;" value="" name=""/></td>
        </tr>
        <tr class="trTitle">
            <td class="title">实际用户</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:60px;" value="" name=""/></td>
        </tr>
        <tr class="trTitle">
            <td class="title">潜在用户</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:60px;" value="" name=""/></td>
        </tr>
        <tr class="trTitle">
            <td class="title">项目完成周期</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:60px;" value="" name=""/></td>
        </tr>
        <tr class="trTitle">
            <td class="title">项目完成路径简介</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:60px;" value="" name=""/></td>
        </tr>
    </table>
</div>
<div id="panel4" class="mini-panel" title="预算信息" iconCls="icon-add" style="width: 100%;height: 100%;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <table class="table">
        <tr class="trTitle">
            <td class="title">总预算</td>
            <td><input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/></td>
            <td class="title">公司经费</td>
            <td><input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/></td>
        </tr>

        <tr class="trTitle">
            <td class="title">外部支持经费</td>
            <td><input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/></td>
            <td class="title">国家经费</td>
            <td><input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/></td>
        </tr>
    </table>
</div>
<script>
    /* 加载mini组件，后面的get方法才好用 */
    mini.parse();

    /* 审批(部门经理)点击事件 */
    function onButtonEdit(e) {
        var btnEdit = this;
        mini.open({
            url: "page/code/SelectGridWindow.jsp",
            title: "选择项目申报单位",
            width: 650,
            height: 380,
            ondestroy: function (action) {
                //if (action == "close") return false;
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须
                    if (data) {
                        btnEdit.setValue(data.id);
                        btnEdit.setText(data.name);
                    }
                }

            }
        });
    }

</script>

</body>
</html>