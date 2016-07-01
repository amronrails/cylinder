// JavaScript Document

$(document).ready(function(e) {

    $("#allarea img").eq(1).clone().appendTo($("#image"));
});
var yes ;
var len=$("#allarea").width();
$("#next").mouseover(function(){

    yes= setInterval(function (){
        var leftposition = parseInt($("#allarea").css("left"));
        leftposition = leftposition-1;
        $("#allarea").css("left",leftposition+"px");
        if((len+leftposition)<( $("#area").width()))
            clearInterval(yes);
    });
}).mouseleave(function(){
    clearInterval(yes);

});

$("#back").mouseover(function(){
    yes= setInterval(function (){
        var leftposition = parseInt($("#allarea").css("left"));
        leftposition = leftposition+1;
        $("#allarea").css("left",leftposition+"px");
        if(leftposition>0)
            clearInterval(yes);
    });
}).mouseleave(function(){
    clearInterval(yes);

});;

$("#allarea img").click(function( ) {

    $("#image").empty();

    var item1 = $(this).index();
    var item2 = $("#allarea img").eq(item1);

    item2.clone().appendTo($("#image"));

});
 