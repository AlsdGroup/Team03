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
    <title>科研合同项目申报</title>
    <link href="../../../css/demo.css" rel="stylesheet" type="text/css">
    <script src="../../../scripts/boot.js" type="text/javascript"></script>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8">

    <style>
        table {
            width: 100%;
            height: auto;
            border: 1px solid #CBE4EC;
            border-collapse: collapse;
            padding: 0px;
        }
        td {
            border: 1px solid #CBE4EC;
            border-collapse: collapse;
            padding: 0px;
            background-color: #F0F8FA;
        }
        .mini-textbox-border {
            border: none;
            height: 100%;
        }

        .mini-buttonedit-border {
            border: none;
            height: 100%;
        }

        .td0 {
            background-color: #D3EAF8;
            padding: 5px;
        }

        .td80 {
            background-image: -moz-linear-gradient(top, #F0F8FA, #D3EAF8);
            padding: 5px;
            padding-right: 25px;
        }

        .td1 {
            width: 10%;
            text-align: right;
            background-color: #D3EAF8;
            padding: 5px;
        }

        .td2 {
            width: 30%;
            background-color: white;
        }

        .td3 {
            width: 10%;
            background-color: #F0F8FA;
        }

        #pagination li {
            display: inline;
        }

        #inthead td {
            font-weight: bold;
            padding: 5px;
            background-color: #D3EAF8;
        }

        #content td {
            height: 50px;
        }

        #idtfoot td {
            background-color: #E5EDEF;
        }

        #select {
            display: inline-block;
            margin-left: 40px;
            margin-right: 40px;
            float: right;
        }

        #select input[type="text"] {
            width: 30px;
            /*height: 20px;*/
            background-color: #ffffff;
            border-width: 1px;
        }

        /*#select input[type="button"] {*/
        /*width: 40px;*/
        /*!*height: 23px;*!*/
        /*background: #3CA6CE;*/
        /*color: black;*/
        /*border: none;*/
        /*}*/

        ul li {
            cursor: pointer;
        }


    </style>
</head>
<body  style="margin: 0">
<table class="form-table" id="form1" border="0" cellpadding="0" cellspacing="0">
    <tr>

        <td colspan="6" class="td0"><img src="../../../img/flag1.gif" style="width: 15px;height: 15px;"
                                         oncontextmenu="return false;" ondragstart="return false;"/>当前位置: 个人工作台 >> 待办任务</td>
    </tr>
    <tr>
        <td colspan="6" class="td80">
            <img src="../../../img/minus3.png" style="width: 15px;height: 15px;cursor: pointer"
                 id="searchimg1" title="隐藏查询条件"
                 oncontextmenu="return false;"
                 ondragstart="return false;"
                 onclick="searchHideOrShow1()"/>
            <span>申请信息</span>
        </td>
    </tr>
    <tr class="trTitle" id="searchtr1">
        <td class="td1">合同名称</td>
        <td class="td2">
            <input class="mini-textbox" width="100%" name="taskDate" id="taskDate"/>
        </td>
        <td class="td3">&nbsp;</td>
        <td class="td1">合同编号</td>
        <td class="td2">
            <input class="mini-textbox" width="100%"/>
        </td>
        <td class="td3">&nbsp;</td>
    </tr>
    <tr class="trTitle" id="searchtr2">
        <td class="td1">合同时间</td>
        <td class="td2">
            <input class="mini-textbox" width="100%"/>
        </td>
        <td class="td3">&nbsp;</td>

    </tr>
    <tr class="trTitle" id="searchtr3">
        <td class="td1">合同起日期</td>

        <td class="td2"><input type="date" class="mini-datepicker" width = "100%"/></td>
        <td class="td3">&nbsp;</td>
        <td class="td1">合同止日期</td>
        <td class="td2"><input type="date" class="mini-datepicker" width = "100%"/></td>
        <td class="td3">&nbsp;</td>
    </tr>

    <tr>
        <td colspan="6" class="td80">
            <img src="../../../img/minus3.png" style="width: 15px;height: 15px;cursor: pointer"
                 id="searchimg2" title="隐藏查询条件"
                 oncontextmenu="return false;"
                 ondragstart="return false;"
                 onclick="searchHideOrShow2()"/>
            <span>合同经费信息</span>
        </td>
    </tr>
    <tr class="trTitle" id="searchtr4">
        <td class="td1">总费用</td>
        <td class="td2"><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
        <td class="td3">&nbsp;</td>
        <td class="td1">对方拨付</td>
        <td class="td2"><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
        <td class="td3">&nbsp;</td>
    </tr>
    <tr class="trTitle" id="searchtr5">
        <td class="td1">公司自筹</td>
        <td class="td2"><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
        <%--<td class="td3">&nbsp;</td>--%>
    </tr>


    <tr>
        <td colspan="6" class="td80">
            <img src="../../../img/minus3.png" style="width: 15px;height: 15px;cursor: pointer"
                 id="searchimg3" title="隐藏查询条件"
                 oncontextmenu="return false;"
                 ondragstart="return false;"
                 onclick="searchHideOrShow3()"/>
            <span>项目成果分配</span>
        </td>
    </tr>
    <tr id="searchtr6">
        <td colspan="6">
            <div style="height: 40px;margin-top: auto" id="cbl1" class="mini-checkboxlist" textField="text" valueField="id"
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
    <tr id="searchtr7">
        <td class="td1">形成的知识产权及分配方式</td>
        <td colspan="6" class="td2"><input class="mini-textarea" width="100%"/></td>
        <td class="td3">&nbsp;</td>
    </tr>
    <tr id="searchtr8">
        <td class="td1">直接经济效益及分配方式</td>
        <td colspan="6" class="td2"><input class="mini-textarea" width = "100%"/></td>
        <td class="td3">&nbsp;</td>
    </tr>
    <tr id="searchtr9">
        <td class="td1">形成的固定资产及分配方式</td>
        <td colspan="6" class="td2"><input class="mini-textarea" width = "100%"/></td>
        <td class="td3">&nbsp;</td>
    </tr>
    <tr id="searchtr10">
        <td class="td1">合同运作情况简介</td>
        <td colspan="6" class="td2"><input class="mini-textarea" width = "100%"/></td>
        <td class="td3">&nbsp;</td>
    </tr>
    <tr id="searchtr11">
        <td class="td1">运作说明</td>
        <td class="td2"><input class="mini-textarea" width = "100%"/></td>
        <td><a class="mini-button">Browse</a> </td>
        <%--<td class="td3">&nbsp;</td>--%>
    </tr>

    <tr>
        <td colspan="6" class="td80">
            <img src="../../../img/minus3.png" style="width: 15px;height: 15px;cursor: pointer"
                 id="searchimg4" title="隐藏查询条件"
                 oncontextmenu="return false;"
                 ondragstart="return false;"
                 onclick="searchHideOrShow4()"/>
            <span>申请信息</span>
        </td>
    </tr>
    <tr id="searchtr12">
        <td class="td1">技术部门经理</td>
        <td class="td2" colspan="6"><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
        <td class="td3">&nbsp;</td>
    </tr>
    <tr id="searchtr13">
        <td colspan="6"><a class="mini-button" style="float: right" iconCls="submit" onclick="">提交</a></td>
    </tr>

</table>
</div>
<script type="text/javascript">
    mini.parse();

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

    var flagHideOrShow = true;
    function searchHideOrShow1() {
        if (flagHideOrShow) {
            $("#searchtr1").hide();
            $("#searchtr2").hide();
            $("#searchtr3").hide();
            $("#searchimg1").attr("src", "../../../img/plus3.png");
            flagHideOrShow = false;
        } else {
            $("#searchtr1").show();
            $("#searchtr2").show();
            $("#searchtr3").show();
            $("#searchimg1").attr("src", "../../../img/minus3.png");
            flagHideOrShow = true;
        }
    }
    function searchHideOrShow2() {
        if (flagHideOrShow) {
            $("#searchtr4").hide();
            $("#searchtr5").hide();
            $("#searchimg2").attr("src", "../../../img/plus3.png");
            flagHideOrShow = false;
        } else {
            $("#searchtr4").show();
            $("#searchtr5").show();
            $("#searchimg2").attr("src", "../../../img/minus3.png");
            flagHideOrShow = true;
        }
    }
    function searchHideOrShow3() {
        if (flagHideOrShow) {
            $("#searchtr6").hide();
            $("#searchtr7").hide();
            $("#searchtr8").hide();
            $("#searchtr9").hide();
            $("#searchtr10").hide();
            $("#searchtr11").hide();
            $("#searchimg3").attr("src", "../../../img/plus3.png");
            flagHideOrShow = false;
        } else {
            $("#searchtr6").show();
            $("#searchtr7").show();
            $("#searchtr8").show();
            $("#searchtr9").show();
            $("#searchtr10").show();
            $("#searchtr11").show();
            $("#searchimg3").attr("src", "../../../img/minus3.png");
            flagHideOrShow = true;
        }
    }
    function searchHideOrShow4() {
        if (flagHideOrShow) {
            $("#searchtr12").hide();
            $("#searchtr13").hide();
            $("#searchimg4").attr("src", "../../../img/plus3.png");
            flagHideOrShow = false;
        } else {
            $("#searchtr12").show();
            $("#searchtr13").show();
            $("#searchimg4").attr("src", "../../../img/minus3.png");
            flagHideOrShow = true;
        }
    }
</script>

</body>
</html>
