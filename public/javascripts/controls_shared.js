//These functions are shared between Embedded and Mobile controls
//These have to accommodate both Prototype and JQuery syntax!

//updates the window.controls hash with a new value for a specific control 
function setControlValue(subsystem, key, value) {
	window.controls[subsystem][key] = value;
}

