<%--
  AlsdGo 2018年02月05日 17:26
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="../../../css/demo.css" rel="stylesheet" type="text/css">
    <script src="../../../scripts/boot.js" type="text/javascript"></script>
    <style type="text/css">
        table {
            width: 100%;
            height: auto;
            border: 1px solid #CBE4EC;
            border-collapse: collapse;
            margin: 0;
            padding: 0;
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
            background-color: white;
        }

        .td3 {
            width: 10%;
            background-color: #F0F8FA;
        }

        .mini-textbox-border {
            border: none;
        }

        .mini-buttonedit-border {
            border: none;
        }

        #outer {
            text-align: center;
        }

        #footer {
            font-family: Verdana;
            text-align: center;
            /*color: #3CA6CE;*/
            color: black;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            position: relative;
            padding: 2px;
        }

        #footerspan {
            float: left;
        }

        #pageSize {
            float: left;
        }

        #summary {
            float: left;
            margin-left: 20px;
        }

        #pagination {
            margin-top: 2px;
            margin-bottom: 2px;
            margin-right: 20px;
            display: inline-block;
            float: right;
        }

        #pagination li {
            display: inline;
        }

        #searchtd{
            background-color: #E5EDEF;
            text-align: right;
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
            margin-right: 20px;
            float: right;
        }

        #select input[type="text"] {
            width: 30px;
            /*height: 20px;*/
            background-color: #ffffff;
            border-width: 1px;
        }

        #select input[type="button"] {
            margin-left: 20px;
        }

        ul li {
            text-align: center;
            width: 25px;
            cursor: pointer;
            border: none;
            margin-left: 3px;
            margin-right: 3px;
        }

        /*查询按钮*/
        .btn {
            width: 64px;
            height: 26px;
            display: inline-block;
            text-align: left;
            font-family: Verdana;
            border-radius: 2px;
            background-color: #E1E1E2;
            color: black;
            cursor: pointer;
            border: 1px solid black;
            text-decoration: none;
            margin-right: 10px;
        }

        .btn:hover {
            background-color: #E5F1FB;
            border: 1px solid blue;
        }

        /*.bgbtn span {*/
        /*margin-left: 6px;*/
        /*padding-left: 18px;*/
        /*background: url(../../../img/search3.png) left center no-repeat;*/
        /*}*/

        #spanSearch {
            margin-left: 6px;
            padding-left: 18px;
            background: url(../../../img/search3.png) left center no-repeat;
        }

        #spanRefresh {
            margin-left: 6px;
            padding-left: 18px;
            background: url(../../../img/load1.png) left center no-repeat;
        }
    </style>
</head>
<body id="body1" style="margin: 0">

<table class="form-table" id="form1" border="0" cellpadding="0" cellspacing="0">
    <%----%>
    <tr>
        <td colspan="6" class="td0">
            <img src="../../../img/flag1.gif" style="width: 15px;height: 15px;"
                 oncontextmenu="return false;" ondragstart="return false;"/>
            <span>当前位置:&nbsp;</span>
            <span style="font-weight: bold">个人工作台 >> 已办任务</span>
        </td>
    </tr>
    <tr>
        <td colspan="6" class="td80">
            <div><img src="../../../img/minus3.png" style="width: 15px;height: 15px;cursor: pointer"
                      id="searchimg" title="隐藏查询条件" onclick="searchHideOrShow()"
                      oncontextmenu="return false;" ondragstart="return false;"/></div>
            <div style="margin-top: -17px;margin-left: 21px"><span>查询条件</span></div>
        </td>
    </tr>
    <tr id="searchtr1">
        <td class="td1">
            <span style="margin-right: 6px">申请时间</span>
        </td>
        <td class="td2">
            <input class="mini-datepicker" width="100%" name="taskDate" id="taskDate"/>
        </td>
        <td class="td3">&nbsp;</td>
        <td class="td1">
            <span style="margin-right: 6px">关键字</span>
        </td>
        <td class="td2">
            <input class="mini-textbox" width="100%" name="taskName" id="taskName"/>
        </td>
        <td class="td3">&nbsp;</td>
    </tr>
    <tr id="searchtr2">
        <td class="td1">
            <span style="margin-right: 6px">申请人</span>
        </td>
        <td class="td2" id="btnEditStaffTd">
            <input id="btnEditStaff"
                   class="mini-buttonedit"
                   onbuttonclick="onButtonEditStaff"
                   style="width:100%;" allowInput="false"
                   name="staffId" textName="staffName"/>
        </td>
        <td class="td3">&nbsp;</td>
        <td class="td1">
            <span style="margin-right: 6px">所属部门</span>
        </td>
        <td class="td2">
            <input id="btnEditDep"
                   class="mini-buttonedit"
                   onbuttonclick="onButtonEditDep"
                   style="width:100%;" allowInput="false"
                   name="depId" textName="depName"/>
        </td>
        <td class="td3">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="6">
            <div id="outer">
                <table style="text-align: center">
                    <thead id="inthead">
                    <tr>
                        <td id="searchtd" colspan="8">
                            <a href="javascript:" class="bgbtn btn" id="query">
                                <span id="spanSearch">查询</span>
                            </a>
                            <a href="javascript:" class="bgbtn btn" id="searchRefresh">
                                <span id="spanRefresh">重置</span>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td width="3%">
                            <input type="checkbox" name="checkall" id="checkall" onclick="checkall()"/>
                        </td>
                        <td width="12%"><span>流程编号</span></td>
                        <td width="20%"><span>流程名称</span></td>
                        <td width="10%"><span>所属部门</span></td>
                        <td width="20%"><span>当前环节</span></td>
                        <td width="10%"><span>提报人</span></td>
                        <td width="*"><span>提报时间</span></td>
                        <td width="6%"><span>操作</span></td>
                    </tr>
                    </thead>
                    <tbody id="content">
                    </tbody>
                    <tfoot id="idtfoot">
                    <tr>
                        <td colspan="8" class="td81">
                            <div id="footer">
                                <span id="footerspan">每页记录数:&nbsp;&nbsp;</span>
                                <select id="pageSize" name="pageSize">
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="5" selected="selected">5</option>
                                    <option value="10">10</option>
                                </select>
                                <span style="float: left">&nbsp;&nbsp;</span>
                                <span id="summary"></span>
                                <div id="select">
                                    <span>跳转到 </span>
                                    <input type="text" name="page_num" style="text-align: center">
                                    <span> 页  </span>
                                    <input type="button" name="go_btn" value="跳转">
                                </div>
                                <ul id="pagination"></ul>
                            </div>
                        </td>
                    </tr>
                    </tfoot>
                </table>
            </div>
        </td>
    </tr>
</table>

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

    function GetFormData() {
        var form1 = new mini.Form("#form1");
        var data1 = form1.getData();      //获取表单多个控件的数据
//        var json1 = mini.encode(data1);   //序列化成JSON
        return data1;
    }

    function onButtonEditStaff(e) {
        var btnEdit = this;
        mini.open({
            url: "/selectStaffWindow",
            title: "选择人员",
            width: 650,
            height: 380,
            ondestroy: function (action) {
                if (action == "close") return false;
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);
                    if (data) {
                        btnEdit.setValue(data.staffId);
                        btnEdit.setText(data.staffName);
                    }
                }
            }
        });
    }

    function onButtonEditDep(e) {
        var btnEdit = this;
        mini.open({
            url: "/selectDepWindow",
            title: "选择部门",
            width: 650,
            height: 380,
            ondestroy: function (action) {
                if (action == "close") return false;
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);
                    if (data) {
                        btnEdit.setValue(data.depId);
                        btnEdit.setText(data.depName);
                    }
                }
            }
        });
    }

    ///////////////////////////////////////////////////////////////////////////////////
    var pageNo = 1; // 当前页
    var pageSize = 5; // 每页数据数
    var pages = 0; // 总页数
    var taskDate = ""; // 申请时间
    var taskName = ""; // 关键字 流程名称
    var taskStaff = 0; // 申请人id mapper中大于0才加这个参数
    var taskDep = 0; // 所属部门id mapper中大于0才加这个参数
    var begin = 1; // 数字页码开始数
    var end = 10; // 数字页码结束数
    var taskState = 2; //已办任务

    // 刚进页面 查询所有任务信息
    loadData(pageNo, pageSize, taskDate, taskName, taskStaff, taskDep);

    // 获取模糊查询的参数 和每页显示数据数
    function getParameters() {
        pageSize = $("#pageSize").val();
        taskDate = $("input[name='taskDate']").val();
        taskName = $("input[name='taskName']").val();
        taskStaff = $("input[name='staffId']").val() == '' ? 0 : $("input[name='staffId']").val();
        taskDep = $("input[name='depId']").val() == '' ? 0 : $("input[name='depId']").val();
    }

    // 模糊查询
    $("#query").click(function () {
        pageNo = 1;
        getParameters();
        loadData(pageNo, pageSize, taskDate, taskName, taskStaff, taskDep);
    })

    // 获得当前页的数据 主要逻辑
    function loadData(pageNo, pageSize, taskDate, taskName, taskStaff, taskDep) {
        var data1 = {
            "pageIndex": pageNo,
            "pageSize": pageSize,
            "taskDate": taskDate,
            "taskName": taskName,
            "taskStaff": taskStaff,
            "taskDep": taskDep,
            "taskState": taskState
        };
        var json1 = mini.encode(data1);
        $.ajax({
            url: "/selectTask",
            type: "POST",
            dataType: "JSON",
            contentType: "application/json",
            data: json1,
            success: function (result) {
                console.log(result);
                $("#content").empty();
                $("#footer").hide();
                var list = result.beanList;
                var totalCount = result.totalRecord;
                pages = result.totalPage;
                pageNo = result.pageNum;
                if (list != null) {
                    for (var i = 0; i < list.length; i++) {
                        var id = list[i].id;
                        var taskId = list[i].taskId;
                        var taskName = list[i].taskName;
                        var taskDep = list[i].taskDep;
                        var taskDepName = list[i].taskDepName;
                        var taskStep = list[i].taskStep;
                        var taskStaff = list[i].taskStaff;
                        var taskStaffName = list[i].taskStaffName;
                        var taskDate = list[i].taskDate;
                        var taskState = list[i].taskState;
                        var staffBefore = list[i].staffBefore;
                        var staffNow = list[i].staffNow;
                        var tr = $("<tr>");
                        var td1 = $("<td>").append("<input type='checkbox' value='" + id + "' name='checkone'/>");
                        var td2 = $("<td>").text(taskId);
                        var td3 = $("<td>").text(taskName);
                        var td4 = $("<td>").text(taskDepName);
                        var td5 = $("<td>").text(taskStep);
                        var td6 = $("<td>").text(taskStaffName);
                        var td7 = $("<td>").text(taskDate);
                        var td8 = $("<td>").append("<input type='button' id='" + id + "' value='办理' name='dealone'/>");
                        tr.append(td1);
                        tr.append(td2);
                        tr.append(td3);
                        tr.append(td4);
                        tr.append(td5);
                        tr.append(td6);
                        tr.append(td7);
                        tr.append(td8);
                        $("#content").append(tr);
                    }
                    makePageNum();
                    //$("#table").show();
                    $("#footer").show();
                    displayFooter(totalCount, pages, pageNo);
                    changebodybccolor();
                }
            }
        });
    }

    // 全选反选
    function checkall() {
        if ($("#checkall").prop("checked")) {
            $('input[name="checkone"]').each(function (i) {
                $(this).prop("checked", true);
            });
        } else {
            $('input[name="checkone"]').each(function (i) {
                $(this).prop("checked", false);
            });
        }
    }

    // 分页4功能加点击事件
    function addEvent4() {
        $("#pp01").click(function () {
            pageNo = 1;
            loadData(pageNo, pageSize, taskDate, taskName, taskStaff, taskDep);
        });

        $("#pp04").click(function () {
            pageNo = pages;
            loadData(pageNo, pageSize, taskDate, taskName, taskStaff, taskDep);
        });

        $("#pp02").click(function () {
            if (pageNo == 1) {
                return false;
            } else {
                pageNo--;
                loadData(pageNo, pageSize, taskDate, taskName, taskStaff, taskDep);
            }
        });

        $("#pp03").click(function () {
            if (pageNo == pages) {
                return false;
            } else {
                pageNo++;
                loadData(pageNo, pageSize, taskDate, taskName, taskStaff, taskDep);
            }
        });
    }

    // 分页加点击事件
    function addEvent(clickId) {
        $("#pp" + clickId).click(function () {
            pageNo = clickId;
            loadData(pageNo, pageSize, taskDate, taskName, taskStaff, taskDep);
        })
    }

    // 计算分页页码
    function makePageNum() {
        if (pages < 10) {
            begin = 1;
            end = pages;
        } else {
            begin = pageNo - 5;
            end = pageNo + 4;
            if (begin < 1) {
                begin = 1;
                end = 10;
            }
            if (end > pages) {
                begin = pages - 9;
                end = pages;
            }
        }

        var img1 = "<img src='../../../img/btnleft4.png' style='width: 15px;height: 15px;' oncontextmenu='return false;' ondragstart='return false;'/>";
        var img2 = "<img src='../../../img/btnleft3.png' style='width: 15px;height: 15px;' oncontextmenu='return false;' ondragstart='return false;'/>";
        var img3 = "<img src='../../../img/btnright3.png' style='width: 15px;height: 15px;' oncontextmenu='return false;' ondragstart='return false;'/>";
        var img4 = "<img src='../../../img/btnright4.png' style='width: 15px;height: 15px;' oncontextmenu='return false;' ondragstart='return false;'/>";
        var before8 = "<li id=pp01>" + img1 + "</li><li id=pp02>" + img2 + "</li>";
        var after8 = "<li id=pp03>" + img3 + "</li><li id=pp04>" + img4 + "</li>";

        $("#pagination").empty();
        $("#pagination").append(before8);
        for (var i = 1; i >= begin && i <= end; i++) {
            if (i == pageNo) {
                //"[" + i + "]";
                $("#pagination").append("<li id=pp" + i + "><span style='font-weight: bold;color: #0069ab'>" + i + "</span></li>");
            } else {
                $("#pagination").append("<li id=pp" + i + "> [" + i + "] </li>");
                addEvent(i);
            }
        }
        $("#pagination").append(after8);
        addEvent4();
    }

    function displayFooter(totalCount, pages, pageNo) {
        var newText = '  共'
            + "<span style='color: #0069ab'>" + totalCount + "</span>"
            + '条    ' + '第'
            + "<span style='color: #0069ab'>" + pageNo + "</span>" + '页    ' + '共'
            + "<span style='color: #0069ab'>" + pages + "</span>" + '页';
        $("#summary").html(newText);
    }

    $("input[name='page_num']").keydown(function (e) {
        if (e.keyCode == 13) {
            $("input[name='go_btn']").click();
        }
    });

    $("input[name='go_btn']").click(function () {
        var goPage = $("input[name='page_num']").val();
        if (goPage >= 1 && goPage <= pages && goPage != pageNo) {
            pageNo = goPage;
            loadData(pageNo, pageSize, taskDate, taskName, taskStaff, taskDep);
        } else {
            return false;
        }
    });

    // 查询条件重置
    $("#searchRefresh").click(function () {
        $(".mini-buttonedit-input").val("");
        $(".mini-textbox-input").val("");
        $("input[name='taskDate']").val("");
        $("input[name='taskName']").val("");
        $("input[name='staffId']").val("");
        $("input[name='depId']").val("");
    })

    // 查询收缩
    var flagHideOrShow = true;

    function searchHideOrShow() {
        if (flagHideOrShow) {
            $("#searchtr1").hide();
            $("#searchtr2").hide();
            $("#searchimg").attr("src", "../../../img/plus3.png");
            $("#searchimg").attr("title", "显示查询条件");
            flagHideOrShow = false;
        } else {
            $("#searchtr1").show();
            $("#searchtr2").show();
            $("#searchimg").attr("src", "../../../img/minus3.png");
            $("#searchimg").attr("title", "隐藏查询条件");
            flagHideOrShow = true;
        }
    }

</script>
</body>
</html>
