$(document).ready(function () {
    // $("#descrip").css("display", "").fadeIn(300)
    // $("btn").css("display", "").fadeIn(300)


    $("#btn1").click(function () {

        // jQuery("#page1").fadeOut(300);
        $('#page1').hide().fadeOut(300);
        // jQuery("#page2").fadeIn(300);

        // $("#page2").fadeIn("fast");
        // window.location.href = "./index.html"
    });
    $("#btn2").click(function () {

        jQuery("#page1").fadeOut(300);

        // $("#page2").fadeIn("fast");
        // window.location.href = "./table.html"
    });

});