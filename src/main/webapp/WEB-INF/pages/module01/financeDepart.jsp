<%--
  Created by IntelliJ IDEA.
  User: jbtms940317
  Date: 18/2/5
  Time: 下午4:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>财务部审批</title>
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
        }
        .title{
            width: 10%;
            height: 40px;
            text-align: center;
        }
        div{
            background-color: #d2f0f0;
        }
        td{
            border: 1px solid #CBE4EC;
            border-collapse: collapse;
            padding: 0px;
            background-color: #F0F8FA;
        }
        .td80 {
            background-image: -moz-linear-gradient(top, #F0F8FA, #D3EAF8);
            padding: 5px;
            padding-right: 25px;
        }
        #button{
            float: right;
        }
    </style>
</head>
</head>
<body style="margin: 0">

    <table class="form-table">
        <tr>
            <td colspan="6" class="td80">
                <img src="../../../img/minus3.png" style="width: 15px;height: 15px;cursor: pointer" id="searchimg" onclick="searchHideOrShow()"/>
                <span>项目基本信息</span>
            </td>
        </tr>
        <tr class="trTitle" id="searchtr1">
            <td class="title">项目名称</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/></td>
        </tr>
        <tr class="trTitle" id="searchtr2">
            <td class="title">项目申报单位</td>
            <td>
                <input id="btnEdit1" class="mini-buttonedit" onbuttonclick="onButtonEdit" name="a" textName="b"
                       style="width: 100%;height: 30px"/>
            </td>
            <td class="title">联合申报单位</td>
            <td>
                <input id="btnEdit2" class="mini-buttonedit" onbuttonclick="onButtonEdit" name="a" textName="b"
                       style="width: 100%;height: 30px"/>
            </td>
        </tr>
        <tr class="trTitle" id="searchtr3">
            <td class="title">目的</td>
            <td colspan="3">
                <input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/>
            </td>
        </tr>
    </table>
    <table class="form-table">
        <tr>
            <td colspan="6" class="td80">
                <img src="../../../img/minus3.png" style="width: 15px;height: 15px;cursor: pointer" id="searchimg1" onclick="searchHideOrShow1()"/>
                <span>与核电生产运营安全性、可靠性、经济的适应分析</span>
            </td>
        </tr>
        <tr class="trTitle" id="searchtr4">
            <td class="title">安全性</td>
            <td><input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/></td>
            <td class="title">可靠性</td>
            <td><input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/></td>
        </tr>
        <tr class="trTitle" id="searchtr5">
            <td class="title">经济性</td>
            <td><input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/></td>
            <td class="title">其他</td>
            <td>
                <input class="mini-textarea" style="width:100%;height:30px;" value="" name=""/>
            </td>
        </tr>
    </table>

    <table class="form-table">
        <tr>
            <td colspan="6" class="td80">
                <img src="../../../img/minus3.png" style="width: 15px;height: 15px;cursor: pointer" id="searchimg2" onclick="searchHideOrShow2()"/>
                <span>工程师评审意见</span>
            </td>
        </tr>
        <tr class="trTitle" id="searchtr6">
            <td class="title">评审结果</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:40px;" value="" name=""/></td>
        </tr>
        <tr class="trTitle" id="searchtr7">
            <td class="title">立项报告书</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:40px;" value="" name=""/></td>
        </tr>
    </table>


    <table class="form-table">
        <tr>
            <td colspan="6" class="td80">
                <img src="../../../img/minus3.png" style="width: 15px;height: 15px;cursor: pointer" id="searchimg3" onclick="searchHideOrShow3()"/>
                <span>技术可行性分析意见</span>
            </td>
        </tr>
        <tr class="trTitle" id="searchtr8">
            <td class="title">对阳江公司科技发展规划的符合性审定</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:40px;" value="" name=""/></td>
        </tr>
        <tr class="trTitle" id="searchtr9">
            <td class="title">对项目成果的应用领域和价</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:40px;" value="" name=""/></td>
        </tr>
        <tr class="trTitle" id="searchtr10">
            <td class="title">总体评价</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:40px;" value="" name=""/></td>
        </tr>
    </table>

    <table class="form-table">
        <tr>
            <td colspan="6" class="td80">
                <img src="../../../img/minus3.png" id="searchimg4" onclick="searchHideOrShow4()"/>
                <span>操作信息</span>
            </td>
        </tr>
        <tr class="trTitle" id="searchtr11">
            <td class="title">要求</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:40px;" value="" name=""/></td>
        </tr>
        <tr class="trTitle" id="searchtr12">
            <td class="title">建议</td>
            <td colspan="3"><input class="mini-textarea" style="width:100%;height:40px;" value="" name=""/></td>
        </tr>
    </table>
    <div id="button">
        <a href="" class="mini-button" iconCls="icon-no" onclick="">不推荐</a>
        <a href="" class="mini-button" iconCls="icon-addfolder" onclick="">推荐</a>
    </div>


<script>
    /* 加载mini组件，后面的get方法才好用 */
    mini.parse();

    /* 审批(部门经理)点击事件 */
    function onButtonEdit(e) {
        var btnEdit = this;
        mini.open({
            url: "/selectDepWindow",
            title: "选择项目申报单位",
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

    // 查询伸缩
    var flagHideOrShow = true;
    function searchHideOrShow() {
        if (flagHideOrShow) {
            $("#searchtr1").hide();
            $("#searchtr2").hide();
            $("#searchtr3").hide();
            $("#searchimg").attr("src", "../../../img/plus3.png");
            flagHideOrShow = false;
        } else {
            $("#searchtr1").show();
            $("#searchtr2").show();
            $("#searchtr3").show();
            $("#searchimg").attr("src", "../../../img/minus3.png");
            flagHideOrShow = true;
        }
    }

    function searchHideOrShow1() {
        if (flagHideOrShow) {
            $("#searchtr4").hide();
            $("#searchtr5").hide();
            $("#searchimg1").attr("src", "../../../img/plus3.png");
            flagHideOrShow = false;
        } else {
            $("#searchtr4").show();
            $("#searchtr5").show();
            $("#searchimg1").attr("src", "../../../img/minus3.png");
            flagHideOrShow = true;
        }
    }

    function searchHideOrShow2() {
        if (flagHideOrShow) {
            $("#searchtr6").hide();
            $("#searchtr7").hide();
            $("#searchimg2").attr("src", "../../../img/plus3.png");
            flagHideOrShow = false;
        } else {
            $("#searchtr6").show();
            $("#searchtr7").show();
            $("#searchimg2").attr("src", "../../../img/minus3.png");
            flagHideOrShow = true;
        }
    }

    function searchHideOrShow3() {
        if (flagHideOrShow) {
            $("#searchtr8").hide();
            $("#searchtr9").hide();
            $("#searchtr10").hide();
            $("#searchimg3").attr("src", "../../../img/plus3.png");
            flagHideOrShow = false;
        } else {
            $("#searchtr8").show();
            $("#searchtr9").show();
            $("#searchtr10").show();
            $("#searchimg3").attr("src", "../../../img/minus3.png");
            flagHideOrShow = true;
        }
    }

    function searchHideOrShow4() {
        if (flagHideOrShow) {
            $("#searchtr11").hide();
            $("#searchtr12").hide();
            $("#searchimg4").attr("src", "../../../img/plus3.png");
            flagHideOrShow = false;
        } else {
            $("#searchtr11").show();
            $("#searchtr12").show();
            $("#searchimg4").attr("src", "../../../img/minus3.png");
            flagHideOrShow = true;
        }
    }



</script>
</body>
</html>
