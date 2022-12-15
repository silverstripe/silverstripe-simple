jQuery.noConflict();

(function($) {
	$(document).ready(function() {
		// L is a magnifying glass icon in the font
		$('#SearchForm_SearchForm_action_results').val('L');

		if (!$.browser.msie || ($.browser.msie && (parseInt($.browser.version, 10) > 8))) {
			var searchBarButton = $("button.search-dropdown-icon");
			var searchBar = $('div.search-bar');
			var menuButton = $("button.nav-open-button");
			var menu = $('.header .primary ul');
			var mobile = false;
			var changed = false;

			$('body').append('<div id="media-query-trigger"></div>');

			function menuWidthCheck() {
				var header_w = $('header .inner').width();
				var elements_w = menu.width() + $('.brand').width();

				if ((header_w < elements_w) || ($(window).width() <= 768)) {
					$('body').addClass('tablet-nav');
				}
				else {
					$('body').removeClass('tablet-nav');
				}

				mobile_old = mobile;
				if ($('#media-query-trigger').css('visibility') == 'hidden') {
					mobile = false;
				}
				else {
					mobile = true;
				}

				if (mobile_old != mobile) {
					changed = true;
				}
				else {
					changed = false;
				}
			}

			menuWidthCheck();

			$(window).resize(function() {
				menuWidthCheck();

				if (!mobile) {
					menu.show();
					searchBar.show();
				}
				else {
					if (changed) {
						menu.hide();
						searchBar.hide();
					}
				}
			});

			/* toggle navigation and search in mobile view */
			searchBarButton.click(function() {
				menu.slideUp();
				searchBar.slideToggle(200);
			});

			menuButton.click(function() {
				searchBar.slideUp();
				menu.slideToggle(200);
			});
		}
	});

// ---------------------------------------------------------
// Use of jQuery.browser is frowned upon.
// More details: http://api.jquery.com/jQuery.browser
// jQuery.uaMatch maintained for back-compat

    jQuery.uaMatch = function( ua ) {
        ua = ua.toLowerCase();

        var match = /(chrome)[ \/]([\w.]+)/.exec( ua ) ||
            /(webkit)[ \/]([\w.]+)/.exec( ua ) ||
            /(opera)(?:.*version|)[ \/]([\w.]+)/.exec( ua ) ||
            /(msie) ([\w.]+)/.exec( ua ) ||
            ua.indexOf("compatible") < 0 && /(mozilla)(?:.*? rv:([\w.]+)|)/.exec( ua ) ||
            [];

        return {
            browser: match[ 1 ] || "",
            version: match[ 2 ] || "0"
        };
    };

    matched = jQuery.uaMatch( navigator.userAgent );
    browser = {};

    if ( matched.browser ) {
        browser[ matched.browser ] = true;
        browser.version = matched.version;
    }

    // Chrome is Webkit, but Webkit is also Safari.
    if ( browser.chrome ) {
        browser.webkit = true;
    } else if ( browser.webkit ) {
        browser.safari = true;
    }

    jQuery.browser = browser;

    jQuery.sub = function() {
        function jQuerySub( selector, context ) {
            return new jQuerySub.fn.init( selector, context );
        }
        jQuery.extend( true, jQuerySub, this );
        jQuerySub.superclass = this;
        jQuerySub.fn = jQuerySub.prototype = this();
        jQuerySub.fn.constructor = jQuerySub;
        jQuerySub.sub = this.sub;
        jQuerySub.fn.init = function init( selector, context ) {
            if ( context && context instanceof jQuery && !(context instanceof jQuerySub) ) {
                context = jQuerySub( context );
            }

            return jQuery.fn.init.call( this, selector, context, rootjQuerySub );
        };
        jQuerySub.fn.init.prototype = jQuerySub.fn;
        var rootjQuerySub = jQuerySub(document);
        return jQuerySub;
    };
// ---------------------------------------------------------

}(jQuery));
