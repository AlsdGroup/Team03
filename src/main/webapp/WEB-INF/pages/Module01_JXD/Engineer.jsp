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
        fieldset
        {
            border:solid 1px #aaa;
        }
        .hideFieldset
        {
            border-left:0;
            border-right:0;
            border-bottom:0;
        }
        .hideFieldset .fieldset-body
        {
            display:none;
        }
        .table{
            width: 100%;
            height:100%;
            border: 1px solid #d5e9fa;
            border-collapse: collapse
        }

        .trTitle {

            background-color: #CCEEFF;
            border: solid white 2px;

        }
        .title{
            width: 100px;
            height: 40px;
            text-align: right;
            border:solid white 2px;
        }
        .t{
            width: 100%;
            height: 40px;
        }
    </style>
</head>
<body>
<fieldset id="fd2" style="width:600px;">
    <legend><label><input type="checkbox" checked id="checkbox1" onclick="toggleFieldSet(this, 'fd2')" hideFocus/>详细信息</label></legend>
    <div class="fieldset-body">
        <table class="form-table table" border="0" cellpadding="1" cellspacing="2">
            <tr class="trTitle">
                <td class="form-label t" colspan="4">当前位置,科研项目申报>>项目基本信息</td>
            </tr>

            <tr class="trTitle">
                <td class="form-label t" colspan="4">项目名称</td>
            </tr>
            <tr class="trTitle">
                <td class="title">项目名称*</td>
                <td> <input class="mini-textarea" style="width:100%;height:30px;"/></td>
                <td colspan="2" style="background-color: white"></td>
            </tr>
            <tr class="trTitle">
                <td class="title">项目申报单位*</td>
                <td>
                    <input id="btnEdit1" class="mini-buttonedit" onbuttonclick="onButtonEdit" name="a" textName="b" style="width: 100%;height: 30px"/>
                </td>
                <td class="title">联合申报单位*</td>
                <td>
                    <input id="btnEdit2" class="mini-buttonedit" onbuttonclick="onButtonEdit" name="a" textName="b" style="width: 100%;height: 30px"/>
                </td>
            </tr>
            <tr class="trTitle">
                <td class="title">目的*</td>
                <td colspan="3">
                    <input class="mini-textarea" style="width:100%;height:60px;"/>
                </td>
            </tr>
        </table>
    </div>
</fieldset>



<table>
    <tr class="trTitle">
        <td class="t" colspan="4">与核电生产运营安全性,可靠性,经济的适应分析</td>
    </tr>
    <tr class="trTitle">
        <td class="title">安全性</td>
        <td> <input class="mini-textarea" style="width:100%;height:30px;"/></td>
        <td class="title">可靠性</td>
        <td> <input class="mini-textarea" style="width:100%;height:30px;"/></td>
    </tr>
    <tr class="trTitle">
        <td class="title">经济性</td>
        <td> <input class="mini-textarea" style="width:100%;height:30px;"/></td>
        <td class="title">其他</td>
        <td>
            <input class="mini-textarea" style="width:100%;height:30px;"/>
        </td>
    </tr>


    <tr class="trTitle">
        <td class="t" colspan="4">其他信息</td>
    </tr>
    <tr class="trTitle">
        <td class="title">成果应用</td>
        <td colspan="3"> <input class="mini-textarea" style="width:100%;height:60px;"/></td>
    </tr>
    <tr class="trTitle">
        <td class="title">实际用户</td>
        <td colspan="3"> <input class="mini-textarea" style="width:100%;height:60px;"/></td>
    </tr>
    <tr class="trTitle">
        <td class="title">潜在用户</td>
        <td colspan="3"> <input class="mini-textarea" style="width:100%;height:60px;"/></td>
    </tr>
    <tr class="trTitle">
        <td class="title">项目完成周期</td>
        <td colspan="3"> <input class="mini-textarea" style="width:100%;height:60px;"/></td>
    </tr>
    <tr class="trTitle">
        <td class="title">项目完成路径简介</td>
        <td colspan="3"> <input  class="mini-textarea" style="width:100%;height:60px;"/></td>
    </tr>


    <tr class="trTitle">
        <td class="t" colspan="4">预算信息</td>
    </tr>
    <tr class="trTitle">
        <td class="title">总预算</td>
        <td> <input class="mini-textarea" style="width:100%;height:30px;"/></td>
        <td class="title">公司经费</td>
        <td> <input class="mini-textarea" style="width:100%;height:30px;"/></td>
    </tr>

    <tr class="trTitle">
        <td class="title">外部支持经费</td>
        <td> <input class="mini-textarea" style="width:100%;height:30px;"/></td>
        <td class="title">国家经费</td>
        <td> <input class="mini-textarea" style="width:100%;height:30px;"/></td>
    </tr>
</table>
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
    function toggleFieldSet(ck, id) {
        var dom = document.getElementById(id);
        dom.className = !ck.checked ? "hideFieldset" : "";
    }
</script>

</body>
</html>