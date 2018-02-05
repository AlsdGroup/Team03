<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Tabs</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" /><link href="../css/demo.css" rel="stylesheet" type="text/css" />


    <script src="../scripts/boot.js" type="text/javascript"></script>


</head>
<body>

<input type="button" value="loadTabs" onclick="loadTabs()"/>
<input type="button" value="addTab" onclick="addTab()"/>
<input type="button" value="removeTab" onclick="removeTab()"/>
<br />
<div id="tabs1" class="mini-tabs" activeIndex="0" style="width:600px;height:350px;"
     url="tabs.txt" ontabload="onTabLoad" onactivechanged="onActiveChanged"
>
</div>

<script type="text/javascript">
    mini.parse();

    function loadTabs() {
        var tabs = mini.get("tabs1");
        tabs.load("tabs.txt");
    }

    var index = 1;
    function addTab() {
        var tabs = mini.get("tabs1");

        //add tab
        var i = index++;
        var tab = { title: "tab" + i, url: 'pages/projectInfor' + i + '.html', showCloseButton: true };
        tab = tabs.addTab(tab);

        //active tab
        tabs.activeTab(tab);

    }
    function removeTab() {
        var tabs = mini.get("tabs1");
        var tab = tabs.getActiveTab();
        if (tab) {
            tabs.removeTab(tab);
        }
    }


    /////////////////////////////
    function onTabLoad(e) {
        //alert(e.tab.url);
    }
    function onActiveChanged(e) {
        var tabs = e.sender;
        var tab = e.tab;
        if (!tab) return;

        if (tabs.getTabIFrameEl(tab)) return;  //已经存在iframe，则返回
        var url = tab.url + "?id=" + 1; //加工url，传递更多参数
        tabs.loadTab(url, tab);
    }

</script>

</body>
</html>