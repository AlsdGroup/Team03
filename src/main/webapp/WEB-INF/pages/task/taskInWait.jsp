<%--
  AlsdGo 2018年02月05日 17:26
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <title>待办任务</title>
    <link href="../../../css/demo.css" rel="stylesheet" type="text/css">
    <script src="../../../scripts/boot.js" type="text/javascript"></script>
    <style type="text/css">
        table {
            width: 100%;
            height: auto;
            border: 0px solid #ffffff;
            border-collapse: collapse;
            padding: 0px;
        }

        td {
            border: 1px solid #ffffff;
            border-collapse: collapse;
            padding: 0px;
            background-color: #d2f0f0;
        }

        .td1 {
            width: 10%;
            text-align: right;
            /*background-color: #dddddd;*/
        }

        .td2 {
            width: 30%;
            /*background-color: #dddddd;*/
        }

        #outer {
            text-align: center;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        #footer {
            background-color: lightyellow;
            text-align: center;
            color: rgba(60, 166, 206, 1);
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        #pagination {
            display: inline-block;
        }

        #pagination li {
            display: inline;
        }

        #select {
            display: inline-block;
            margin-left: 40px;
        }

        #select input[type="text"] {
            width: 30px;
            height: 20px;
            background-color: #ffffff;
            border-width: 1px;
        }

        #select input[type="button"] {
            width: 40px;
            height: 23px;
            background: #629755;
            border: none;
        }

        ul li {
            cursor: pointer;
        }

    </style>
</head>
<body>

<table class="form-table" id="form1" border="0" cellpadding="0" cellspacing="0">
    <%----%>
    <tr>
        <td colspan="6">当前位置: 个人工作台 >> 待办任务</td>
    </tr>
    <tr>
        <td colspan="6">查询条件</td>
    </tr>
    <tr>
        <td class="td1">申请时间</td>
        <td class="td2">
            <input class="mini-datepicker" width="100%" name="taskDate" id="taskDate"/>
        </td>
        <td class="td1">&nbsp;</td>
        <td class="td1">关键字</td>
        <td class="td2">
            <input class="mini-textbox" width="100%" name="taskName" id="taskName"/>
        </td>
        <td class="td1">&nbsp;</td>
    </tr>
    <tr>
        <td class="td1">申请人</td>
        <td class="td2">
            <input id="btnEditStaff"
                   class="mini-buttonedit"
                   onbuttonclick="onButtonEditStaff"
                   style="width:100%;" allowInput="false"
                   name="staffId" textName="staffName"/>
        </td>
        <td class="td1">&nbsp;</td>
        <td class="td1">所属部门</td>
        <td class="td2">
            <input id="btnEditDep"
                   class="mini-buttonedit"
                   onbuttonclick="onButtonEditDep"
                   style="width:100%;" allowInput="false"
                   name="depId" textName="depName"/>
        </td>
        <td class="td1">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="6">
            <div id="outer">
                <table>
                    <thead>
                    <tr>
                        <td colspan="8" style="text-align: right;background-color: lightyellow">
                            <input type="button" value="查询" id="query"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" name="checkall" id="checkall"/>
                        </td>
                        <td>流程编号</td>
                        <td>流程名称</td>
                        <td>所属部门</td>
                        <td>当前环节</td>
                        <td>提报人</td>
                        <td>提报时间</td>
                        <td>操作</td>
                    </tr>
                    </thead>
                    <tbody id="content">
                    </tbody>
                </table>
            </div>

            <div id="footer">
                <span id="summary"></span>
                <ul id="pagination">
                    <%--<li id="01">首页</li>--%>
                    <%--<li id="02">上一页</li>--%>
                    <%--<li id="03">下一页</li>--%>
                    <%--<li id="04">尾页</li>--%>
                </ul>
                <div id="select">
                    <span>跳转到 </span>
                    <input type="text" name="page_num">
                    <span> 页  </span>
                    <input type="button" name="go_btn" value="跳转">
                </div>
            </div>

        </td>
    </tr>
</table>

<script type="text/javascript">
    /* 加载mini组件, 后面的get方法才好用 */
    mini.parse();

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
    var pageNo = '1'; // 当前页
    var pageSize = '5'; // 每页数据数
    var pages = 0; // 总页数
    var taskDate = "2016"; // 申请时间
    var taskName = "申请"; // 关键字 流程名称
    var taskStaff = '10003'; // 申请人id
    var taskDep = '20001'; // 所属部门id
    var begin = 1; // 数字页码开始数
    var end = 10; // 数字页码结束数

    // 刚进页面 搜索所有学生
    //    loadData(pageNo, pageSize, taskDate, taskName, taskStaff, taskDep);

    // 模糊查询
    $("#query").click(function () {
        pageNo = '1';
        taskDate = $("#taskDate").val();
        taskName = $("#taskName").val();
        taskStaff = $("#btnEditStaff").val();
        taskDep = $("#btnEditDep").val();
        loadData(pageNo, pageSize, taskDate, taskName, taskStaff, taskDep);
    })

    // 获得当前页的数据 主要逻辑
    function loadData(pageNo, pageSize, taskDate, taskName, taskStaff, taskDep) {
        var data1 = {
            "pageIndex:": pageNo,
            "pageSize": pageSize,
            "taskDate": taskDate,
            "taskName": taskName,
            "taskStaff": taskStaff,
            "taskDep": taskDep
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
                var list = result.beanList;
                var totalCount = result.totalRecord;
                pages = result.totalPage;
                pageNo = result.pageNum;
                if (list.length != 0) {
                    $("#content").empty();
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
//                    $("#table").show();
                    $("#footer").show();
                    displayFooter(totalCount, pages, pageNo);
                } else {
//                    $("#table").hide();
                    $("#footer").hide();
                }
            }
        });
    }

    // 分页4功能加点击事件
    function addEvent4() {
        $("#01").click(function () {
            pageNo = 1;
            loadData(pageNo, pageSize, taskDate, taskName, taskStaff, taskDep);
        });

        $("#04").click(function () {
            pageNo = pages;
            loadData(pageNo, pageSize, taskDate, taskName, taskStaff, taskDep);
        });

        $("#02").click(function () {
            if (pageNo == 1) {
                return false;
            } else {
                pageNo--;
                loadData(pageNo, pageSize, taskDate, taskName, taskStaff, taskDep);
            }
        });

        $("#03").click(function () {
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
        $("#" + clickId).click(function () {
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
        var before8 = "<li id=01>首页</li><li id=02>上一页</li>";
        var after8 = "<li id=03>下一页</li><li id=04>尾页</li>";
        $("#pagination").empty();
        $("#pagination").append(before8);
        for (var i = 1; i >= begin && i <= end; i++) {
            if (i == pageNo) {
                //"[" + i + "]";
                $("#pagination").append("<li id=" + i + ">  " + i + "  </li>");
            } else {
                $("#pagination").append("<li id=" + i + "> [" + i + "] </li>");
                addEvent(i);
            }
        }
        $("#pagination").append(after8);
        addEvent4();
    }

    function displayFooter(totalCount, pages, pageNo) {
        var newText = '共' + totalCount + '条，' + '第' + pageNo + '页，' + '共' + pages + '页';
        $("#summary").text(newText);
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

</script>
</body>
</html>
