

$(document).ready(function() {
	$('#picturemason').imagesLoaded(function(){
		$('.piccontainer').show();
	  $('#picturemason').masonry({
	   columnWidth: 320,
	   itemSelector: '.piccontainer'
	  });
	});

});