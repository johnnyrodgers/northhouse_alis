//updateControls() accepts a controls hash and updates all controls on the client and updates the window.controls hash
//pulsate and start are flags indicating whether to pulsate the control on change, and whether to set a value on start or not, respectively
function updateControls(controls, pulsate, start, panel) {
	//assign existing controls to temporary variable
	existingControls = recursive_clone(window.controls);
	//set pulsate default value (true)
	var pulsate = (typeof pulsate == 'undefined') ? true : pulsate;
	//set start default value (false)
	var start = (typeof start == 'undefined') ? false : start;
	//set controls depending on panel
	if (panel == "central") {
		//HVAC
		//check for a difference before setting climate controls
		if (existingControls.hvac.temperature != controls.hvac.temperature || start) {
			setTemperature('K1_temperature_control', controls.hvac.temperature, pulsate);			
		}
		if (existingControls.hvac.humidity != controls.hvac.humidity || start) {
			setHumidity('K1_humidity_control', controls.hvac.humidity, pulsate);
		}
		if (existingControls.hvac.ventilation != controls.hvac.ventilation || start) {
			setVentilation('K1_ventilation', controls.hvac.ventilation);
		}
		//OPTIMIZATION
		setOptimization(controls.optimization);
	}
	//LIGHTS
	setTogglePosition('K1_light_landscape', controls.lights.K1_light_landscape);
	setSliderPosition('K1_light_kitchen', controls.lights.K1_light_kitchen);
	if (panel == "central" || panel == "north") {
		setTogglePosition('K2_light_entry', controls.lights.K2_light_entry);
		setTogglePosition('K2_light_exterior_entry', controls.lights.K2_light_exterior_entry);
		setSliderPosition('K1_light_dining_area', controls.lights.K1_light_dining_area);
	}
	if (panel == "central" || panel == "east") {
		setSliderPosition('K1_light_lounge', controls.lights.K1_light_lounge);
		setSliderPosition('K1_light_sleeping_area', controls.lights.K1_light_sleeping_area);
	}
	if (panel == "central") {
		setTogglePosition('K2_light_kitchen_backsplash', controls.lights.K2_light_kitchen_backsplash);
		setTogglePosition('K2_light_ambient_canvas', controls.lights.K2_light_ambient_canvas);
		//BLINDS
		setSliderPosition('K1_blind_all', controls.blinds.K1_blind_all);
		setSliderPosition('K3_blind_W', controls.blinds.K3_blind_W);
		setSliderPosition('K3_blind_SW', controls.blinds.K3_blind_SW);
		setSliderPosition('K3_blind_SE', controls.blinds.K3_blind_SE);
		setSliderPosition('K3_blind_E', controls.blinds.K3_blind_E);
		setSliderPosition('K3_1_blind_W1', controls.blinds.K3_1_blind_W1);
		setSliderPosition('K3_1_blind_W2', controls.blinds.K3_1_blind_W2);
		setSliderPosition('K3_1_blind_W3', controls.blinds.K3_1_blind_W3);
		setSliderPosition('K3_1_blind_W4', controls.blinds.K3_1_blind_W4);
		setSliderPosition('K3_1_blind_SW1', controls.blinds.K3_1_blind_SW1);
		setSliderPosition('K3_1_blind_SW2', controls.blinds.K3_1_blind_SW2);
		setSliderPosition('K3_1_blind_SW3', controls.blinds.K3_1_blind_SW3);
		setSliderPosition('K3_1_blind_SW4', controls.blinds.K3_1_blind_SW4);
		setSliderPosition('K3_1_blind_SE1', controls.blinds.K3_1_blind_SE1);
		setSliderPosition('K3_1_blind_SE2', controls.blinds.K3_1_blind_SE2);
		setSliderPosition('K3_1_blind_SE3', controls.blinds.K3_1_blind_SE3);
		setSliderPosition('K3_1_blind_SE4', controls.blinds.K3_1_blind_SE4);
		setSliderPosition('K3_1_blind_E1', controls.blinds.K3_1_blind_E1);
		setSliderPosition('K3_1_blind_E2', controls.blinds.K3_1_blind_E2);
		setSliderPosition('K3_1_blind_E3', controls.blinds.K3_1_blind_E3);
		//SHADES Extension
		setSliderPosition('K1_shade_all', controls.shades.K1_shade_all);
		setSliderPosition('K3_shade_W', controls.shades.K3_shade_W);
		setSliderPosition('K3_shade_SW', controls.shades.K3_shade_SW);
		setSliderPosition('K3_shade_SE', controls.shades.K3_shade_SE);
		setSliderPosition('K3_shade_E', controls.shades.K3_shade_E);
		setSliderPosition('K3_1_shade_W1', controls.shades.K3_1_shade_W1);
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
	}
	//MODE
	//check for a difference before setting mode state
	if (existingControls.mode != controls.mode || start) {
		setActiveMode(controls.mode, "K1_mode_buttons", pulsate)
	}
	//update global controls hash
	window.controls = recursive_clone(controls);
}