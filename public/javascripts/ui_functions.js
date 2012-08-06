/* JAVASCRIPT UI FUNCTIONS - North House GUI - Johnny Rodgers */

//MODES
// accepts a mode id and makes it active
function setMode(mode_id, set_id, panel) {
	setActiveMode(mode_id, set_id);
	//send commands
	triggerModeCommands(eval("mode_" + mode_id + "_settings"));
	//update controls (locally)
	updateControls(eval("mode_" + mode_id + "_settings"), true, false, panel);
	//push updates to other panels
	push();
}

function setActiveMode(mode_id, set_id, pulsate) {
	//set control value
	$(set_id).select(".button").each(function(button) {
		$(button).removeClassName("button_active");
	});
	$(set_id + "_" + mode_id).addClassName("button_active");
	//set pulsate default value (true)
	var pulsate = (typeof pulsate == 'undefined') ? true : pulsate;
	//pulsate
	if (pulsate) { $(set_id + "_" + mode_id).pulsate({ pulses: 12, duration: 15, from: 0.4 }); }
}

//SLIDERS
function setSliderPosition(slider_id, value) {
	//calculate element height by taking the slider height and subtracting padding and handle height
	var elementHeight = parseInt($(slider_id).getStyle('height')) - parseInt($(slider_id + '_handle').getStyle('height'));
	//calculate amount to offset from top by taking the element height and dividing it by the value as a percentage
	var topValue = elementHeight - (elementHeight / (100 / value));
	//set offset
	$(slider_id + '_handle').setStyle({ top: topValue + 'px' });
	//get subsystem
	subsystem = $(slider_id + '_handle').getAttribute("subsystem");
	//correct for ON/OFF and UP/DOWN
	if (subsystem == "lights") {
		if (value == 100) { value = "ON"; }
		else if (value == 0) { value = "OFF"; }
		else { value = value + '%'; }
	}
	else if (subsystem == "blinds" || subsystem == "shades") {
		if (value == 100) { value = "UP"; }
		else if (value == 0) { value = "DOWN"; }
		else { value = value + '%'; }
	}
	//update value
	$(slider_id + '_value').update(value);
}

function showMasterStatus(slider_id) {
	$(slider_id + "_master_status").show();
}

/*
function getSliderPosition(slider_id) {
	//is this function necessary? nothing's calling it
	value = parseInt($(slider_id + '_value').innerHTML);
	//get subsystem
	subsystem = $(slider_id + '_handle').getAttribute("subsystem");	
	//correct for ON/OFF and UP/DOWN
	if (subsystem == "lights") {
		if (value == 100) { value = "ON"; }
		else if (value == 0) { value = "OFF"; }
	}
	else if (subsystem == "blinds" || subsystem == "shades") {
		if (value == 100) { value = "UP"; }
		else if (value == 0) { value = "DOWN"; }
	}
	return value;
}
*/

//TOGGLES
function setTogglePosition(toggle_id, state) {
	//calculate element height by taking the toggle height and subtracting padding and handle height
	var elementHeight = parseInt($(toggle_id).getStyle('height')) - (parseInt($(toggle_id + '_handle').getStyle('height') / 2));
	//calculate amount to offset from top
	var topValue = 0; // ON
	if (state == "OFF") { var topValue = 108; }
	//set offset	
	$(toggle_id + '_handle').setStyle({ top: topValue + 'px' });
	//update value
	$(toggle_id + '_value').update(state);
}

/*
function getTogglePosition(slider_id) {
	return parseInt($(slider_id + '_value').innerHTML);
}
*/

//TEMPERATURE & HUMIDITY
function setTemperature(control_id, newTemp, pulsate) {
	//set status according to direction
//	if (newTemp > window.controls.hvac.temperature) { $(control_id + '_status').update('now heating'); }
//	else if (newTemp < window.controls.hvac.temperature) { $(control_id + '_status').update('now cooling'); }
	if (newTemp.toString().indexOf(".") == -1) {
		//add decimal place to temp if it is an integer
		newTemp = newTemp.toString() + ".0";
	}
	//update label
	$(control_id + "_value").update(newTemp);
	//set pulsate default value (true)
	var pulsate = (typeof pulsate == 'undefined') ? true : pulsate;
	//pulsate
//	if (pulsate) { $(control_id + '_value_and_units').pulsate({ pulses: 4, duration: 5, from: 0.4 }); }
}

function setHumidity(control_id, newVal, pulsate) {
	//set status according to direction
//	if (newVal > window.controls.hvac.humidity) { $(control_id + '_status').update('now increasing'); }
//	else if (newVal < window.controls.hvac.humidity) { $(control_id + '_status').update('now decreasing'); }
	if (newVal.toString().indexOf(".") == -1) {
		//add decimal place to temp if it is an integer
		newVal = newVal.toString() + ".0";
	}
	//update label
	$(control_id + "_value").update(newVal);
	//set pulsate default value (true)
	var pulsate = (typeof pulsate == 'undefined') ? true : pulsate;
	//pulsate
//	if (pulsate) { $(control_id + '_value_and_units').pulsate({ pulses: 4, duration: 5, from: 0.4 }); }
}

//BUTTONS
function setVentilation(control_id, state) {
	//set button state
	if (state == "ON") { 
		$(control_id + '_on').addClassName('button_active'); 
		$(control_id + '_off').removeClassName('button_active'); 
	}
	else { 
		$(control_id + '_off').addClassName('button_active'); 
		$(control_id + '_on').removeClassName('button_active'); 
	}
}

function setBedPosition(device_id, control_id) {
	sendCommand(device_id, "CLOSE");
	// disable button
	$(control_id + "_button").hide();
	$(control_id + "_disabled_button").show();
	// set delay in ms
	delay = 500;
	// after delay, send open command and re-enable input	
	setTimeout("sendCommand(" + device_id + ", 'OPEN'); $('" + control_id + "_disabled_button').hide(); $('" + control_id + "_button').show();", delay);
}

//TILT BUTTONS
function setTilt(control_id, section, degrees) {
	//set display angle on section buttons
	$(control_id + "_" + section).update(section.toUpperCase() + " TILT " + getDisplayAngle(degrees));	
	//remove active class from current button
	$(control_id + "_degree_buttons_" + section).descendants().each(function(e) {
		e.removeClassName('active');
	});
	//set active class
	$(control_id + "_" + section + "_" + degrees).addClassName('active');	
}

//SHADE SECTIONS 
function switchSections(control_id, section) {
	if ($(control_id + '_upper').hasClassName('active')) {
		if (section == "lower") {
			$(control_id + '_upper').removeClassName('active');	
			$(control_id + '_lower').addClassName('active');
			Effect.BlindUp(control_id + '_degree_buttons_upper', { duration: 0.3 });
			Effect.BlindDown(control_id + '_degree_buttons_lower', { duration: 0.3 });
		}
	}
	else {
		if (section == "upper") {
			$(control_id + '_lower').removeClassName('active');	
			$(control_id + '_upper').addClassName('active');
			Effect.BlindUp(control_id + '_degree_buttons_lower', { duration: 0.3 });
			Effect.BlindDown(control_id + '_degree_buttons_upper', { duration: 0.3 });
		}
	}
}

//OPTIMIZATION
function setOptimization(optimize) {
	//update UI
	if (optimize) {
		$('K1_optimization_button').addClassName('active');
		$('optimization_status').update("Optimized");
	}
	else {
		$('K1_optimization_button').removeClassName('active');
		$('optimization_status').update("Non-Optimized");
	}
}

function openDelaySettings(control_id) {
	Effect.BlindUp(control_id + "_buttons", { duration: 0.3 });
	Effect.BlindDown(control_id + "_delay_settings", { duration: 0.3 });
}

function closeDelaySettings(control_id) {
	Effect.BlindUp(control_id + "_delay_settings", { duration: 0.3 });
	Effect.BlindDown(control_id + "_buttons", { duration: 0.3 });
}