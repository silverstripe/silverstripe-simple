jQuery.noConflict();

(function($) {    
    $(document).ready(function() {
        
 		/* turns on specific styling when main nav items are less than the width of the header otherwise it defaults to mediaquery multiline styling */
 		function toggleNavigationClassByWidth(){
            var primaryNavigation = $('.primary').first();
            var mainNavigation = $(primaryNavigation).find('ul').first();

            if(primaryNavigation.outerWidth() > mainNavigation.outerWidth()) { 
               mainNavigation.addClass("standard-nav"); //if the nav ul fits within its container the standard styling is applied
            }
            else {
               mainNavigation.removeClass("standard-nav"); 
            }
        }
        
        var resizeTimer; //constantly checks for the size of the browser window so correct style is applied.
        $(window).resize(function(){
            clearTimeout(resizeTimer);
            resizeTimer = setTimeout(toggleNavigationClassByWidth, 100);
        }).load(function(){
            clearTimeout(resizeTimer);
            resizeTimer = setTimeout(toggleNavigationClassByWidth, 100);
        });

 		/* show/hide search form when window width less than 700px */
 		$('span.search-dropdown-icon').on('click',function() {
 			if ($(window).width() < 700) { // checks for width of window - if it is less than 700px
	 			if ($('div.search-bar').is(":hidden")){ //checks if ul#nav is hidden
					$('div.search-bar').slideDown('fast'); // slides the Search bar down
					$('div.search-bar form').fadeIn(500); // Fades the Search form in 
					return false;
				} else {
					$('div.search-bar').slideUp('fast'); // slides the Search bar up
					$('div.search-bar form').hide(); // Fades the Search form out 
					return false;
				}
			}
		});

 		/* show/hide main nav menu when window width less than 700px */
		$('span.nav-open-button').on('click',function() {
 			if ($(window).width() < 700) { // checks for width of window - if it is less than 700px
 				if ($('ul#nav').is(":hidden")){ //checks if ul#nav is hidden
					$('ul#nav').slideDown('fast'); // slides the nav menu down 
					$('header span.menu-bubble-arrow').show(); // shows the nav menu arrow 
					return false;
				} else {
					$('ul#nav').slideUp('fast'); // slides the nav menu up 
					$('header span.menu-bubble-arrow').removeAttr("style"); // hides the nav menu arrow 
					return false;
				}
			}
		});
		/* clears any inline styles when window is resized above 700px */
		$(window).resize(function () {
			if ($(this).width() >= 700) {
				$('div.search-bar').removeAttr("style");
				$('ul#nav').removeAttr("style");
				$('div.search-bar form').removeAttr("style");
				$('span.search-bubble-arrow').removeAttr("style");
			}
		});
    });
}(jQuery));
