<%--
  Created by IntelliJ IDEA.
  User: jbtms940317
  Date: 18/2/5
  Time: 下午4:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>FieldSet</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" /><link href="../demo.css" rel="stylesheet" type="text/css" />
    <script src="/scripts/boot.js" type="text/javascript"></script>
    <style type="text/css">
        .hideFieldset
        {
            border-left:0;
            border-right:0;
            border-bottom:0;
        }
        .hideFieldset .fieldset-body
        {
            display:none;
        }

    </style>
</head>
<body>

<br/>
<h4>可折叠</h4>
<fieldset id="fd2" style="width:600px;">
    <legend><label><input type="checkbox" checked id="checkbox1" onclick="toggleFieldSet(this, 'fd2')" hideFocus/>详细信息</label></legend>
    <div class="fieldset-body">
        <table class="form-table" border="0" cellpadding="1" cellspacing="2">
            <tr>
                <td class="form-label" style="width:60px;">身份证：</td>
                <td style="width:150px">
                    <input name="name" class="mini-textbox" />
                </td>
                <td class="form-label" style="width:60px;">籍贯：</td>
                <td style="width:150px">
                    <input name="addr" class="mini-textbox" />
                </td>
            </tr>
        </table>
    </div>
</fieldset>
<script type="text/javascript">
    function toggleFieldSet(ck, id) {
        var dom = document.getElementById(id);
        dom.className = !ck.checked ? "hideFieldset" : "";
    }
</script>
</body>
</html>
