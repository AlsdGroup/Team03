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
    <title>财务部审批</title>
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
        body{
            padding: 0px;
        }
        .trTitle {

            background-color: #d2f0f0;
            border: solid white 2px;

        }
        .title{
            width: 10%;
            height: 40px;
            text-align: center;

        }
        div{
            background-color: #d2f0f0;
        }
        #button{
            float: right;
        }
    </style>
</head>
</head>
<body>
<div id="panel1" class="mini-panel" title="项目基本信息" iconCls="icon-add" style="width: auto;height: auto;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <table class="table">
        <tr class="trTitle">
            <td class="title">项目名称</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/></td>
        </tr>
        <tr class="trTitle">
            <td class="title">项目申报单位</td>
            <td>
                <input id="btnEdit1" class="mini-buttonedit" onbuttonclick="onButtonEdit" name="a" textName="b"
                       style="width: 100%;height: 30px"/>
            </td>
            <td class="title">联合申报单位</td>
            <td>
                <input id="btnEdit2" class="mini-buttonedit" onbuttonclick="onButtonEdit" name="a" textName="b"
                       style="width: 100%;height: 30px"/>
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
<div id="panel2" class="mini-panel" title="与核电生产运营安全性、可靠性、经济的适应分析" iconCls="icon-add" style="width: auto;height: auto;"
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
<div id="panel3" class="mini-panel" title="工程师评审意见" iconCls="icon-add" style="width: auto;height: auto;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <table class="table">
        <tr class="trTitle">
            <td class="title">评审结果</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:40px;" value="" name=""/></td>
        </tr>
        <tr class="trTitle">
            <td class="title">立项报告书</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:40px;" value="" name=""/></td>
        </tr>
    </table>
</div>
<div id="panel4" class="mini-panel" title="技术可行性分析意见" iconCls="icon-add" style="width: auto;height: auto;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <table class="table">
        <tr class="trTitle">
            <td class="title">对阳江公司科技发展规划的符合性审定</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:40px;" value="" name=""/></td>
        </tr>
        <tr class="trTitle">
            <td class="title">对项目成果的应用领域和价</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:40px;" value="" name=""/></td>
        </tr>
        <tr class="trTitle">
            <td class="title">总体评价</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:40px;" value="" name=""/></td>
        </tr>
    </table>
</div>
<div id="panel5" class="mini-panel" title="操作信息" iconCls="icon-add" style="width: auto;height: auto;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <table class="table">
        <tr class="trTitle">
            <td class="title">要求</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:40px;" value="" name=""/></td>
        </tr>
        <tr class="trTitle">
            <td class="title">建议</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:40px;" value="" name=""/></td>
        </tr>
    </table>
    <div id="button">
        <a href="" class="mini-button" iconCls="icon-no" onclick="">不推荐</a>
        <a href="" class="mini-button" iconCls="icon-addfolder" onclick="">推荐</a>
    </div>
</div>

<script>
    /* 加载mini组件，后面的get方法才好用 */
    mini.parse();

    /* 审批(部门经理)点击事件 */
    function onButtonEdit(e) {
        var btnEdit = this;
        mini.open({
            url: "/selectDepWindow",
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
