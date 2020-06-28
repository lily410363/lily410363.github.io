var partName
var city = ["宜蘭縣", "花蓮縣", "南投縣", "屏東縣", "苗栗縣", "桃園市", "高雄市", "基隆市", "雲林縣", "新北市", "新竹市", "新竹縣", "嘉義市", "嘉義縣", "彰化縣", "臺中市", "臺北市", "臺東縣", "臺南市"]

$(() => {

    // 點擊圖片
    $("path").on("click", (e) => {
        partName = $(e.target).parent().attr("partname") //點到g的時候，找path裡partname的資料
        console.log(partName);
        showCity(partName);
        $("#subtitle").hide()
        $("#hidehr").hide()


    })
    var showCity = function (partName2) {
        var currentCity = rank5[partName2];
        var title = partName;
        var cityHtml = '<h4>TOP5</h4><hr>';

        for (let i in currentCity) {
            if (i == 0) {
                title += "<h2 class ='mean'>" + currentCity[i][0] + "  " + currentCity[i][1] + "</h2>"
                continue
            }

            cityHtml += "<h4 class ='content_text'>" + currentCity[i][0] + "  " + currentCity[i][1] + "</h4><br/>"
        }


        $("#bodyname").html(title)
        $("#content").empty()
        $('#content').html(cityHtml);
        $("g.current").removeClass("current")
        $("g[partname=" + partName2 + "]").addClass("current")
    }


})