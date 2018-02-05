<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>科研项目申报</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link href="../../../css/demo.css" rel="stylesheet" type="text/css" />
    <script src="../../../scripts/boot.js" type="text/javascript"></script>
    <script type=""></script>

    <style type="text/css">
        body{
            margin:0;padding:0;border:0;width:100%;height:100%;overflow:hidden;
        }
        .header{
            background:url(images/header.gif) repeat-x 0 -1px;
        }


    </style>
</head>
<body >

<div id="layout1" class="mini-layout" style="width:100%;height:100%;">
    <div class="header" region="north" height="70" showSplit="false" showHeader="false">

            <img src="/page/images/top.png" alt=""/></h1>
    </div>
    <div title="south" region="south" showSplit="false" showHeader="false" height="30" >
        <div style="line-height:28px;text-align:center;cursor:default"></div>
    </div>
    <div showHeader="false" region="west" width="180" maxWidth="250" minWidth="100" >
        <!--OutlookMenu-->
        <div id="leftTree" class="mini-outlookmenu" url="/page/data/outlookmenu.txt" onitemselect="onItemSelect"
             idField="id" parentField="pid" textField="text" borderStyle="border:0">
        </div>
    </div>
    <div title="center" region="center" bodyStyle="overflow:hidden;">
        <%--Tabs--%>
        <div id="mainTabs" class="mini-tabs bg-toolbar" activeIndex="0" style="width: 100%;height: 100%"
            bodyStyle="border:0;background:white;"
        >
            <%--<div title="首页" url="../page/html5-3d-cube-image/index.html">--%>

            <%--</div>--%>
            <div title="科研合同项目申报" url="/declare">
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    mini.parse();

    function showTab(node) {
        var tabs = mini.get("mainTabs");

        var id = "tab$" + node.id;
        var tab = tabs.getTab(id);
        if(!tab){
            tab = {};
            tab.name = id;
            tab.title = node.text;
            tab.showCloseButton = true;
            tab.url = node.url;

            tabs.addTab(tab);
        }
        tabs.activeTab(tab);
    }

    function onItemSelect(e){
        var item = e.item;
        showTab(item);
    }

</script>

</body>
</html>