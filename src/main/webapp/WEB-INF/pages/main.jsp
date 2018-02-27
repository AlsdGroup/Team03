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
            font-family: Verdana;
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

        span, a, input[type="button"] {
            font-family: Verdana;
        }

        a:link {
            color: black
        }

        /* 未访问的链接 */
        a:visited {
            color: black
        }

        /* 已访问的链接 */
        a:hover {
            color: #0069ab
        }

        /* 鼠标移动到链接上 */
        a:active {
            color: black
        }

        /* 选定的链接 */
        .mini-tabs {
            /*overflow: auto;*/
            background-color: #e5edef;
            border: 0px;
        }

        .imgtop {
            width: 250px;
            height: auto;
            margin-left: 20px;
            margin-bottom: 10px;
        }

        .top1 {
            /*background: url(../../img/logo1.bmp);*/
            /*background-size: cover;*/
            /*background-repeat: no-repeat;*/
            background-color: #0069ab;
        }

        .span1 {
            /*margin-left: 20px;*/
            /*color: #0069ab;*/
            color: white;
            font-size: 30px;
            font-weight: bold;
            font-family: Verdana;
            /*text-shadow: 1px 1px 1px white, -1px -1px 1px white, 1px -1px 1px white, -1px 1px 1px white;*/
        }

        .mini-splitter-pane1 {
            border-width: 0px;
            border-color: #ffffff;
            border-style: solid;
            border-right: solid 1px #ffffff;
        }

        .mini-splitter-pane2 {
            border-width: 0px;
            border-color: #ffffff;
            border-style: solid;
            border-left: solid 1px #ffffff;
        }

        .mini-splitter-pane1-vertical {
            border: 0;
            border-bottom: solid 1px #ffffff;
        }

        .mini-splitter-pane2-vertical {
            border: 0;
            border-top: solid 1px #ffffff;
        }

        .mini-splitter-pane1-button, .mini-splitter-pane2-button {
            display: inline-block;
            width: 7px;
            height: 70px;
            background: url(../../img/splitterblueleft.png) no-repeat 100% 100%;
            cursor: pointer;
        }

        .mini-splitter-pane2-button {
            background: url(../../img/splitterblueright.png) no-repeat 100% 100%;
        }

        .mini-splitter-handler-vertical .mini-splitter-pane1-button,
        .mini-splitter-handler-vertical .mini-splitter-pane2-button {
            display: inline-block;
            width: 70px;
            height: 7px;
            zoom: 1;
            float: left;
            background: url(../../img/splitterbluetop.png) no-repeat 0px 0px;
        }

        .mini-splitter-handler-vertical .mini-splitter-pane2-button {
            background: url(../../img/splitterbluedown.png) no-repeat 0px 0px;
        }

        .mini-outlookbar {
            font-size: 9pt;
            font-family: Verdana;
            overflow: hidden;
        }

        .mini-outlookbar-border {
            border: 0px;
            overflow: hidden;
            position: relative;
        }

        .mini-outlookbar-group {
            overflow: hidden;
            height: auto;
            border-bottom: solid 0px #a7abb0;
            position: relative;
        }

        .mini-outlookbar-groupHeader {
            position: relative;
            color: white;
            background: none;
            background-color: #0069ab;
            cursor: pointer;
            overflow: hidden;
            line-height: 13px;
            padding: 5px 25px 5px 4px;
            font-weight: normal;
            font-family: Verdana;
            font-size: 13px;
            *zoom: 1;
            border: 0px;
            border-bottom: 1px solid white;
        }

        .mini-outlookbar-groupBody {
            clear: both;
            border: 0px;
            overflow: auto;
            overflow-x: hidden;
            overflow-y: auto;
            position: relative;
        }

        .mini-outlookmenu {
            background-color: #e5edef;
            /*background-image: -moz-linear-gradient(top, #F0F8FA, #D3EAF8);*/
            font-family: Verdana;
            color: black;
            font-size: 13px;
            font-weight: normal;
        }

        .mini-menuitem-icon {
            left: 16px;
            top: 4px;
        }

        .mini-menuitem-inner {
            padding: 2px 36px 2px 36px;
        }

        .mini-menuitem {
            background-color: #e5edef;
            font-family: Verdana;
            color: #0069ab;
        }

        .mini-menu-border {
            border-color: #aed0ea;
        }

        .mini-menuitem-hover,
        .mini-menu-popup {
            background: #e4f1fb;
            border-color: #74b2e2;
        }

        .mini-menuitem-selected {
            background-image: -moz-linear-gradient(top, #fffbd8, #f3e880);
            border-color: #DED572;
            color: #663300;
        }

        .mini-menuitem-text, .mini-menuitem-text a {
            font-family: Verdana;
            color: black;
        }

        #canvas1 {
            position: absolute;
            border: 0px;
            width: 700px;
            height: 35px;
        }

        #divcanvas1 {
            position: absolute;
            right: 0px;
            top: 0px;
            width: 700px;
            height: 35px;
            /*background-color: green;*/
        }

        #tablecanvas1 {
            position: absolute;
        }

        #tablecanvas1 tr td span {
            margin-left: 15px;
            padding-left: 24px;
        }

        #topimg01 {
            background: url(../../img/blue01.png) left center no-repeat;
        }

        #topimg02 {
            background: url(../../img/blue02.png) left center no-repeat;
        }

        #topimg03 {
            background: url(../../img/blue03.png) left center no-repeat;
        }

        #topimg04 {
            background: url(../../img/blue04.png) left center no-repeat;
        }
    </style>

</head>
<body id="bodycss" style="background-color: #0069ab">

<div class="mini-splitter" style="width:100%;height:100%;" borderStyle="border:0;" vertical="true" handlerSize="7">
    <div size="70px" showCollapseButton="true" borderStyle="border:0;">
        <table class="top1" id="top1css" width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="18%">
                    <table>
                        <tr>
                            <td>
                                <span><img src="../../img/log01.gif" draggable="false" class="imgtop"/></span>
                            </td>
                        </tr>
                    </table>

                </td>
                <td width="42%">
                    <span class="span1">阳江业务流程管理平台</span>
                </td>
                <td width="*">
                    <div id="divcanvas1">
                        <canvas id="canvas1" width="1400" height="70" style="width:700px;height:35px;"></canvas>
                        <table id="tablecanvas1">
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;
                                    <span id="topimg01">当前用户: ${login.staffName}[${login.staffId}]</span>
                                    <span id="topimg02"><a href="javascript:" ondragstart="return false"
                                                           onclick="syshelp()">系统帮助</a></span>
                                    <span id="topimg03"><a href="/logout" ondragstart="return false">安全退出</a></span>
                                    <span id="topimg04"><a href="javascript:" ondragstart="return false"
                                                           onclick="colorchange()">主题切换</a></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                        <table id="tablecanvas2" style="float: right;margin: 0px">
                            <tr>
                                <td>
                                    <img src="../../img/toptoright.png" id="imgcanvas1"
                                         style="width: 15px;height: 15px;margin: 0px"
                                         ondragstart="return false" onclick="divhideorshow()">
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <div showCollapseButton="false" bodyStyle="border:0;background:white;">
        <div class="mini-splitter" style="width:100%;height:100%;" borderStyle="border:0;" handlerSize="7">
            <div id="divleftmenu" size="180px" showCollapseButton="true" borderStyle="border:0;"
                 style="background-color: #e5edef">
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

    // 右上角曲边
    var canvas = document.getElementById("canvas1");
    var context = canvas.getContext("2d");
    //context.scale(2,2);
    // 默认主题01
    var linearGradient1 = context.createLinearGradient(0, 0, 0, 100);
    linearGradient1.addColorStop(0, '#F9FDFF');
    linearGradient1.addColorStop(1, '#DFF2FE');
    context.fillStyle = linearGradient1;
    context.strokeStyle = linearGradient1;

    // 共同方法 改变样式
    function color01() {
        context.lineWidth = 1;
        context.arc(0, 62, 62, Math.PI * 1.5, Math.PI / 6 + Math.PI * 1.5, 0);
        context.arc(62 * 1.7, 8, 62, Math.PI / 6 + Math.PI * 0.5, Math.PI * 0.5, 1);
        context.lineTo(1400, 70);
        context.lineTo(1400, 0);
        context.stroke();
        context.fill();
    }

    color01();

    // 初始body背景颜色
    var parentbccolor = "#e5edef";
    // 主题切换flag
    var colornum = 0;

    // 主题切换
    function colorchange() {
        var colornum88 = colornum % 3;
        context.clearRect(0, 0, 1400, 70);
        if (colornum88 == 0) {
            $(".mini-tabs").css({'background-color': '#ffffff'});
            $(".mini-outlookmenu").css({'background-color': '#ffffff'});
            $(".mini-menuitem").css({'background-color': '#ffffff'});
            $(".mini-outlookbar-groupHeader").css({'background-color': '#000000'});
            $("#bodycss").css({'background-color': 'black'});
            $("#top1css").css({'background-color': 'black'});
            parentbccolor = 'white';
            if (top["firstPage"] != null) {
                top["firstPage"].changebodybccolor();
            }
            if (top["taskInWait"] != null) {
                top["taskInWait"].changebodybccolor();
            }
            if (top["taskFinished"] != null) {
                top["taskFinished"].changebodybccolor();
            }
            context.fillStyle = 'white';
            context.strokeStyle = 'white';
            // 图标变换
            $("#topimg01").css({'background': 'url(../../img/black01.png) left center no-repeat'});
            $("#topimg02").css({'background': 'url(../../img/black02.png) left center no-repeat'});
            $("#topimg03").css({'background': 'url(../../img/black03.png) left center no-repeat'});
            $("#topimg04").css({'background': 'url(../../img/black04.png) left center no-repeat'});
            // splitter箭头变换
            $(".mini-splitter-pane1-button").css({'background': 'url(../../img/splitterblackleft.png) no-repeat 100% 100%'});
            $(".mini-splitter-pane2-button").css({'background': 'url(../../img/splitterblackright.png) no-repeat 100% 100%'});
            $(".mini-splitter-handler-vertical .mini-splitter-pane1-button").css({'background': 'url(../../img/splitterblacktop.png) no-repeat 100% 100%'});
            $(".mini-splitter-handler-vertical .mini-splitter-pane2-button").css({'background': 'url(../../img/splitterblackdown.png) no-repeat 100% 100%'});
        } else if (colornum88 == 1) {
            $(".mini-tabs").css({'background-color': '#f0f3ef'});
            $(".mini-outlookmenu").css({'background-color': '#f0f3ef'});
            $(".mini-menuitem").css({'background-color': '#f0f3ef'});
            $(".mini-outlookbar-groupHeader").css({'background-color': '#e31d1a'});
            $("#bodycss").css({'background-color': '#e31d1a'});
            $("#top1css").css({'background-color': '#e31d1a'});
            parentbccolor = '#f0f3ef';
            if (top["firstPage"] != null) {
                top["firstPage"].changebodybccolor();
            }
            if (top["taskInWait"] != null) {
                top["taskInWait"].changebodybccolor();
            }
            if (top["taskFinished"] != null) {
                top["taskFinished"].changebodybccolor();
            }
            var linearGradient2 = context.createLinearGradient(0, 0, 0, 100);
//            for(var i = 0;i<=20;i++){
//                if(i%2==0){
//                    linearGradient2.addColorStop(i/20, '#f3b92e');
//                }else{
//                    linearGradient2.addColorStop(i/20, '#ffffff');
//                }
//            }
            linearGradient2.addColorStop(0, '#ffffff');
            linearGradient2.addColorStop(1, '#f0f3ef');
            context.fillStyle = linearGradient2;
            context.strokeStyle = linearGradient2;
            // 图标变换
            $("#topimg01").css({'background': 'url(../../img/red01.png) left center no-repeat'});
            $("#topimg02").css({'background': 'url(../../img/red02.png) left center no-repeat'});
            $("#topimg03").css({'background': 'url(../../img/red03.png) left center no-repeat'});
            $("#topimg04").css({'background': 'url(../../img/red04.png) left center no-repeat'});
            // splitter箭头变换
            $(".mini-splitter-pane1-button").css({'background': 'url(../../img/splitterredleft.png) no-repeat 100% 100%'});
            $(".mini-splitter-pane2-button").css({'background': 'url(../../img/splitterredright.png) no-repeat 100% 100%'});
            $(".mini-splitter-handler-vertical .mini-splitter-pane1-button").css({'background': 'url(../../img/splitterredtop.png) no-repeat 100% 100%'});
            $(".mini-splitter-handler-vertical .mini-splitter-pane2-button").css({'background': 'url(../../img/splitterreddown.png) no-repeat 100% 100%'});
        } else if (colornum88 == 2) {
            $(".mini-tabs").css({'background-color': '#e5edef'});
            $(".mini-outlookmenu").css({'background-color': '#e5edef'});
            $(".mini-menuitem").css({'background-color': '#e5edef'});
            $(".mini-outlookbar-groupHeader").css({'background-color': '#0069ab'});
            $("#bodycss").css({'background-color': '#0069ab'});
            $("#top1css").css({'background-color': '#0069ab'});
            parentbccolor = '#e5edef';
            if (top["firstPage"] != null) {
                top["firstPage"].changebodybccolor();
            }
            if (top["taskInWait"] != null) {
                top["taskInWait"].changebodybccolor();
            }
            if (top["taskFinished"] != null) {
                top["taskFinished"].changebodybccolor();
            }
            var linearGradient3 = context.createLinearGradient(0, 0, 0, 100);
            linearGradient3.addColorStop(0, '#F9FDFF');
            linearGradient3.addColorStop(1, '#DFF2FE');
            context.fillStyle = linearGradient3;
            context.strokeStyle = linearGradient3;
            // 图标变换
            $("#topimg01").css({'background': 'url(../../img/blue01.png) left center no-repeat'});
            $("#topimg02").css({'background': 'url(../../img/blue02.png) left center no-repeat'});
            $("#topimg03").css({'background': 'url(../../img/blue03.png) left center no-repeat'});
            $("#topimg04").css({'background': 'url(../../img/blue04.png) left center no-repeat'});
            // splitter箭头变换
            $(".mini-splitter-pane1-button").css({'background': 'url(../../img/splitterblueleft.png) no-repeat 100% 100%'});
            $(".mini-splitter-pane2-button").css({'background': 'url(../../img/splitterblueright.png) no-repeat 100% 100%'});
            $(".mini-splitter-handler-vertical .mini-splitter-pane1-button").css({'background': 'url(../../img/splitterbluetop.png) no-repeat 100% 100%'});
            $(".mini-splitter-handler-vertical .mini-splitter-pane2-button").css({'background': 'url(../../img/splitterbluedown.png) no-repeat 100% 100%'});
        }
        color01();
        colornum++;
    }

    // 显示或隐藏flag
    var divcanvas1num = false;

    // 右上角曲边 显示或隐藏
    function divhideorshow() {
        if (divcanvas1num) {
            divcanvas1num = false;
            $("#tablecanvas1").show();
            $("#canvas1").show();
            $("#imgcanvas1").attr('src', '../../img/toptoright.png');
        } else {
            divcanvas1num = true;
            $("#tablecanvas1").hide();
            $("#canvas1").hide();
            $("#imgcanvas1").attr('src', '../../img/toptoleft.png');
        }
    }

    // 系统帮助暂无
    function syshelp() {
        alert("系统暂不提供帮助");
    }

</script>

</body>
</html>
