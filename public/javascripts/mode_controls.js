function initializeModeControls() {
	document.observe("dom:loaded", function() {
		//iterate over array and evaluate each function statement (allows arguments to be stored in function calls)
		window.loadFunctions.each(function(func) {
			eval(func);
		});
	});
}

function modeSliderCallback(object) {
	//assign element id to variable and strip "_handle" suffix
	var element = object.element.id.replace("_handle", "");	
	$(element + '_mirror').hide();
	//assign attributes to variables (stored as strings in HTML attributes)
	subsystem = object.element.getAttribute("subsystem");
	master = object.element.getAttribute("master");
	slave = object.element.getAttribute("slave");
	//set positions and values for masters and slaves
	if (master == "true") {
		$(element + '_master_status').hide();
		eval(element + '_slaves').each(function(e) {
			$(e + '_master_status').hide();
			setSliderPosition(e, $("mode_" + element).value, false, false);
			$('mode_' + e).value = $("mode_" + element).value;
		});
	}
	if (slave == "true") {
		eval(element + '_masters').each(function(e) {
			if ($("mode_" + e).value != $("mode_" + element).value) {
				showMasterStatus(e);
			}				
		});			
	}
}

function modeTiltCallback(control_id, section, degrees) {
	//set hidden field value
	$('mode_' + control_id + '_' + section).value = degrees;
	//assign attributes to variables (stored as strings in HTML attributes)
	master = $(control_id + "_degree_buttons_" + section).getAttribute("master");
	device_id = $(control_id + "_degree_buttons_" + section).getAttribute("device_id");
	//set positions and values for masters and slaves
	if (master == "true") {
		eval(control_id + '_degree_button_slaves').each(function(e) {
			setTilt(e, section, degrees);
			$('mode_' + e + '_' + section).value = degrees;
		});
	}
}

function updateControls(controls) {
	//HVAC
	setTemperature('K1_temperature_control', controls.hvac.temperature);
	$('mode_temperature').value = controls.hvac.temperature;
	setHumidity('K1_humidity_control', controls.hvac.humidity);
	$('mode_humidity').value = controls.hvac.humidity;
	setVentilation('K1_ventilation', controls.hvac.ventilation);
	$('mode_ventilation').value = controls.hvac.ventilation;	
	//LIGHTS
	for (var light in controls.lights) {
		//check for toggle values ("ON/OFF")		
		if (isNaN(controls.lights[light])) {
			setTogglePosition(light, controls.lights[light]);
		}
		else {
			setSliderPosition(light, controls.lights[light]);
		}
		$('mode_' + light).value = controls.lights[light];		
	}
	//BLINDS
	for (var blind in controls.blinds) {
		if (blind.indexOf("all") == -1) {
			setSliderPosition(blind, controls.blinds[blind]);
			$('mode_' + blind).value = controls.blinds[blind];		
		}
	}
	//SHADES
	for (var shade in controls.shades) {
		if (shade.indexOf("tilt") == -1) {
			if (shade.indexOf("all") == -1) {
				setSliderPosition(shade, controls.shades[shade]);
				$('mode_' + shade).value = controls.shades[shade];		
			}
		}
		else {
			if (shade.indexOf("all") == -1) {
				if (shade.indexOf("upper") != -1) {
					//there is a difference between the mode hash (K3_1_shade_W_tilt_upper) and the control id (K3_1_shade_W_tilt), so a string replace is necessary
					setTilt(shade.replace("_upper", ""), 'upper', controls.shades[shade]);
					$('mode_' + shade).value = controls.shades[shade];		
				}
				else {
					setTilt(shade.replace("_lower", ""), 'lower', controls.shades[shade]);
					$('mode_' + shade).value = controls.shades[shade];		
				}
			}
		}
	}
}