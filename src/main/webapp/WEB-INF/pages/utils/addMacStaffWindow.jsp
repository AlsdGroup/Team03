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
    <br>
    <label>机组的名称：</label>
    <input id="key1" class="mini-textbox" style="width:150px;"/>
    <br>
    <label>机组管理人：</label>
    <input id="key2" class="mini-textbox" style="width:150px;"/>
    <br><br>
</div>
<div class="mini-toolbar" style="text-align:center;padding-top:8px;padding-bottom:8px;" borderStyle="border:0;">
    <a class="mini-button" style="width:60px;" onclick="onOk()">确定</a>
    <span style="display:inline-block;width:25px;"></span>
    <a class="mini-button" style="width:60px;" onclick="onCancel()">取消</a>
    <br><br>
</div>

<script type="text/javascript">
    mini.parse();

    function CloseWindow(action) {
        if(action === "close") action = "cancel";
        if (window.CloseOwnerWindow) return window.CloseOwnerWindow(action);
        else window.close();
    }

    function onOk() {
        var key1 = mini.get("key1").getValue();
        var key2 = mini.get("key2").getValue();
        var data1 = {
            "macName": key1,
            "macManageStaffName": key2
        };
        var json1 = mini.encode(data1);
        $.ajax({
            url: "/addMac",
            type: "POST",
            dataType: "JSON",
            contentType: "application/json",
            data: json1,
            success: function (result) {
                // alert(result);
                CloseWindow("ok");
            },
            error : function() {
                alert('添加失败!');
            }
        });
    }

    function onCancel() {
        CloseWindow("cancel");
    }

</script>

</body>
</html>
