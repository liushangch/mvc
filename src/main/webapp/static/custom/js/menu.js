function openMenu(id, title, url, e) {
    var menu_num = "menu_" + id;
    var $menuTab = $("#menuTab", top.document);
    var $menuContent = $("#menuContent", top.document);
    // 移除当前TAB页选中状态
    $("#menuTab li[class=active]", top.document).removeClass("active");
    $("#menuContent div[class*=active]", top.document).removeClass("active").removeClass("in");
    // 查询是否还有需要打开的TAB页
    var $isa = $("#menuTab li a[href='#" + menu_num + "']");
    if ($isa.is("a")) {
        $isa.trigger("click");
        $($isa.attr("href") + " iframe:eq(0)", top.document).attr("src", url);
    } else {
        // 新增TAB页标题
        var $li = $("<li></li>").addClass("active");
        var $a = $("<a></a>").attr("href", "#" + menu_num).attr("data-toggle", "tab").attr("aria-expanded", "true").text(title);
        var $closeDIV = $("<div></div>").addClass("hidden-sm hidden-xs action-buttons pull-right");
        var $closeA = $("<a></a>").addClass("red").attr("href", "#");
        $closeA.on("click", function () {
            var activeId = $("#menuTab li[class=active]", top.document).find("a").attr("href");
            var $delLI = $(this).parent().parent().parent();
            var delId = $delLI.children("a").attr("href");
            // 如果删除的是当前激活的TAB，需要向前移动一次
            if (activeId === delId) {
                $delLI.prev().addClass("active");
                $menuContent.find(delId).prev().addClass("active in");
            }
            $delLI.remove();
            $menuContent.find(delId).remove();
        });
        var $closeI = $("<i></i>").addClass("ace-icon fa fa-times");
        $menuTab.append($li.append($a.append($closeDIV.append($closeA.append($closeI)))));
        // 新增TAB页内容
        var $div = $("<div></div>").attr("id", menu_num).addClass("tab-pane fade active in");
        var $iframe = $("<iframe></iframe>").addClass("main-iframe").attr("src", url);
        $menuContent.append($div.append($iframe));
    }
    if (e != null) {
        $("#sidebar", top.document).find("li").removeClass("active");
        $(e).parents("li").addClass("active");
    }
    $(".main-iframe", top.document).css("height", $(top.window).height() - 166);
}

function closePage() {
    var $li = top.$("#olTitle").children().eq(-2);
    $li.find("a").trigger("click");
}

function closeTab(tabId) {
    if (!tabId) {
        tabId = parent.$("div[class*='active']").attr("id");
    }
    top.$("a[href='#" + tabId + "']").parent().prev().addClass("active");
    top.$("#" + tabId).prev().addClass("active in");
    top.$("a[href='#" + tabId + "']").parent().remove();
    top.$("#" + tabId).remove();
}

function goBack() {
    window.history.back();
}