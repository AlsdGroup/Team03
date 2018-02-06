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
            <table id="">
                <tr>
                    <td colspan="8" style="text-align: right">
                        <input type="button" value="查询" onclick="kkkk()"/>
                    </td>
                </tr>
            </table>
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
        pageNo = 1;
        taskDate = $("#taskDate").val();
        taskName = $("#taskName").val();
        taskStaff = $("#btnEditStaff").val();
        taskDep = $("#btnEditDep").val();
        loadData(pageNo, pageSize, taskDate, taskName, taskStaff, taskDep);
    })

    // 获得当前页的数据 主要逻辑
    function loadData(pageNo, pageSize, taskDate, taskName, taskStaff, taskDep) {
        var data1 =  {
            "pageIndex:": pageNo,
            "pageSize": pageSize,
            "taskDate": taskDate,
            "taskName": taskName,
            "taskStaff": taskStaff,
            "taskDep": taskDep
        };
        var json1 = mini.encode(data1);   //序列化成JSON
        alert(json1);
        $.ajax({
            url: "/selectTask",
            type: "POST",
            dataType: "JSON",
            contentType: "application/json",
            data: json1,
            success: function (result) {
                console.log(result);







            }
        });
    }

    function kkkk() {
        loadData(pageNo, pageSize, taskDate, taskName, taskStaff, taskDep);
    }


</script>
</body>
</html>
