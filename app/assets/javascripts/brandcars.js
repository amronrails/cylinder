$(document).ready(function( ) {
    $(".tfasel").hide();
    $(".eh").hide();
    var s=$(".carbrands").offset();
//  alert(s.left);

    var s=$(".carbrands").width();
    $(".tfasel").css("width",s);
});

$(".arbyat").click(function(){
    $(".tfasel").not($(this).find(".tfasel")).hide(500)
   $(".eh").not($(this).find(".eh")).hide(500)

    $(this).find(".tfasel").slideToggle(500);
    $(this).find(".eh").slideToggle(500);

});

$(window).scroll(function() {
    if( $(this).scrollTop() > 130 ) {
        $(".main-nav").addClass("main-nav-scrolled");
        $(".main").addClass("mainscrolled");
    } else {
        $(".main-nav").removeClass("main-nav-scrolled");
        $(".main").removeClass("mainscrolled");
    }
});