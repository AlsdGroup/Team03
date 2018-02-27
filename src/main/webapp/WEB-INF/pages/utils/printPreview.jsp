<%--
  AlsdGo 2018年02月27日 18:13
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>打印预览</title>
    <style type="text/css">
        #divouter {
            text-align: center;
            width: 100%;
            height: 100%;
        }

        #table1 {
            background-color: #ffffff;
            border: none;
            border-collapse: collapse;
            text-align: center;
            font-size: 15px;
            margin: auto;
        }

        td {
            height: 25px;
            border: 1px solid #000000;
            background-color: #ffffff;
            padding: 4px;
        }

        .td1 {
            border: none;
            font-size: 25px;
            font-weight: bold;
            padding: 0px;
        }

        .td2 {
            background-color: #eeece1;
        }

        .td3 {
            color: red;
        }

        .td4 {
            text-align: left;
            padding: 0px;
        }
    </style>
</head>
<body>
<div id="divouter">
    <form action="*">
        <table id="table1">
            <tr>
                <td class="td1" colspan="10" rowspan="1">
                    <span>《控制区临时通行证》(参观证) 申请表</span>
                </td>
            </tr>
            <tr>
                <td class="td2" colspan="2">
                    <span>申请人姓名</span>
                </td>
                <td colspan="3">
                    <span>张三</span>
                </td>
                <td class="td2" colspan="2">
                    <span>申请人单位</span>
                </td>
                <td colspan="3">
                    <span>阳江公司</span>
                </td>
            </tr>
            <tr>
                <td class="td2" colspan="2">
                    <span>申请人身份证号</span>
                </td>
                <td colspan="3">
                    <span>53983707234720</span>
                </td>
                <td class="td2" colspan="2">
                    <span>申请人磁卡号</span>
                </td>
                <td colspan="3">
                    <span>12345678</span>
                </td>
            </tr>
            <tr>
                <td class="td4" colspan="10" style="height: 180px">
                    <p>我承诺严格遵守辐射控制区管理规定,一切参观活动均在指定RP2人员陪同下进</p>
                    <p>行.在辐射控制区内不进入高辐射工作区域,不从事任何操作工作.</p>
                    <p><strong>注意事项:</strong></p>
                    <p>◆ 该证有效期≤7天;</p>
                    <p>◆ 人员每年申办参观证不得超过6次,每次累计剂量不得超过150μSv;</p>
                    <p>◆ 实际陪同人必须与RP证上一致;</p>
                    <p>◆ 每份申请表限填写一名申请人.</p>
                    <p> 参阅人已阅读<input type="checkbox"/></p>
                </td>
            </tr>
            <tr>
                <td class="td2" colspan="2">
                    <span>参观项目</span>
                </td>
                <td colspan="8">
                    <span>辐射区安全作业</span>
                </td>
            </tr>
            <tr>
                <td class="td2" colspan="2">
                    <lable>参观时间</lable>
                </td>
                <td colspan="8">
                    <input type="text" name="username" style="width:200px;height: 22px">
                </td>
            </tr>
            <tr>
                <td class="td2" colspan="2">
                    <lable>陪同人职责与要求</lable>
                </td>
                <td colspan="8">
                    <input type="text" name="username" style="width:200px;height: 22px">
                </td>
            </tr>
            <tr>
                <td class="td2" colspan="2" style="height: 60px">
                    <lable>陪同人承诺</lable>
                </td>
                <td class="td4" colspan="8">
                <span>
                    我已阅读上述条文,满足相关资质要求,明确陪同人职责,<br>
                    并承诺履行其职责.对申请人安全负责.陪同人已阅读
                    <input type="checkbox"/>
                </span>
                </td>
            </tr>
            <tr>
                <td class="td2" colspan="1" rowspan="4">
                <span>
                    根据实 <br>
                    际情况 <br>
                    选择一 <br>
                    栏填写 <br>
                </span>

                </td>
                <td class="td2" colspan="2">
                    <span>YJNPC员工</span>
                </td>
                <td class="td2" colspan="4">
                    <span>申请人所在部经理签字</span>
                </td>
                <td colspan="3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="td2" colspan="2">
                    <span>YJNPC承包商</span>
                </td>
                <td class="td2" colspan="4">
                    <span>YJNPC接口部门经理签字</span>
                </td>
                <td colspan="3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="td2" colspan="2" rowspan="2">
                    <span>PYE及其承包商</span>
                </td>
                <td class="td2" colspan="4">
                    <span>申请人所在队办经理签字</span>
                </td>
                <td colspan="3" rowspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="td2" colspan="4">
                    <span>YJNPC接口部门经理签字</span>
                </td>
            </tr>
            <tr>
                <td class="td2" colspan="3">
                    <span>批准进入控制区时间</span>
                </td>
                <td colspan="7">
                    <input type="text" name="username" style="width:200px;height: 22px">
                </td>
            </tr>
            <tr>
                <td class="td2" colspan="3">
                    <span>辐射防护工程师签字/日期</span>
                </td>
                <td colspan="7">
                    <input type="text" name="username" style="width:200px;height: 22px">
                </td>
            </tr>
        </table>
    </form>
</div>


</body>
</html>
