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

        }

        td{
            border: 1px solid #CBE4EC;
            border-collapse: collapse;
            padding: 0px;
            background-color: #F0F8FA;
        }
        .td1{
            width: 10%;
            height: 30px;
            background-color: #D3EAF8;
            text-align: center;
        }

        .td2 {
            width: 30%;
            background-color: white;
        }
        .td80 {
            background-image: -moz-linear-gradient(top, #F0F8FA, #D3EAF8);
            padding: 5px;
            padding-right: 25px;
        }

        .mini-textbox-border {
            border: none;
        }

        .mini-buttonedit-border {
            border: none;
        }

        .mini-checkboxlist{
            background-color: white;
        }

        div {
            background-color: #d2f0f0;
        }

        #button {
            float: right;
        }
    </style>
</head>
<body style="margin: 0">

<table class="form-table">
    <tr>
        <td colspan="6" class="td80">
            <img src="../../../img/minus3.png" style="width: 15px;height: 15px;cursor: pointer" id="searchimg" onclick="searchHideOrShow()"/>
            <span>技术第一负责人信息</span>
        </td>
    </tr>
    <tr class="trTitle" id="searchtr1">
        <td class="td1">姓名、专业经历和能力简述</td>
        <td class="td2">
            <input class="mini-textarea" style="width: 100%;height: 30px" value="" name=""/>
        </td>
    </tr>
</table>

<table class="form-table">
    <tr>
        <td colspan="6" class="td80">
            <img src="../../../img/minus3.png" style="width: 15px;height: 15px;cursor: pointer" id="searchimg1" onclick="searchHideOrShow1()"/>
            <span>产品信息</span>
        </td>
    </tr>
    <tr class="trTitle" id="searchtr2">
        <td class="td1">产品形式</td>
        <td class="td2">
            <div id="cbl1" class="mini-checkboxlist" textField="text" valueField="id"
                 data="[{'id':1001,'text':'专题报告'},{'id':1002,'text':'技术方案'},{'id':1003,'text':'技术标准'},{'id':1004,'text':'硬件产品'},{'id':1005,'text':'生产性文件'},{'id':1006,'text':'设计文件'},{'id':1007,'text':'计算机软件'},{'id':1008,'text':'其他 ________'}]">
            </div>
        </td>
    </tr>
    <tr class="trTitle" id="searchtr3">
        <td class="td1">预计产权说明</td>
        <td class="td2">
            <input class="mini-textarea" style="width: 100%;height: 30px;"  name="propertyRight"/>
        </td>
    </tr>
    <tr class="trTitle" id="searchtr4">
        <td class="td1">经济效益</td>
        <td class="td2">
            <input class="mini-textarea" style="width: 100%;height: 30px;"  name="benefit"/>
        </td>
    </tr>
    <tr class="trTitle" id="searchtr5">
        <td class="td1">固定资产</td>
        <td class="td2">
            <input class="mini-textarea" style="width: 100%;height: 30px;"  name="Assets"/>
        </td>
    </tr>
    <tr class="trTitle" id="searchtr6">
        <td class="td1">验收标准</td>
        <td class="td2">
            <input class="mini-textarea" style="width: 100%;height: 30px;" name="standard"/>
        </td>
    </tr>
</table>

<table class="form-table">
    <tr>
        <td colspan="6" class="td80">
            <img src="../../../img/minus3.png" style="width: 15px;height: 15px;cursor: pointer" id="searchimg2" onclick="searchHideOrShow2()"/>
            <span>附件信息</span>
        </td>
    </tr>
    <tr class="trTitle" id="searchtr7">
        <td class="td1">立项报告书*</td>
        <td class="td2">
            <div>
                <input class="mini-htmlfile" name="Fdata" id="file1"
                       style="width: 100%;height: 30px;background-color: #d2f0f0">
            </div>
        </td>
    </tr>
</table>

<table class="form-table">
    <tr>
        <td colspan="6" class="td80">
            <img src="../../../img/minus3.png" style="width: 15px;height: 15px;cursor: pointer" id="searchimg3" onclick="searchHideOrShow3()"/>
            <span>流程信息</span>
        </td>
    </tr>
    <tr class="trTitle" id="searchtr8">
        <td class="td1">审批(部门经理)*</td>
        <td class="td2">
            <input id="btnEdit1" class="mini-buttonedit" onbuttonclick="onButtonEdit" name="a" textName="b"
                   style="width: 100%;height: 30px;background-color: white"/>
        </td>
    </tr>
</table>
<div id="button">
    <a href="" class="mini-button" iconCls="icon-addfolder" onclick="">提交</a>
</div>
</div>
<script>

    top["taskInWait"]=window;

    function changebodybccolor() {
        // 获取父页面背景颜色
        var bccolor = window.parent.parentbccolor;
        $("#body1").css({'background-color': bccolor});

        if(bccolor=='#f0f3ef'){
            // 红色主题
            $(" table").css({'border': '1px solid #e31d1a'});
            $(" td").css({'background-color': '#f0f3ef','border': '1px solid #e31d1a'});
            $(".td0").css({'background-color': '#e3e4e5'});
            $(".td80").css({'background-image': '-moz-linear-gradient(top, #ffffff, #e3e4e5)'});
            $(".td1").css({'background-color': '#e3e4e5'});
            $(".td2").css({'background-color': '#ffffff'});
            $(".td3").css({'background-color': '#f0f3ef'});
            $("#inthead td").css({'background-color': '#e3e4e5'});
            $("#idtfoot td").css({'background-color': '#e3e4e5'});
            $("#searchtd").css({'background-color': '#f0f3ef'});
        }else if(bccolor=='white'){
            $(" table").css({'border': '1px solid #000000'});
            $(" td").css({'background-color': '#ffffff','border': '1px solid #000000'});
            $(".td0").css({'background-color': '#e5edef'});
            $(".td80").css({'background-image': '-moz-linear-gradient(top, #ffffff, #e5edef)'});
            $(".td1").css({'background-color': '#e5edef'});
            $(".td2").css({'background-color': '#ffffff'});
            $(".td3").css({'background-color': '#ffffff'});
            $("#inthead td").css({'background-color': '#e5edef'});
            $("#idtfoot td").css({'background-color': '#e5edef'});
            $("#searchtd").css({'background-color': '#ffffff'});
        }else if(bccolor=='#e5edef'){
            $(" table").css({'border': '1px solid #CBE4EC'});
            $(" td").css({'background-color': '#f0f8fa','border': '1px solid #CBE4EC'});
            $(".td0").css({'background-color': '#d3eaf8'});
            $(".td80").css({'background-image': '-moz-linear-gradient(top, #F0F8FA, #D3EAF8)'});
            $(".td1").css({'background-color': '#d3eaf8'});
            $(".td2").css({'background-color': '#ffffff'});
            $(".td3").css({'background-color': '#f0f8fa'});
            $("#inthead td").css({'background-color': '#d3eaf8'});
            $("#idtfoot td").css({'background-color': '#e5edef'});
            $("#searchtd").css({'background-color': '#e5edef'});
        }
    }
    changebodybccolor();
    // 查询伸缩
    var flagHideOrShow = true;
    function searchHideOrShow() {
        if (flagHideOrShow) {
            $("#searchtr1").hide();
            $("#searchimg").attr("src", "../../../img/plus3.png");
            flagHideOrShow = false;
        } else {
            $("#searchtr1").show();
            $("#searchimg").attr("src", "../../../img/minus3.png");
            flagHideOrShow = true;
        }
    }

    function searchHideOrShow1() {
        if (flagHideOrShow) {
            $("#searchtr2").hide();
            $("#searchtr3").hide();
            $("#searchtr4").hide();
            $("#searchtr5").hide();
            $("#searchtr6").hide();
            $("#searchimg1").attr("src", "../../../img/plus3.png");
            flagHideOrShow = false;
        } else {
            $("#searchtr2").show();
            $("#searchtr3").show();
            $("#searchtr4").show();
            $("#searchtr5").show();
            $("#searchtr6").show();
            $("#searchimg1").attr("src", "../../../img/minus3.png");
            flagHideOrShow = true;
        }
    }

    function searchHideOrShow2() {
        if (flagHideOrShow) {
            $("#searchtr7").hide();
            $("#searchimg2").attr("src", "../../../img/plus3.png");
            flagHideOrShow = false;
        } else {
            $("#searchtr7").show();
            $("#searchimg2").attr("src", "../../../img/minus3.png");
            flagHideOrShow = true;
        }
    }
    function searchHideOrShow3() {
        if (flagHideOrShow) {
            $("#searchtr8").hide();
            $("#searchimg3").attr("src", "../../../img/plus3.png");
            flagHideOrShow = false;
        } else {
            $("#searchtr8").show();
            $("#searchimg3").attr("src", "../../../img/minus3.png");
            flagHideOrShow = true;
        }
    }

</script>
</body>
</html>

