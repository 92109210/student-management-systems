function page_info(result) {
    $("#page_info_area").empty();
    $("#page_info_area").append(
        "当前" + result.extend.pageInfo.pageNum + "页,总"
        + result.extend.pageInfo.pages + "页,总"
        + result.extend.pageInfo.total + "条记录");
    totalRecord = result.extend.pageInfo.total;
    currentPage = result.extend.pageInfo.pageNum;
}

function page_nav(result) {
    $("#page_nav_area").empty();
    var ul = $("<ul></ul>").addClass("pagination");

    //首页，上一页
    var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href", "#"));
    var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
    if (result.extend.pageInfo.hasPreviousPage == false) {
        firstPageLi.addClass("disabled");
        prePageLi.addClass("disabled");
    } else {
        firstPageLi.click(function () {
            to_page(1);
        });
        prePageLi.click(function () {
            to_page(result.extend.pageInfo.pageNum - 1);
        });
    }

    //末页，下一页
    var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href", "#"));
    var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
    if (result.extend.pageInfo.hasNextPage == false) {
        lastPageLi.addClass("disabled");
        nextPageLi.addClass("disabled");

    } else {
        lastPageLi.click(function () {
            to_page(result.extend.pageInfo.pages);
        });
        nextPageLi.click(function () {
            to_page(result.extend.pageInfo.pageNum + 1);
        });
    }

    //添加首页和前一页
    ul.append(firstPageLi).append(prePageLi);
    //中间页码
    $.each(result.extend.pageInfo.navigatepageNums, function (index, item) {

        var numLi = $("<li></li>").append($("<a></a>").append(item));
        if (result.extend.pageInfo.pageNum == item) {
            numLi.addClass("active");
        }
        numLi.click(function () {
            to_page(item);
        });
        ul.append(numLi);
    });
    //添加下一页和末页 的提示
    ul.append(nextPageLi).append(lastPageLi);

    //把ul加入到nav
    var navEle = $("<nav></nav>").append(ul);
    navEle.appendTo("#page_nav_area");
}