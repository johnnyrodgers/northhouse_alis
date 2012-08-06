/* MOBILE JAVASCRIPT UI FUNCTIONS - North House Mobile App - 2009 - Johnny Rodgers */

//slider variables
var slider_height = 206;
var handle_offset = 16;
var value_offset = 3;

function initializeControls() {
	$(document).ready(function () {
		//iterate over array and evaluate each function statement (allows arguments to be stored in function calls)
		jQuery.each(window.loadFunctions, function(i, func) {
			eval(func);
		});
	});
}

//push() either submits the passed javascript or the window.controls hash (encoded as JSON) to the push server via an AJAX request
function push(javascript) {
	//push the javascript argument to be rendered on other clients
	if (javascript) {
		jQuery.get("/controls/push", { "javascript": javascript, "client_id": window.client_id });
	}
	//push the entire controls hash to be updated on other clients
	else {
		jQuery.get("/controls/push", { "controls": Object.toJSON(window.controls), "client_id": window.client_id });
	}
}

//sendCommand accepts a device_id (int) and a command (string) to send to the sendCommand method of the Controls controller
function sendCommand(device_id, command) {
	jQuery.get("/controls/sendCommand", { "device_id": device_id, "command": command });
}


function setActiveItem(prefix, id) {
	//reset existing active item
	$("." + prefix + "_item").removeClass("check");
	//set active item in list
	$("#" + prefix + "_" + id).addClass("check");
}

function setSliderPosition(slider_id, value) {
	//alert('setting ' + slider_id + ' to ' + value);
	//calculate element height by taking the slider height and subtracting padding and handle height
	var elementHeight = parseInt($("#" + slider_id).height()) - parseInt($("#" + slider_id + '_handle').height());
	//calculate amount to offset from top by taking the element height and dividing it by the value as a percentage
	var topValue = $("#" + slider_id).offset().top + elementHeight - (elementHeight / (100 / value)) - ((handle_offset + value_offset) / 2);
	//set offset
	$("#" + slider_id + '_handle').css({ top: topValue + 'px' });
	//update value
	updateSlider(slider_id + "_handle");
}

function updateSlider(_target) {
		slider = _target.replace("_handle", "");
		var new_y = parseInt((($('#'+_target).offset().top - $('#'+slider).offset().top) / slider_height) * 100);
		//set display value and constrain to slider
		if (new_y <= 4) { 
			display_value = "ON"; 
			$("#"+_target).css("top", $('#'+slider).offset().top - handle_offset);
		}
		else if (new_y >= 100) { 
			display_value = "OFF"; 
			$("#"+_target).css("top", $('#'+slider).offset().top + slider_height - handle_offset);
		}
		else { 
			display_value = (flipValue(new_y) + value_offset) + '%'; 
		}		
		$('#'+_target.replace("handle", "value")).html(display_value);		
}

function pushSlider(_target) {	
		element = _target.replace("_handle", "");
		subsystem = $('#'+_target).attr("subsystem");
		device_id = $('#'+_target).attr("device_id");
		//set value		
		updateSlider(_target);
		new_y = parseInt((($('#'+_target).offset().top - $('#'+element).offset().top) / slider_height) * 100);
		if (new_y <= 4) { new_value = 100; }
		else if (new_y >= 100) { new_value = 0; }
		else { new_value = flipValue(new_y) + value_offset; }		
		if (subsystem == "lights") {
			if (window.controls.lights[element] == 0) {
				//changes from 0 are expressed as the target percentage
				delta = new_value - window.controls.lights[element];	
				sendCommand(device_id, 'BRIGHTBY ' + delta);
			}
			else {
				if (new_value > window.controls.lights[element]) {
					delta = ((new_value - window.controls.lights[element]) / window.controls.lights[element]) * 100;
					//round to nearest 5
					delta = Math.round(delta / 5.0) * 5;
					if (new_value == 100) {
						sendCommand(device_id, 'ONFADE');
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
						sendCommand(device_id, 'OFFFADE');
					}
					else {
						sendCommand(device_id, 'DIMBY ' + delta);
					}				
				}			
			}
			//set control value - has to happen after the above since we need a delta value
	    setControlValue('lights', element, new_value);	    
			//push javascript to clients
			push('setSliderPosition("' + element + '", ' + new_value + '); setControlValue("' + subsystem + '", "' + element + '", ' + new_value + ');');	
		}
}