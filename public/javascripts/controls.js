// accepts a client_id from each registered client (browser) and assigns that client_id to the global scope
function initializeControls(client_id) {
	console.log("initializeControls called: " + client_id);
	//assign client_id to window scope
	window.client_id = client_id;
	//prevent text selection
	document.onselectstart = function() { return false; } // ie
  document.onmousedown = function() { return false; } // mozilla
	//this should also get the current control state from an active client and set it in the new client, to avoid the new client's settings overriding the actual state	
  //call functions in loadFunctions array on dom:loaded event
  document.observe("dom:loaded", function() {
		//iterate over array and evaluate each function statement (allows arguments to be stored in function calls)
		window.loadFunctions.each(function(func) {
			eval(func);
		});
	});
}

//push() either submits the passed javascript or the window.controls hash (encoded as JSON) to the push server via an AJAX request
function push(javascript) {
	//push the javascript argument to be rendered on other clients
	if (javascript) {
		new Ajax.Request("/controls/push", { 
			method: "get", 
			parameters: { 
				"javascript": javascript,
				"client_id": window.client_id
			}
		});	
	}
	//push the entire controls hash to be updated on other clients
	else {
		new Ajax.Request("/controls/push", { 
			method: "get", 
			parameters: { 
				"controls": Object.toJSON(window.controls),
				"client_id": window.client_id
			}
		});
	}
}

//sendCommand accepts a device_id (int) and a command (string) to send to the sendCommand method of the Controls controller
function sendCommand(device_id, command) {
	new Ajax.Request("/controls/sendCommand", { 
		method: "get", 
		parameters: { 
			"device_id": device_id,
			"command": command,
		}
	});	
}

//pushSlider() accepts a draggable object and pushes its state to other clients
function pushSlider(object) {
	//assign element id to variable and strip "_handle" suffix
	var element = object.element.id.replace("_handle", "");	
	$(element + '_mirror').hide();
	//get subsystem
	subsystem = object.element.getAttribute("subsystem");
	//assign attributes to variables (stored as strings in HTML attributes)
	master = object.element.getAttribute("master");
	slave = object.element.getAttribute("slave");
	device_id = object.element.getAttribute("device_id");
	command = object.element.getAttribute("command");
	facade_id = object.element.getAttribute("facade_id");
	blind_id = object.element.getAttribute("blind_id");	
	group = object.element.getAttribute("group");	
	//send command
	if (subsystem == "lights") {
		//assign new value to variable, accounting for ON/OFF
		new_value = $(element + "_value").innerHTML;
		if (new_value == 'ON') { new_value = 100; }
		else if (new_value == 'OFF') { new_value = 0; }
		else { new_value = parseInt(new_value); }
		//determine delta
/*
		if (window.controls.lights[element] == 0) {
			//changes from 0 are expressed as the target percentage (confirm?)
			delta = new_value - window.controls.lights[element];	
			sendCommand(device_id, 'BRIGHTBY ' + delta);
		}
		else {
			if (new_value > window.controls.lights[element]) {
				delta = ((new_value - window.controls.lights[element]) / window.controls.lights[element]) * 100;
				//round to nearest 5
				delta = Math.round(delta / 5.0) * 5;
				if (new_value == 100) {
					sendCommand(device_id, 'ON'); // test to make sure this doesn't trigger a fade up from 0
				}
				else {
					sendCommand(device_id, 'BRIGHTBY ' + delta);
				}				
			}
			else if (new_value < window.controls.lights[element]) {
				delta = ((window.controls.lights[element] - new_value) / window.controls.lights[element]) * 100;
				//round to nearest 5
				delta = Math.round(delta / 5.0) * 5;
				if (new_value == 0) {
					sendCommand(device_id, 'OFF'); // test to make sure this doesn't trigger a fade down from 100
				}
				else {
					sendCommand(device_id, 'DIMBY ' + delta);
				}				
			}			
		}
*/
		console.log("new value: " + new_value);
		if (new_value == 0) {
			console.log("OFF");
			sendCommand(device_id, 'OFF');
		}
		else {
			console.log("ON " + new_value);
			sendCommand(device_id, 'ON ' + new_value);
		}
		//set control value - has to happen after the above since we need a delta value
    setControlValue('lights', element, new_value);	    
	}
	//set positions and values for masters and slaves
	if (master == "true") {
		$(element + '_master_status').hide();
		eval(element + '_slaves').each(function(e) {
			$(e + '_master_status').hide();
			setSliderPosition(e, new_value, false, false);
			setControlValue(subsystem, e, new_value);	
		});
	}
	if (slave == "true") {
		eval(element + '_masters').each(function(e) {
			if (window.controls[subsystem][e] != window.controls[subsystem][element]) {
				showMasterStatus(e);
			}				
		});			
	}
	//if the slider is a master, push out all controls, otherwise just push the individual control
	if (master == "true") {
		push();
	}
	else {
		//push javascript to clients
		new_value = window.controls[subsystem][element];
		//correct for ON/OFF and UP/DOWN
		if (new_value == "ON" || new_value == "UP") { new_value = 100; }
		else if (new_value == "OFF" || new_value == "DOWN") { new_value = 0; }
		push('setSliderPosition("' + element + '", ' + new_value + '); setControlValue("' + subsystem + '", "' + element + '", ' + new_value + ');');	
	}
}

//pushToggle() accepts a draggable object with snapping and pushes its state to other clients
function pushToggle(object) {
	//assign element id to variable and strip "_handle" suffix
	var element = object.element.id.replace("_handle", "");	
	//assign attributes to variables (stored as strings in HTML attributes)
	device_id = object.element.getAttribute("device_id");
	//assign state to variable
	state = window.controls.lights[element];
	//send commands
	if (state == 'ON') {
		if (element.indexOf("ambient_canvas") != -1) {		    		
			new Ajax.Request('/controls/switchAmbientCanvas', { 
				method: 'get', 
				parameters: { 
					'command': 'ON',
				}
			});
		}
		else {
			sendCommand(device_id, 'ON');	
		}		    	
	}
	else if (state == 'OFF') {
		if (element.indexOf("ambient_canvas") != -1) {
			new Ajax.Request('/controls/switchAmbientCanvas', { 
				method: 'get', 
				parameters: { 
					'command': 'OFF',
				}
			});
		}
		else {
	  	sendCommand(device_id, 'OFF');	
		}		    	
	}
	//push javascript to clients
  push('setTogglePosition("' + element + '", "' + state + '"); setControlValue("lights", "' + element + '", "' + state + '")');
}

function pushTilt(control_id, section, blind_id, degrees) {
	//map degrees to currently calibrated angles
	switch(degrees) {
		case 55:
			transformed_degrees = 140;
			break;
		case 90:
			transformed_degrees = 0;
			break;
		case 125:
			transformed_degrees = 45;
			break;
		case 140:
			transformed_degrees = 70;
			break;
		case 160:
			transformed_degrees = 90;
			break;
	}
	//set control value
	setControlValue('shades', control_id + "_" + section, degrees);
	//assign attributes to variables (stored as strings in HTML attributes)
	master = $(control_id + "_degree_buttons_" + section).getAttribute("master");
	device_id = $(control_id + "_degree_buttons_" + section).getAttribute("device_id");
	//set positions and values for masters and slaves
	if (master == "true") {
		eval(control_id + '_degree_button_slaves').each(function(e) {
			setTilt(e, section, degrees);
			setControlValue("shades", e + "_" + section, degrees);	
		});
	}
/*
	if (slave == "true") {
		eval(element + '_degree_button_masters').each(function(e) {
			if (window.controls[subsystem][e] != window.controls[subsystem][element]) {
				showMasterStatus(e);
			}				
		});			
	}
*/
	//if the control is a master, push out all controls, otherwise just push the individual control
	if (master == "true") {
		push();
	}
	else {
		push('setTilt("' + control_id + '", "' + section + '", ' + degrees + '); setControlValue("shades", "' + control_id + '", ' + degrees + ');');	
	}
	//send command
	if (blind_id == "ALL" && section == "upper") {
		for (var i=1; i <= 29; i=i+2) { sendCommand(device_id, "TILT " + i + " " + transformed_degrees); }			
	}		
	else if (blind_id == "ALL" && section == "lower") {
		for (var i=2; i <= 30; i=i+2) { sendCommand(device_id, "TILT " + i + " " + transformed_degrees); }			
	}		
	else if (blind_id == "W" && section == "upper") {
		for (var i=1; i <= 7; i=i+2) { sendCommand(device_id, "TILT " + i + " " + transformed_degrees); }			
	}
	else if (blind_id == "W" && section == "lower") {
		for (var i=2; i <= 8; i=i+2) { sendCommand(device_id, "TILT " + i + " " + transformed_degrees); }			
	}
	else if (blind_id == "SW" && section == "upper") {
		for (var i=9; i <= 15; i=i+2) { sendCommand(device_id, "TILT " + i + " " + transformed_degrees); }			
	}
	else if (blind_id == "SW" && section == "lower") {
		for (var i=10; i <= 16; i=i+2) { sendCommand(device_id, "TILT " + i + " " + transformed_degrees); }			
	}
	else if (blind_id == "SE" && section == "upper") {
		for (var i=17; i <= 23; i=i+2) { sendCommand(device_id, "TILT " + i + " " + transformed_degrees); }			
	}
	else if (blind_id == "SE" && section == "lower") {
		for (var i=18; i <= 24; i=i+2) { sendCommand(device_id, "TILT " + i + " " + transformed_degrees); }			
	}
	else if (blind_id == "E" && section == "upper") {
		for (var i=25; i <= 29; i=i+2) { sendCommand(device_id, "TILT " + i + " " + transformed_degrees); }			
	}
	else if (blind_id == "E" && section == "lower") {
		for (var i=26; i <= 30; i=i+2) { sendCommand(device_id, "TILT " + i + " " + transformed_degrees); }			
	}
	else {
		sendCommand(device_id, "TILT " + blind_id + " " + transformed_degrees);
	}		
}

function pushTemperature(control_id, newTemp, device_id_increase, device_id_decrease) {
	//set control value
	setControlValue('hvac', 'temperature', newTemp); 	
	//push value
	push('setTemperature("' + control_id + '", ' + newTemp + ');');
	//assign setpoints: heat_setpoint is the threshold at which the heating will be triggered (ie. below the current level), cool_setpoint is the threshold at which the cooling will be triggered (ie. above the current level)
	range = 1;
	heat_setpoint = newTemp - range;			
	cool_setpoint = newTemp + range;			
	//send command after a three second delay
	if (window.temp_command_timer) {
		clearTimeout(window.temp_command_timer);
	}
	window.temp_command_timer = setTimeout('sendCommand(' + device_id_increase + ', "ANA_OUTPUT ' + (heat_setpoint * 10) + '"); sendCommand(' + device_id_decrease + ', "ANA_OUTPUT ' + (cool_setpoint * 10) + '");', 3000);
}
	

function pushHumidity(control_id, newVal, device_id_increase, device_id_decrease) {
	//set control value
	setControlValue('hvac', 'humidity', newVal); 					
	//push value
	push('setHumidity("' + control_id + '", ' + newVal + ');');			
	//assign setpoints: rh_high_setpoint is the threshold at which dehumidification will be triggered (ie. above the current level), rh_low_setpoint is the threshold at which humidification will be triggered (ie. below the current level)
	range = 7.5;
	rh_high_setpoint = newVal + range;			
	rh_low_setpoint = newVal - range;			
	//send command after a three second delay
	if (window.rh_command_timer) {
		clearTimeout(window.rh_command_timer);
	}
	window.rh_command_timer = setTimeout('sendCommand(' + device_id_increase + ', "ANA_OUTPUT ' + (rh_high_setpoint * 10) + '"); sendCommand(' + device_id_decrease + ', "ANA_OUTPUT ' + (rh_low_setpoint * 10) + '");', 3000);
}

function pushVentilation(control_id, state, device_id) {
	//set control value
	setControlValue('hvac', 'ventilation', state);
	//push value
	push("setVentilation('" + control_id + "', '" + state + "');");
	//send command
	if (state == "ON") { sendCommand(device_id, "Close"); }
	else if (state == "OFF") { sendCommand(device_id, "Open"); }
}

function pushOptimization(optimize) {
	//set control value
	window.controls.optimization = optimize;
	//call optimize method in Controls Controller
	if (window.controls.optimization) {
		new Ajax.Request("/controls/optimize_shades", { 
			method: "get"
		});	
	}
}

function setOptimizationDelay(delay) {
	new Ajax.Request("/controls/set_optimization_delay", { 
		method: "get", 
		parameters: { 
			"delay": delay
		}
	});	
}