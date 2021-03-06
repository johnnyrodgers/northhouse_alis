# #Thread.new {
# 	# get house status for each subsystem
# 	controls_data = Beckhoff.find_by_sql("SELECT * FROM beckhoff ORDER BY timeStamp DESC LIMIT 1")[0]
# 	# store in CONTROLS constant (for access in ControlsController index/north_entry/south_entry methods)
# 	CONTROLS = Hash.new
# 	CONTROLS[:hvac][:T_INTERIOR] = controls_data[:T_INTERIOR] / 10.0
# 	CONTROLS[:hvac][:RH_INTERIOR] = controls_data[:RH_INTERIOR] / 10.0
# 	# push updates to clients
# 	
# 	# push updates once per minute
# #	sleep(60)
# #}

# 					:mode => 1,
# 					:optimization => false,
# 					:hvac => { 
# 						:temperature => 20.0, 
# 						:humidity => 35.0, 
# 						:ventilation => "ON" 
# 					},
# 					:lights => {
# 						:K1_light_dining_area => 50,
# 						:K1_light_lounge => 75,
# 						:K1_light_sleeping_area => 100,
# 						:K1_light_kitchen => 25,
# 						:K2_light_kitchen_backsplash => "OFF",									
# 						:K2_light_entry => "OFF",
# 						:K2_light_exterior_entry => "OFF",
# 						:K1_light_landscape => "ON",			
# 						:K2_light_ambient_canvas => "ON",									
# 					},
# 					:blinds => {
# 						:K1_blind_all => 100,
# 						:K3_blind_W => 100,
# 						:K3_blind_S => 100,
# 						:K3_blind_E => 100,			
# 						:K3_1_blind_E1 => 100,
# 						:K3_1_blind_E2 => 100,
# 						:K3_1_blind_E3 => 100,
# 						:K3_1_blind_SW1 => 100,
# 						:K3_1_blind_SW2 => 100,
# 						:K3_1_blind_SW3 => 100,			
# 						:K3_1_blind_SW4 => 100,
# 						:K3_1_blind_SE1 => 100,
# 						:K3_1_blind_SE2 => 100,			
# 						:K3_1_blind_SE3 => 100,
# 						:K3_1_blind_SE4 => 100,
# 						:K3_1_blind_W1 => 100,
# 						:K3_1_blind_W2 => 100,
# 						:K3_1_blind_W3 => 100,
# 						:K3_1_blind_W4 => 100
# 					},
# 					:shades => {
# 						:K1_shade_all => 100,
# 						:K1_shade_all_tilt_upper => 90,
# 						:K1_shade_all_tilt_lower => 90,
# 						:K3_shade_W => 100,
# 						:K3_shade_W_tilt_upper => 90,
# 						:K3_shade_W_tilt_lower => 90,
# 						:K3_shade_SW => 100,
# 						:K3_shade_SW_tilt_upper => 90,
# 						:K3_shade_SW_tilt_lower => 90,
# 						:K3_shade_SE => 100,
# 						:K3_shade_SE_tilt_upper => 90,
# 						:K3_shade_SE_tilt_lower => 90,
# 						:K3_shade_E => 100,			
# 						:K3_shade_E_tilt_upper => 90,
# 						:K3_shade_E_tilt_lower => 90,
# 						:K3_1_shade_W1 => 100,
# 						:K3_1_shade_W1_tilt_upper => 90,
# 						:K3_1_shade_W1_tilt_lower => 90,
# 						:K3_1_shade_W2 => 100,			
# 						:K3_1_shade_W2_tilt_upper => 90,
# 						:K3_1_shade_W2_tilt_lower => 90,
# 						:K3_1_shade_W3 => 100,
# 						:K3_1_shade_W3_tilt_upper => 90,
# 						:K3_1_shade_W3_tilt_lower => 90,
# 						:K3_1_shade_W4 => 100,			
# 						:K3_1_shade_W4_tilt_upper => 90,
# 						:K3_1_shade_W4_tilt_lower => 90,
# 						:K3_1_shade_SW1 => 100,
# 						:K3_1_shade_SW1_tilt_upper => 90,
# 						:K3_1_shade_SW1_tilt_lower => 90,
# 						:K3_1_shade_SW2 => 100,
# 						:K3_1_shade_SW2_tilt_upper => 90,
# 						:K3_1_shade_SW2_tilt_lower => 90,
# 						:K3_1_shade_SW3 => 100,
# 						:K3_1_shade_SW3_tilt_upper => 90,
# 						:K3_1_shade_SW3_tilt_lower => 90,
# 						:K3_1_shade_SW4 => 100,
# 						:K3_1_shade_SW4_tilt_upper => 90,
# 						:K3_1_shade_SW4_tilt_lower => 90,
# 						:K3_1_shade_SE1 => 100,
# 						:K3_1_shade_SE1_tilt_upper => 90,
# 						:K3_1_shade_SE1_tilt_lower => 90,
# 						:K3_1_shade_SE2 => 100,			
# 						:K3_1_shade_SE2_tilt_upper => 90,
# 						:K3_1_shade_SE2_tilt_lower => 90,
# 						:K3_1_shade_SE3 => 100,
# 						:K3_1_shade_SE3_tilt_upper => 90,
# 						:K3_1_shade_SE3_tilt_lower => 90,
# 						:K3_1_shade_SE4 => 100,			
# 						:K3_1_shade_SE4_tilt_upper => 90,
# 						:K3_1_shade_SE4_tilt_lower => 90,
# 						:K3_1_shade_E1 => 100,
# 						:K3_1_shade_E1_tilt_upper => 90,
# 						:K3_1_shade_E1_tilt_lower => 90,
# 						:K3_1_shade_E2 => 100,		
# 						:K3_1_shade_E2_tilt_upper => 90,
# 						:K3_1_shade_E2_tilt_lower => 90,
# 						:K3_1_shade_E3 => 100,
# 						:K3_1_shade_E3_tilt_upper => 90,
# 						:K3_1_shade_E3_tilt_lower => 90
# 					}
