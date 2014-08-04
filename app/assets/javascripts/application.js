// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery
//= require jquery_ujs
//= require jquery-ui/sortable
//= require best_in_place
//= require turbolinks
//= require_tree .

$(document).on('ready page:load', function(){
	$(document).on('ajax:success', '.nav', function(e){
		// in the entire document look for an ajax success event specifically on a .nav class.
		// when you do, call this function:
		$(e.currentTarget).closest(".card").fadeOut();
		// argument e(for event). on the event, take the current target, (aka the nav). find the closest element (card class) and fade it out
	});
	$(document).on('mouseover', '.x', function(){
		$(this).closest("p").slideUp();
	});

	$("#board").sortable({
		appendTo: $( "#board"),
		update: function() {
			// whenever this is updating
			$.post($(this).data('update-url'),
				// .post is a jquery method. "post this data url"
				$(this).sortable('serialize'));
			// 

		}
	});
});