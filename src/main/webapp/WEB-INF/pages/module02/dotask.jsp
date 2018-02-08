<%--
  Created by IntelliJ IDEA.
  User: hxd
  Date: 18/2/7
  Time: 上午8:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8">
    <link href="/css/demo.css" rel="stylesheet" type="text/css"/>

    <script src="/scripts/boot.js" type="text/javascript"></script>

    <style type="text/css">
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

        /*input[type="button"] {*/
        /*width: 40px;*/
        /*background: #3CA6CE;*/
        /*color: white;*/
        /*border: 1px solid white;*/
        /*}*/
        #outer {
            text-align: center;
        }

        #footer {
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
        }

        #pagination {
            margin-top: 2px;
            margin-bottom: 2px;
            margin-right: 40px;
            display: inline-block;
            float: right;
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
<body>
<tr>
    <td colspan="6">
        <div id="outer">
            <table style="text-align: center">
                <thead id="inthead">
                <tr>
                    <td colspan="8" style="background-color: #E5EDEF;text-align: right">
                        <input type="button" value="查询" id="query"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" name="checkall" id="checkall" onclick="checkall()"/>
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
                <tfoot id="idtfoot">
                <tr>
                    <td colspan="8" class="td81">
                        <div id="footer">
                            <span id="footerspan">每页记录数:</span>
                            <select id="pageSize" name="pageSize">
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="5" selected="selected">5</option>
                                <option value="10">10</option>
                            </select>
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
</div>
<script>var pageNo = 1; // 当前页
var pageSize = 5; // 每页数据数
var pages = 0; // 总页数
var taskDate = ""; // 申请时间
var taskName = ""; // 关键字 流程名称
var taskStaff = 0; // 申请人id mapper中大于0才加这个参数
var taskDep = 0; // 所属部门id mapper中大于0才加这个参数
var begin = 1; // 数字页码开始数
var end = 10; // 数字页码结束数
var taskState = 2; //yi办任务

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
            if (list.length != 0) {
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
                    var td8 = $("<td>").append("<input type='button' id='" + id + "' value='查看' name='dealone'/>");
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
