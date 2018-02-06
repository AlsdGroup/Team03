<%--
  AlsdGo 2018年01月19日 上午10:16
  谁的韶华流过鬓发，谁噙一笑煮酒观花，谁能相忘湖边柳下，你我纵是静坐也繁华。
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>StaffWindow</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="../../../css/demo.css" rel="stylesheet" type="text/css"/>
    <script src="../../../scripts/boot.js" type="text/javascript"></script>
    <script src="../../../scripts/jquery.min.js" type="text/javascript"></script>

    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            border: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }
    </style>
</head>
<body>
<div class="mini-toolbar" style="text-align:center;line-height:30px;" borderStyle="border:0;">
    <label>名称：</label>
    <input id="key" class="mini-textbox" style="width:150px;" onenter="onKeyEnter"/>
    <a class="mini-button" style="width:60px;" onclick="search()">查询</a>
</div>
<div class="mini-fit">

    <div id="grid1" class="mini-datagrid" style="width:100%;height:100%;"
         idField="id" allowResize="true"
         url="/selectAllStaff"
         sizeList="[2,3,5,10]" pageSize="5"
         borderStyle="border-left:0;border-right:0;" onrowdblclick="onRowDblClick">
        <div property="columns">
            <div type="indexcolumn"></div>
            <div field="staffName" width="120" headerAlign="center" allowSort="true">姓名</div>
            <div field="staffDepName" width="100%" headerAlign="center" allowSort="true">所属部门</div>
        </div>
    </div>

</div>
<div class="mini-toolbar" style="text-align:center;padding-top:8px;padding-bottom:8px;" borderStyle="border:0;">
    <a class="mini-button" style="width:60px;" onclick="onOk()">确定</a>
    <span style="display:inline-block;width:25px;"></span>
    <a class="mini-button" style="width:60px;" onclick="onCancel()">取消</a>
</div>

<script type="text/javascript">
    mini.parse();
    var grid = mini.get("grid1");
    grid.load();

    function GetData() {
        var row = grid.getSelected();
        return row;
    }

    function search() {
        var key = mini.get("key").getValue();
        grid.load({staffName: key});
    }

    function onKeyEnter(e) {
        search();
    }

    function onRowDblClick(e) {
        onOk();
    }

    function CloseWindow(action) {
        if (window.CloseOwnerWindow) return window.CloseOwnerWindow(action);
        else window.close();
    }

    function onOk() {
        CloseWindow("ok");
    }

    function onCancel() {
        CloseWindow("cancel");
    }

</script>

</body>
</html>
