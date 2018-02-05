<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>SelectGrid 弹出选择表格</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" /><link href="../demo.css" rel="stylesheet" type="text/css" />


    <script src="../../scripts/boot.js" type="text/javascript"></script>


</head>
<body>
<h1>SelectGrid 弹出选择表格</h1>

<input id="btnEdit1" class="mini-buttonedit" onbuttonclick="onButtonEdit" name="a" textName="b"/>

<script type="text/javascript">
    mini.parse();

    function onButtonEdit(e) {
        var btnEdit = this;
        mini.open({
            url: bootPATH + "../demo/CommonLibs/SelectGridWindow.jsp",
            title: "选择列表",
            width: 650,
            height: 380,
            ondestroy: function (action) {
                //if (action == "close") return false;
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须
                    if (data) {
                        btnEdit.setValue(data.id);
                        btnEdit.setText(data.name);
                    }
                }

            }
        });

    }
</script>

</body>
</html>