// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

//called at end of HTML body to run onload scripts
function load_page_scripts() {
	place_nav_arrow();
	secondary_nav();
}

//finds position of currently active nav item and positions a nav arrow accordingly
function place_nav_arrow() {
	//find current nav item
	$current = $$('div#nav div#primary a.current')[0];
	if ($current != undefined) {
		//get position
		var xPos = $current.positionedOffset()[0];
		//add half of width of current nav item, subtracting half the width of the arrow
		var offset = ($current.getWidth() / 2) - ($('arrow').getWidth() / 2);
		//set position of nav arrow
		$('arrow').setStyle({ left: xPos + offset + 'px', visibility: 'visible' });
	}
	else {
		$('arrow').hide();
	}
}

//finds position of currently active global nav item and positions secondary nav accordingly
function secondary_nav() {
	//find current nav item
	$current = $$('div#nav div#primary a.current')[0];
	if ($current != undefined) {
		//get position
		var xPos = parseInt($current.positionedOffset()[0]);
		//gather secondary links (can't get $('secondary').getWidth() since it is relatively positioned)
		var secondary_links = $('secondary').descendants();
		var secondary_width = 0;
		// iterate over secondary_links and collect widths
		for (i=0; i < secondary_links.length; i++) {
			secondary_width = parseInt(secondary_width + $(secondary_links[i]).getWidth());
		}
		//add half of width of current nav item, subtracting the width of the secondary nav items divided by the number of items (offset by 1 for the script element in secondary_nav div)
		var offset = ($current.getWidth() / 2) - (secondary_width / (secondary_links.length - 1));
		//modify offset for position of layout
		if ((xPos + offset) < 0) { offset = 0; }
		//(parseInt(xPos) + parseInt(secondary_width)) > parseInt($('content').getWidth())
		if ((parseInt(xPos) + parseInt(secondary_width)) > $('content').getWidth()) { 
			//even number of links
			if ((secondary_links.length - 1) % 2 == 0) { offset = ($current.getWidth() / 2) + -(secondary_width) + (secondary_width / 2); }
			//odd number of links
			else { offset = ($current.getWidth() / 2) + -(secondary_width) + (secondary_width / (secondary_links.length - 1)); }			
		}
		//set position of secondary nav
		$('secondary').setStyle({ left: xPos + offset + 'px', width: secondary_width + 'px' });
	}
}

function set_mode() {
	alert("Setting mode to " + $('mode_id').options[$('mode_id').selectedIndex].text);
}

function HideDIV(d) { Effect.Fade(d, { duration: 0.3 });  }
function DisplayDIV(d) { Effect.Appear(d, { duration: 0.3 });  }

function switch_sections(active_id, nav_id, section_class) {
	// make other ids inactive
	$(nav_id).descendants().each(function(e) {
		$(e).removeClassName('active');
	});
	// hide other sections
	$$('.' + section_class).each(function(e) {
		//Effect.Fade(e, { duration: 0.3 });
		$(e).hide();
	});
	// make current id active
	$(active_id + "_link").addClassName('active');
	// show current section
	$(active_id).setStyle({ visibility: 'visible' });	
	//Effect.Appear.delay(0.3, active_id, { duration: 0.3 });
	$(active_id).show();
}

function demoMessage() {
	alert("We're sorry.  This feature is disabled in the demo.");
}
