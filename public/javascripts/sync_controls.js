//syncControls() accepts a controls hash and syncs all controls on the client and updates the window.controls hash
function syncControls(controls) {
	console.log("syncControls called");
	console.log(controls);
	//assign existing controls to temporary variable
	existingControls = recursive_clone(window.controls);
	//HVAC
	//check for a difference before setting climate controls
	if (existingControls.hvac.temperature != controls.hvac.temperature) {
		setTemperature('K1_temperature_control', controls.hvac.temperature);			
		setControlValue('hvac', 'temperature', controls.hvac.temperature);
	}
	if (existingControls.hvac.humidity != controls.hvac.humidity) {
		setHumidity('K1_humidity_control', controls.hvac.humidity);
		setControlValue('hvac', 'humidity', controls.hvac.humidity);
	}
	if (existingControls.hvac.ventilation != controls.hvac.ventilation) {
		setVentilation('K1_ventilation', controls.hvac.ventilation);
		setControlValue('hvac', 'ventilation', controls.hvac.ventilation);
	}
	//SHADES Extension
/*
	setSliderPosition('K1_shade_all', controls.shades.K1_shade_all);
	setControlValue('shades', 'K1_shade_all', controls.shades.K1_shade_all);
	setSliderPosition('K3_shade_W', controls.shades.K3_shade_W);
	setSliderPosition('K3_shade_SW', controls.shades.K3_shade_SW);
	setSliderPosition('K3_shade_SE', controls.shades.K3_shade_SE);
	setSliderPosition('K3_shade_E', controls.shades.K3_shade_E);
*/
/*
	setSliderPosition('K3_1_shade_W1', controls.shades.K3_1_shade_W1);
	setControlValue('shades', 'K3_1_shade_W1', controls.shades.K3_1_shade_W1);
	
	//set all control values


	setSliderPosition('K3_1_shade_W2', controls.shades.K3_1_shade_W2);
	setSliderPosition('K3_1_shade_W3', controls.shades.K3_1_shade_W3);
	setSliderPosition('K3_1_shade_W4', controls.shades.K3_1_shade_W4);
	setSliderPosition('K3_1_shade_SW1', controls.shades.K3_1_shade_SW1);
	setSliderPosition('K3_1_shade_SW2', controls.shades.K3_1_shade_SW2);
	setSliderPosition('K3_1_shade_SW3', controls.shades.K3_1_shade_SW3);
	setSliderPosition('K3_1_shade_SW4', controls.shades.K3_1_shade_SW4);
	setSliderPosition('K3_1_shade_SE1', controls.shades.K3_1_shade_SE1);
	setSliderPosition('K3_1_shade_SE2', controls.shades.K3_1_shade_SE2);
	setSliderPosition('K3_1_shade_SE3', controls.shades.K3_1_shade_SE3);
	setSliderPosition('K3_1_shade_SE4', controls.shades.K3_1_shade_SE4);
	setSliderPosition('K3_1_shade_E1', controls.shades.K3_1_shade_E1);
	setSliderPosition('K3_1_shade_E2', controls.shades.K3_1_shade_E2);
	setSliderPosition('K3_1_shade_E3', controls.shades.K3_1_shade_E3);
	//SHADES Tilt
	//uppers
	setTilt('K1_shade_all_tilt', 'upper', controls.shades.K1_shade_all_tilt_upper);
	setTilt('K3_shade_W_tilt', 'upper', controls.shades.K3_shade_W_tilt_upper);
	setTilt('K3_shade_SW_tilt', 'upper', controls.shades.K3_shade_SW_tilt_upper);
	setTilt('K3_shade_SE_tilt', 'upper', controls.shades.K3_shade_SE_tilt_upper);
	setTilt('K3_shade_E_tilt', 'upper', controls.shades.K3_shade_E_tilt_upper);
	setTilt('K3_1_shade_W1_tilt', 'upper', controls.shades.K3_1_shade_W1_tilt_upper);
	setTilt('K3_1_shade_W2_tilt', 'upper', controls.shades.K3_1_shade_W2_tilt_upper);
	setTilt('K3_1_shade_W3_tilt', 'upper', controls.shades.K3_1_shade_W3_tilt_upper);
	setTilt('K3_1_shade_W4_tilt', 'upper', controls.shades.K3_1_shade_W4_tilt_upper);
	setTilt('K3_1_shade_SW1_tilt', 'upper', controls.shades.K3_1_shade_SW1_tilt_upper);
	setTilt('K3_1_shade_SW2_tilt', 'upper', controls.shades.K3_1_shade_SW2_tilt_upper);
	setTilt('K3_1_shade_SW3_tilt', 'upper', controls.shades.K3_1_shade_SW3_tilt_upper);
	setTilt('K3_1_shade_SW4_tilt', 'upper', controls.shades.K3_1_shade_SW4_tilt_upper);
	setTilt('K3_1_shade_SE1_tilt', 'upper', controls.shades.K3_1_shade_SE1_tilt_upper);
	setTilt('K3_1_shade_SE2_tilt', 'upper', controls.shades.K3_1_shade_SE2_tilt_upper);
	setTilt('K3_1_shade_SE3_tilt', 'upper', controls.shades.K3_1_shade_SE3_tilt_upper);
	setTilt('K3_1_shade_SE4_tilt', 'upper', controls.shades.K3_1_shade_SE4_tilt_upper);
	setTilt('K3_1_shade_E1_tilt', 'upper', controls.shades.K3_1_shade_E1_tilt_upper);
	setTilt('K3_1_shade_E2_tilt', 'upper', controls.shades.K3_1_shade_E2_tilt_upper);
	setTilt('K3_1_shade_E3_tilt', 'upper', controls.shades.K3_1_shade_E3_tilt_upper);
	//lowers
	setTilt('K1_shade_all_tilt', 'lower', controls.shades.K1_shade_all_tilt_lower);
	setTilt('K3_shade_W_tilt', 'lower', controls.shades.K3_shade_W_tilt_lower);
	setTilt('K3_shade_SW_tilt', 'lower', controls.shades.K3_shade_SW_tilt_lower);
	setTilt('K3_shade_SE_tilt', 'lower', controls.shades.K3_shade_SE_tilt_lower);
	setTilt('K3_shade_E_tilt', 'lower', controls.shades.K3_shade_E_tilt_lower);
	setTilt('K3_1_shade_W1_tilt', 'lower', controls.shades.K3_1_shade_W1_tilt_lower);
	setTilt('K3_1_shade_W2_tilt', 'lower', controls.shades.K3_1_shade_W2_tilt_lower);
	setTilt('K3_1_shade_W3_tilt', 'lower', controls.shades.K3_1_shade_W3_tilt_lower);
	setTilt('K3_1_shade_W4_tilt', 'lower', controls.shades.K3_1_shade_W4_tilt_lower);
	setTilt('K3_1_shade_SW1_tilt', 'lower', controls.shades.K3_1_shade_SW1_tilt_lower);
	setTilt('K3_1_shade_SW2_tilt', 'lower', controls.shades.K3_1_shade_SW2_tilt_lower);
	setTilt('K3_1_shade_SW3_tilt', 'lower', controls.shades.K3_1_shade_SW3_tilt_lower);
	setTilt('K3_1_shade_SW4_tilt', 'lower', controls.shades.K3_1_shade_SW4_tilt_lower);
	setTilt('K3_1_shade_SE1_tilt', 'lower', controls.shades.K3_1_shade_SE1_tilt_lower);
	setTilt('K3_1_shade_SE2_tilt', 'lower', controls.shades.K3_1_shade_SE2_tilt_lower);
	setTilt('K3_1_shade_SE3_tilt', 'lower', controls.shades.K3_1_shade_SE3_tilt_lower);
	setTilt('K3_1_shade_SE4_tilt', 'lower', controls.shades.K3_1_shade_SE4_tilt_lower);
	setTilt('K3_1_shade_E1_tilt', 'lower', controls.shades.K3_1_shade_E1_tilt_lower);
	setTilt('K3_1_shade_E2_tilt', 'lower', controls.shades.K3_1_shade_E2_tilt_lower);
	setTilt('K3_1_shade_E3_tilt', 'lower', controls.shades.K3_1_shade_E3_tilt_lower);
*/
}