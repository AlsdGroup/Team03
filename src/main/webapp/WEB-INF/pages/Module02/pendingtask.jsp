<%--
  AlsdGo 2018年02月05日 17:26
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <title>待办任务</title>
    <link href="../../css/demo.css" rel="stylesheet" type="text/css">
    <script src="../../scripts/boot.js" type="text/javascript"></script>

    <style type="text/css">
        table {
            width: 100%;
            height: auto;
            border: 0px solid #CCEEFF;
            border-collapse: collapse;
            padding: 0px;
        }

        td {
            border: 1px solid #CCEEFF;
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
<div>

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
            <input class="mini-datepicker" width="100%" value="" name="askTime"/>
        </td>
        <td class="td1">流程名称</td>
        <td class="td2">
            <input class="mini-textbox" width="100%" value="" name="keyValue"/>
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
        <td class="td1">关键字</td>
        <td class="td2">
            <input class="mini-textbox" width="100%" value="" name="keyValue"/>
        </td>
        <td class="td1">&nbsp;</td>


    </tr>
    <tr>

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
        <td colspan="6" style="text-align: right">
            <input type="button" value="查询"/>
        </td>
    </tr>
</table>
<div id="datagrid1" class="mini-datagrid" style="width:800px;height:280px;"
     url="../data/AjaxService.aspx?method=SearchEmployees" idField="id"
     allowResize="true" pageSize="20"
     allowCellEdit="true" allowCellSelect="true" multiSelect="true"
     editNextOnEnterKey="true"  editNextRowCell="true"

>
    <div property="columns" class="mini-fit">
        <div id="datagrid" class="mini-datagrid" style="width:100%;height:100%;"
             url="../data/AjaxService.aspx?method=SearchEmployees"  idField="id"
             sizeList="[5,10,20,50]" pageSize="10"
        >
            <div property="columns">
                <div type="indexcolumn" ></div>
                <div field="loginname" width="120" headerAlign="center" allowSort="true">流程编号</div>
                <div field="name" width="120" headerAlign="center" allowSort="true">流程名称</div>
                <div field="gender" width="100" renderer="onGenderRenderer" align="center" headerAlign="center">申请部门</div>
                <div field="currentlink" width="100" allowSort="true">当前环节</div>
                <div field="reportperson" width="100" allowSort="true">提报人</div>
                <div field="reportingtime" width="100" headerAlign="center" dateFormat="yyyy-MM-dd" allowSort="true">提报时间</div>
                <div field="operation" width="100" headerAlign="center" dateFormat="yyyy-MM-dd" allowSort="true">操作</div>
            </div>
        </div>

    </div>d="married" trueValue="1" falseValue="0" width="60" headerAlign="center">操作</div>
    </div>
</div>
</div>
<script>

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

</script>
</body>
</html>
