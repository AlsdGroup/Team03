<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>主页</title>
    <link href="../../css/demo.css" rel="stylesheet" type="text/css"/>
    <script src="../../scripts/boot.js" type="text/javascript"></script>
    <script src="../../scripts/jquery.min.js" type="text/javascript"></script>
    <style type="text/css">
        body {
            font-family: "Arial Black";
            margin: 0;
            padding: 0;
            border: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        .mini-tabs {
            /*overflow: auto;*/
            background-color: #e5edef;
            border: 0px;
        }

        .imgtop{
            width: 250px;
            height: auto;
            margin-left: 20px;
            margin-bottom: 10px;
        }

        .top1 {
            background: url(../../img/logo1.bmp);
            background-size: cover;
            background-repeat: no-repeat;
        }

        .span1 {
            /*margin-left: 20px;*/
            /*color: #0069ab;*/
            color: white;
            font-size: 30px;
            font-weight: bold;
            font-family: "Arial Black";
            /*text-shadow: 1px 1px 1px white, -1px -1px 1px white, 1px -1px 1px white, -1px 1px 1px white;*/
        }

    </style>

</head>
<body style="background-color: #0069ab">

<div class="mini-splitter" style="width:100%;height:100%;" borderStyle="border:0;" vertical="true" handlerSize="6">
    <div size="70px" showCollapseButton="true" borderStyle="border:0;">
        <table class="top1" width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="18%" >
                    <table>
                        <tr>
                            <td>
                                <span><img src="../../img/log01.gif" class="imgtop"/></span>
                            </td>
                        </tr>
                    </table>

                </td>
                <td width="42%">
                    <span class="span1">阳江业务流程管理平台</span>
                </td>
                <td width="*">
                    <table>
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <img src="../../img/btn1.png" ondragstart="return false">
                                <span>当前用户: ${login.staffUserName}[${login.staffId}]</span>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <img src="../../img/btn2.png" ondragstart="return false">
                                <span><a href="javascript:" ondragstart="return false">系统帮助</a></span>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <img src="../../img/btn3.png" ondragstart="return false">
                                <a href="/logout" ondragstart="return false">安全退出</a></span>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <img src="../../img/btn4.png" ondragstart="return false">
                                <span><a href="javascript:" ondragstart="return false">主题切换</a></span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>

                </td>
            </tr>
        </table>
    </div>
    <div showCollapseButton="false" bodyStyle="border:0;background:white;">
        <div class="mini-splitter" style="width:100%;height:100%;" borderStyle="border:0;">
            <div size="180px" showCollapseButton="true" borderStyle="border:0;" style="background-color: #e5edef">
                <div class="mini-outlookmenu" url="../../data/left_menu.txt" onitemselect="onItemSelect"
                     idField="id" parentField="pid" textField="text" activeIndex="-1">
                </div>
            </div>
            <div showCollapseButton="false" bodyStyle="border:0;background:white;">
                <iframe id="mainframe" frameborder="0" name="main" style="width:100%;height:100%" border="0"></iframe>
                <div id="mainTabs" class="mini-tabs" activeIndex="0" style="width:100%;height:100%;"
                     iconStyle="background: red;"
                     bodyStyle="border:0;background:#e5edef;">
                </div>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    mini.parse();

    var tabs = mini.get("mainTabs");

    var iframe = document.getElementById("mainframe");
    iframe.src = "/firstPage";
    $("#mainTabs").hide();

    function showTab(node) {
        var id = "tab$" + node.id;
        var tab = tabs.getTab(id);
        if (node.id == "100101") {
            var tab8 = tabs.getTab("tab$10010101");
            if (!tab8) {
                tab8 = {};
                tab8.name = "tab$10010101";
                tab8.title = "已办任务";
                tab8.showCloseButton = true;
                tab8.url = "/taskFinished";
            }
            if (!tab) {
                tab = {};
                tab.name = id;
                tab.title = "待办任务";
                tab.showCloseButton = true;
                tab.url = "/taskInWait";
            }
            //tabs.removeAll();
            tabs.addTab(tab);
            tabs.addTab(tab8);
            tabs.activeTab(tab);
        } else {
            if (!tab) {
                tab = {};
                tab.name = id;
                tab.title = node.text;
                tab.showCloseButton = true;
                tab.url = node.url;
                tabs.addTab(tab);
            }
            tabs.activeTab(tab);
        }
    }

    function onItemSelect(e) {
        var item = e.item;
        $("#mainframe").hide();
        $("#mainTabs").show();
        showTab(item);
    }

</script>

</body>
</html>
