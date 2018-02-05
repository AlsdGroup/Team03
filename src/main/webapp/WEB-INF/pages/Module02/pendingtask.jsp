<%--
  Created by IntelliJ IDEA.
  User: hxd
  Date: 18/2/5
  Time: 下午8:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="../css/demo.css" rel="stylesheet" type="text/css">
    <script src="../scripts/boot.js" type="text/javascript"></script>
    <script src="swfupload/swfupload.js" type="text/javascript"></script>
    <script src="js/ajaxfileupload.js" type="text/javascript"></script>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8">

    <style>
        table {
            width: 50%;
            height: 40%;
            border: 1px solid #CCEEFF;
            border-collapse: collapse
        }

        .trTitle {

            background-color: #CCEEFF;
            border: solid white 2px;
        }
        .t {
            width: 10%;
            height: 40px;
        }

    </style>
</head>
<body>
<div>


<table>

    <tr class="trTitle">
        <td colspan="4">当前位置:个人工作台>>待办任务</td>
    </tr>


    <tr class="trTitle">
        <td colspan="4">查询条件</td>
    </tr>

    <tr class="trTitle">
        <td class="t">申请时间</td>
        <td><input class="mini-textarea" style="width: 100%;height: 100%"/></td>

        <td class="t">关键字</td>
        <td><input class="mini-textarea" style="width: 100%;height: 100%"/></td>
    </tr>
    <tr class="trTitle">
        <td class="t">申请人</td>
        <td><input class="mini-textarea" style="width: 100%;height: 100%"/></td>

        <td class="t">所属部门</td>
        <td><input class="mini-textarea" style="width: 100%;height: 100%"/></td>

    </tr>

</table>

<div style="width:800px;">
    <div class="mini-toolbar" style="border-bottom:0;padding:0px;">

            <tr>
                <td style="white-space:nowrap;">
                    <a class="mini-button" onclick="search()">查询</a>
                </td>
            </tr>

    </div>
</div>
<div id="datagrid1" class="mini-datagrid" style="width:800px;height:280px;"
     url="../data/AjaxService.aspx?method=SearchEmployees" idField="id"
     allowResize="true" pageSize="20"
     allowCellEdit="true" allowCellSelect="true" multiSelect="true"
     editNextOnEnterKey="true" editNextRowCell="true"

>
    <div property="columns">
        <div type="indexcolumn"></div>
        <div type="checkcolumn"></div>
        <div name="LoginName" field="loginname" headerAlign="center" allowSort="true" width="150">流程编号
            <input property="editor" class="mini-textbox" style="width:100%;" minWidth="200"/>
        </div>
        <div field="age" width="100" allowSort="true">流程名称
            <input property="editor" class="mini-spinner" minValue="0" maxValue="200" value="25" style="width:100%;"/>
        </div>
        <div name="birthday" field="birthday" width="100" allowSort="true" dateFormat="yyyy-MM-dd">所属部门
            <input property="editor" class="mini-datepicker" style="width:100%;"/>
        </div>
        <div field="remarks" width="120" headerAlign="center" allowSort="true">当前环节
            <input property="editor" class="mini-textarea" style="width:200px;" minWidth="200" minHeight="50"/>
        </div>
        <!--ComboBox：本地数据-->
        <div type="comboboxcolumn" autoShowPopup="true" name="gender" field="gender" width="100" allowSort="true"
             align="center" headerAlign="center">提报人
            <input property="editor" class="mini-combobox" style="width:100%;" data="Genders"/>
        </div>
        <!--ComboBox：远程数据-->
        <div type="comboboxcolumn" field="country" width="100" headerAlign="center">提报时间
            <input property="editor" class="mini-combobox" style="width:100%;" url="../data/countrys.txt"/>
        </div>
        <div type="checkboxcolumn" field="married" trueValue="1" falseValue="0" width="60" headerAlign="center">操作
        </div>
    </div>
</div>
</div>
<script type="text/javascript">

    var Genders = [{id: 1, text: '男'}, {id: 2, text: '女'}];

    mini.parse();

    var grid = mini.get("datagrid1");
    grid.load();


    function search() {
        var key = mini.get("key").getValue();

        grid.load({key: key});
    }

    function onKeyEnter(e) {
        search();
    }

    function addRow() {
        var newRow = {name: "New Row"};
        grid.addRow(newRow, 0);

        grid.beginEditCell(newRow, "LoginName");
    }
    function removeRow() {
        var rows = grid.getSelecteds();
        if (rows.length > 0) {

            grid.removeRows(rows, true);
        }
    }
    function saveData() {

        var data = grid.getChanges();
        var json = mini.encode(data);

        grid.loading("保存中，请稍后......");
        $.ajax({
            url: "../data/AjaxService.aspx?method=SaveEmployees",
            data: {data: json},
            type: "post",
            success: function (text) {
                grid.reload();
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert(jqXHR.responseText);
            }
        });
    }


    grid.on("celleditenter", function (e) {
        var index = grid.indexOf(e.record);
        if (index == grid.getData().length - 1) {
            var row = {};
            grid.addRow(row);
        }
    });

    grid.on("beforeload", function (e) {
        if (grid.getChanges().length > 0) {
            if (confirm("有增删改的数据未保存，是否取消本次操作？")) {
                e.cancel = true;
            }
        }
    });

</script>


</body>
</html>
