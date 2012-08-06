//send commands to all devices based on mode
function triggerModeCommands(controls) {
	//console.log(controls);
	//console.log(devices);
	//HVAC
	temp_range = 1;
	sendCommand(devices.T_HEAT_SETPOINT, "ANA_OUTPUT " + ((controls.hvac.temperature - temp_range)*10));	
	sendCommand(devices.T_COOL_SETPOINT, "ANA_OUTPUT " + ((controls.hvac.temperature + temp_range)*10));	
	rh_range = 7.5;
	sendCommand(devices.RH_HIGH_SETPOINT, "ANA_OUTPUT " + ((controls.hvac.humidity + rh_range)*10));	
	sendCommand(devices.RH_LOW_SETPOINT, "ANA_OUTPUT " + ((controls.hvac.humidity - rh_range)*10));	
	if (controls.hvac.ventilation == "ON") { sendCommand(devices.VENT_REQUESTED, "Close"); }
	else if (controls.hvac.ventilation == "OFF") { sendCommand(devices.VENT_REQUESTED, "Open"); }
	//LIGHTS
	//toggles
	sendCommand(devices.lights_landscape, controls.lights.K1_light_landscape + "FADE");
	sendCommand(devices.lights_entry, controls.lights.K2_light_entry + "FADE");
	sendCommand(devices.lights_ext_entry, controls.lights.K2_light_exterior_entry + "FADE");
	sendCommand(devices.lights_counter, controls.lights.K2_light_kitchen_backsplash + "FADE");
	//dimmers
	if (controls.lights.K1_light_landscape == "ON") { sendCommand(devices.lights_landscape, "ONFADE"); }
	else if (controls.lights.K1_light_landscape == "OFF") { sendCommand(devices.lights_landscape, "OFFFADE"); }
	if (controls.lights.K2_light_entry == "ON") { sendCommand(devices.lights_entry, "ONFADE"); }
	else if (controls.lights.K2_light_entry == "OFF") { sendCommand(devices.lights_entry, "OFFFADE"); }
	if (controls.lights.K2_light_exterior_entry == "ON") { sendCommand(devices.lights_ext_entry, "ONFADE"); }
	else if (controls.lights.K2_light_exterior_entry == "OFF") { sendCommand(devices.lights_ext_entry, "OFFFADE"); }
	if (controls.lights.K2_light_kitchen_backsplash == "ON") { sendCommand(devices.lights_counter, "ONFADE"); }
	else if (controls.lights.K2_light_kitchen_backsplash == "OFF") { sendCommand(devices.lights_counter, "OFFFADE"); }
	// map control_ids to device_ids
	dimmers = [ 
		{ "control_id": "K1_light_dining_area", "device_id": "lights_dining" }, 
		{ "control_id": "K1_light_kitchen", "device_id": "lights_kitchen" },
		{ "control_id": "K1_light_lounge", "device_id": "lights_lounge" },
		{ "control_id": "K1_light_sleeping_area", "device_id": "lights_sleeping" }
	];
	//iterate over dimmers
	dimmers.each(function(device) {
		// assign variables from array
		element = device["control_id"];
		new_value = controls.lights[device["control_id"]];
		device_id = devices[device["device_id"]];
		// send command based on current state and delta
		if (window.controls.lights[element] == 0) {
			delta = new_value - window.controls.lights[element];	
			sendCommand(device_id, 'BRIGHTBY ' + delta);
		}
		else {
			if (new_value > window.controls.lights[element]) {
				delta = ((new_value - window.controls.lights[element]) / window.controls.lights[element]) * 100;
				//round to nearest 5
				delta = Math.round(delta / 5.0) * 5;
				if (new_value == 100) {
					sendCommand(device_id, 'ONFADE'); // test to make sure this doesn't trigger a fade up from 0
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
					sendCommand(device_id, 'OFFFADE'); // test to make sure this doesn't trigger a fade down from 100
				}
				else {
					sendCommand(device_id, 'DIMBY ' + delta);
				}				
			}			
		}	
	});
	//AMBIENT CANVAS
	//TODO: change this to turn the Ambient Canvas thread on and off
	if (controls.lights.K2_light_ambient_canvas == "ON") { 
		new Ajax.Request('/controls/switchAmbientCanvas', { 
			method: 'get', 
			parameters: { 
				'command': 'ON',
			}
		});
	}
	else if (controls.lights.K2_light_ambient_canvas == "OFF") { 
		new Ajax.Request('/controls/switchAmbientCanvas', { 
			method: 'get', 
			parameters: { 
				'command': 'OFF',
			}
		});
	}
	//BLINDS
	// remove masters (each blind set individually, as masters are not a sure indicator of individual settings)
	sorted_blinds = Object.keys(controls.blinds).sort();
	sorted_blinds.each(function(blind) {
		if (blind != "K1_blind_all" && blind != "K3_blind_W" && blind != "K3_blind_SW" && blind != "K3_blind_SE" && blind != "K3_blind_E") {
			//flip value to map to blind driver
			value_to_send = flipValue(controls.blinds[blind]);
			//set blind_id from last character of control_id string
			blind_id = blind.substr(blind.length - 1, 1);
			//interpret facade_id from control_id
			if (blind.indexOf("SW") != -1 || blind.indexOf("SE") != -1) {
				facade_id = 2;
				//account for south facade blind numbering
				if (blind.indexOf("SE") != -1) {
					blind_id = parseInt(blind_id) + 4;
				}
			}
			else if (blind.indexOf("W") != -1) {
				facade_id = 1;
			}
			else if (blind.indexOf("E") != -1) {
				facade_id = 3;
			}		
			//				console.log("SENDING COMMAND: EXTENT " + facade_id + " " + blind_id + " " + value_to_send);		
			sendCommand(devices.interior_blinds, "EXTENT " + facade_id + " " + blind_id + " " + value_to_send);		
		}
	});	
	//SHADES
	sorted_shades = Object.keys(controls.shades).sort();
	sorted_shades.each(function(shade) {
		//extension
		if (shade.indexOf("tilt") == -1) {
			if (shade != "K1_shade_all" && shade != "K3_shade_W" && shade != "K3_shade_SW" && shade != "K3_shade_SE" && shade != "K3_shade_E") {
				//flip value to map to shade driver
				value_to_send = flipValue(controls.shades[shade]);
				shade_id = shade.substr(shade.length -1, 1);
				//set shade_id
				if (shade.indexOf("SW") != -1 || shade.indexOf("SE") != -1) {
					//account for blind_id numbering
					if (shade.indexOf("SW") != -1) {
						shade_id = parseInt(shade_id) + 4;
					}
					if (shade.indexOf("SE") != -1) {
						shade_id = parseInt(shade_id) + 8;
					}
				}
				else if (shade.indexOf("E") != -1) {
					shade_id = parseInt(shade_id) + 12;
				}		
				//offset shade_id (2~30)
				shade_id = shade_id*2;
				//send command				
				//console.log("SENDING COMMAND: EXTENT " + shade_id + " " + value_to_send);
				sendCommand(devices.exterior_shades, "EXTENT " + shade_id + " " + value_to_send);				
			}
		}
		//tilt
		else {
			if (shade != "K1_shade_all_tilt_upper" && shade != "K1_shade_all_tilt_lower" &&
				shade != "K3_shade_W_tilt_upper" && shade != "K3_shade_W_tilt_lower" &&
				shade != "K3_shade_SW_tilt_upper" && shade != "K3_shade_SW_tilt_lower" &&
				shade != "K3_shade_SE_tilt_upper" && shade != "K3_shade_SE_tilt_lower" &&
				shade != "K3_shade_E_tilt_upper" && shade != "K3_shade_E_tilt_lower") {
				// set degrees
				degrees = controls.shades[shade];
				//set section
				if (shade.indexOf("upper") != -1) { section = "upper"; }
				else if (shade.indexOf("lower") != -1) { section = "lower"; }
				//set shade_id
				if (section == "upper") {
					shade_id = shade.replace("_tilt_upper", "");				
				}
				else if (section == "lower") {
					shade_id = shade.replace("_tilt_lower", "");
				}
				shade_id = shade.substr(shade_id.length -1, 1);
				if (shade.indexOf("SW") != -1 || shade.indexOf("SE") != -1) {
					//account for blind_id numbering
					if (shade.indexOf("SW") != -1) {
						shade_id = parseInt(shade_id) + 4;
					}
					if (shade.indexOf("SE") != -1) {
						shade_id = parseInt(shade_id) + 8;
					}
				}
				else if (shade.indexOf("E") != -1) {
					shade_id = parseInt(shade_id) + 12;
				}		
				//offset shade_id (2~30)
				shade_id = shade_id*2;
				//offset upper section shade_ids
				if (section == "upper") {
					shade_id = shade_id - 1;
				}				
				// map degrees to calibration of blinds
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
				//send commands
				//console.log("SENDING COMMAND: TILT " + shade_id + " " + transformed_degrees);
				sendCommand(devices.exterior_shades, "TILT " + shade_id + " " + transformed_degrees);
			}
		}
	});
	//OPTIMIZATION		
	pushOptimization(controls.optimization);
}
