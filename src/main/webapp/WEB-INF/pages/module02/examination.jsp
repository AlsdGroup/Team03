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
            border: 0px solid #CBE4EC;
            border-collapse: collapse;
            padding: 0px;
        }

        td {
            border: 1px solid #CBE4EC;
            border-collapse: collapse;
            padding: 0px;
            background-color: #F0F8FA;
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
            background-color: #F0F8FA;
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
<body style="margin: 0">
<table class="form-table" id="form1" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td colspan="6" class="td0">当前位置: 个人工作台 >> 待办任务</td>
    </tr>
    <tr>
        <td colspan="6" class="td80">
            <img src="../../../img/btn4.png" id="searchimg1" onclick="searchHideOrShow1()"/>
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

        <td class="td2"><input type="date" class="mini-datepicker" required="true" style="width: 100%;height: 30px"/>
        </td>
        <td class="td3">&nbsp;</td>
        <td class="td1">合同止日期</td>
        <td class="td2"><input type="date" class="mini-datepicker" required="true" style="width: 100%;height: 30px"/>
        </td>
        <td class="td3">&nbsp;</td>
    </tr>

    <tr>
        <td colspan="6" class="td80">
            <img src="../../../img/btn4.png" id="searchimg2" onclick="searchHideOrShow2()"/>
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
        <td class="td3">&nbsp;</td>
    </tr>


    <tr>
        <td colspan="6" class="td80">
            <img src="../../../img/btn4.png" id="searchimg3" onclick="searchHideOrShow3()"/>
            <span>项目成果分配</span>
        </td>
    </tr>
    <tr id="searchtr6">
        <td colspan="6">
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
    <tr class="trTitle" id="searchtr7">
        <td class="td1">形成的知识产权及分配方式</td>
        <td colspan="6" class="td2"><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
        <td class="td3">&nbsp;</td>
    </tr>
    <tr class="trTitle" id="searchtr8">
        <td class="td1">直接经济效益及分配方式</td>
        <td colspan="6" class="td2"><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
        <td class="td3">&nbsp;</td>
    </tr>
    <tr class="trTitle" id="searchtr9">
        <td class="td1">形成的固定资产及分配方式</td>
        <td colspan="6" class="td2"><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
        <td class="td3">&nbsp;</td>
    </tr>
    <tr class="trTitle" id="searchtr10">
        <td class="td1">合同运作情况简介</td>
        <td colspan="6" class="td2"><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
        <td class="td3">&nbsp;</td>
    </tr>
    <tr class="trTitle" id="searchtr11">
        <td class="td1">附件</td>
        <td class="td2"><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
        <td><a class="mini-button">Browse</a></td>
        <td class="td3">&nbsp;</td>
    </tr>

    <tr class="trTitle">
        <td colspan="6" class="td80">
            <img src="../../../img/btn4.png" id="searchimg4" onclick="searchHideOrShow4()"/>
            <span>申请信息</span>
        </td>
    </tr>
    <tr class="trTitle" id="searchtr12">
        <td class="td1">技术部门经理</td>
        <td class="td2" colspan="6"><input class="mini-textarea" style="width: 100%;height: 30px"/></td>
        <td class="td3">&nbsp;</td>
    </tr>
    <tr>
        <div style="width: 150px;height: 30px;float: right;">
            <a class="mini-button" style="float: left" iconCls="submit" onclick="">通过</a>
            <a class="mini-button" style="float: right" iconCls="submit" onclick="">不通过</a>
        </div>
    </tr>


</table>
</div>
<script type="text/javascript">
    mini.parse();
    var flagHideOrShow = true;
    function searchHideOrShow1() {
        if (flagHideOrShow) {
            $("#searchtr1").hide();
            $("#searchtr2").hide();
            $("#searchtr3").hide();
            $("#searchimg1").attr("src", "../../../img/btn3.png");
            flagHideOrShow = false;
        } else {
            $("#searchtr1").show();
            $("#searchtr2").show();
            $("#searchtr3").show();
            $("#searchimg1").attr("src", "../../../img/btn4.png");
            flagHideOrShow = true;
        }
    }
    function searchHideOrShow2() {
        if (flagHideOrShow) {
            $("#searchtr4").hide();
            $("#searchtr5").hide();
            $("#searchimg2").attr("src", "../../../img/btn3.png");
            flagHideOrShow = false;
        } else {
            $("#searchtr4").show();
            $("#searchtr5").show();
            $("#searchimg2").attr("src", "../../../img/btn4.png");
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
            $("#searchimg3").attr("src", "../../../img/btn3.png");
            flagHideOrShow = false;
        } else {
            $("#searchtr6").show();
            $("#searchtr7").show();
            $("#searchtr8").show();
            $("#searchtr9").show();
            $("#searchtr10").show();
            $("#searchtr11").show();
            $("#searchimg3").attr("src", "../../../img/btn4.png");
            flagHideOrShow = true;
        }
    }
    function searchHideOrShow4() {
        if (flagHideOrShow) {
            $("#searchtr12").hide();
            $("#searchtr13").hide();
            $("#searchimg4").attr("src", "../../../img/btn3.png");
            flagHideOrShow = false;
        } else {
            $("#searchtr12").show();
            $("#searchtr13").show();
            $("#searchimg4").attr("src", "../../../img/btn4.png");
            flagHideOrShow = true;
        }
    }
</script>
</body>
</html>

