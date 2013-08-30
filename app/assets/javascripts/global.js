$(function(){
  $('div.flash').click(function(){
    $(this).find('div.flash-inner').fadeOut(200);
    $(this).delay(200).slideUp(150);
  });
});