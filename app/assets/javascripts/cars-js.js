 
 
 $(document).ready(function( ) {
   $("#thumbs").css("width",1200+"px");
   $( "#tabs" ).tabs();
   $( "#accordion" ).accordion({  collapsible: true});
})
 
$(window).scroll(function() {
  if( $(this).scrollTop() > 130 ) {
    $(".main-nav").addClass("main-nav-scrolled");
  } else {
    $(".main-nav").removeClass("main-nav-scrolled");
	
  }
});
  