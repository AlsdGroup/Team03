<%--
  Created by IntelliJ IDEA.
  User: jbtms940317
  Date: 18/2/5
  Time: 上午11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>项目其他信息</title>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8">
    <link href="/css/demo.css" rel="stylesheet" type="text/css"/>

    <script src="/scripts/boot.js" type="text/javascript"></script>

    <style type="text/css">
        table {
            width: 100%;
            height: auto;
            border: 0px solid #ffffff;
            border-collapse: collapse;
            padding: 0px;
        }

        .trTitle {

            background-color: #d2f0f0;
            border: solid white 2px;

        }

        .title {
            width: 10%;
            height: 40px;
            text-align: center;
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
         editNextOnEnterKey="true" editNextRowCell="true">
        <div property="columns" class="mini-fit">
            <div id="datagrid" class="mini-datagrid" style="width:100%;height:100%;"
                 url="../data/AjaxService.aspx?method=SearchEmployees" idField="id"
                 sizeList="[5,10,20,50]" pageSize="10">
                <div property="columns">
                    <div type="checkcolumn"></div>
                    <div field="loginname" width="120" headerAlign="center" allowSort="true">流程编号</div>
                    <div field="name" width="120" headerAlign="center" allowSort="true">流程名称</div>
                    <div field="gender" width="100" renderer="onGenderRenderer" align="center" headerAlign="center">
                        申请部门
                    </div>
                    <div field="currentlink" width="100" allowSort="true">当前环节</div>
                    <div field="reportperson" width="100" allowSort="true">提报人</div>
                    <div field="reportingtime" width="100" headerAlign="center" dateFormat="yyyy-MM-dd"
                         allowSort="true">提报时间
                    </div>
                    <div field="operation" width="100" headerAlign="center" dateFormat="yyyy-MM-dd" allowSort="true">
                        操作
                    </div>
                </div>
            </div>

        </div>

    </div>
</div>
</div>
</div>
</body>
</html>

