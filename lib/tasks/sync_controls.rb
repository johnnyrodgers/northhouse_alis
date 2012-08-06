SYNC_CONTROLS = Thread.new(Juggernaut) do
	RAILS_DEFAULT_LOGGER.debug "Launching SYNC_CONTROLS thread at " + Time.now.strftime("%H:%M:%S%p (%m/%d/%Y)")
	# set up controls hash
	controls = Hash.new
	controls[:hvac] = Hash.new
	#controls[:shades] = Hash.new
	# set up mControl service
	service = MControl_x0020_Web_x0020_ServiceSoap.new    
 	while true do		
		# create js_update array to populate with JavaScript strings
		js_update = Array.new
		# get available current controls data from Beckhoff table
		controls_data = Beckhoff.find_by_sql("SELECT * FROM beckhoff ORDER BY timeStamp DESC LIMIT 1")[0]
		# HVAC
		# current values
		current_temp = controls_data[:T_INTERIOR] / 10.0		
		js_update << "$('K1_temperature_control_current').update('#{current_temp}');"
		current_rh = controls_data[:RH_INTERIOR] / 10.0		
		js_update << "$('K1_humidity_control_current').update('#{current_rh}');"
		js_update << "$('update_timestamp').update('Updated at #{controls_data[:timeStamp].strftime("%I:%M:%S %p")}');"
		# setpoints
		temp_range = 1.0
		rh_range = 7.5
		controls[:hvac][:temperature] = (controls_data[:T_HEAT_SETPOINT] / 10.0) + temp_range
		controls[:hvac][:humidity] = (controls_data[:RH_LOW_SETPOINT] / 10.0) + rh_range
		if controls_data[:VENT_RELAY] == 100 
			controls[:hvac][:ventilation] = "ON"
		else 
			controls[:hvac][:ventilation] = "OFF"
		end
		# SHADES
# 		shades = { 
# 			"K3_1_shade_W1_tilt_upper" => 1,
# 			"K3_1_shade_W1_tilt_lower" => 2,
# 			"K3_1_shade_W1" => 2,
# 			"K3_1_shade_W2_tilt_upper" => 3,
# 			"K3_1_shade_W2_tilt_lower" => 4,
# 			"K3_1_shade_W2" => 4,
# 			"K3_1_shade_W3_tilt_upper" => 5,
# 			"K3_1_shade_W3_tilt_lower" => 6,
# 			"K3_1_shade_W3" => 6,
# 			"K3_1_shade_W4_tilt_upper" => 7,
# 			"K3_1_shade_W4_tilt_lower" => 8,
# 			"K3_1_shade_W4" => 8,
# 			"K3_1_shade_SW1_tilt_upper" => 9,
# 			"K3_1_shade_SW1_tilt_lower" => 10,
# 			"K3_1_shade_SW1" => 10,
# 			"K3_1_shade_SW2_tilt_upper" => 11,
# 			"K3_1_shade_SW2_tilt_lower" => 12,
# 			"K3_1_shade_SW2" => 12,
# 			"K3_1_shade_SW3_tilt_upper" => 13,
# 			"K3_1_shade_SW3_tilt_lower" => 14,
# 			"K3_1_shade_SW3" => 14,
# 			"K3_1_shade_SW4_tilt_upper" => 15,
# 			"K3_1_shade_SW4_tilt_lower" => 16,
# 			"K3_1_shade_SW4" => 16,
# 			"K3_1_shade_SE1_tilt_upper" => 17,
# 			"K3_1_shade_SE1_tilt_lower" => 18,
# 			"K3_1_shade_SE1" => 18,
# 			"K3_1_shade_SE2_tilt_upper" => 19,
# 			"K3_1_shade_SE2_tilt_lower" => 20,
# 			"K3_1_shade_SE2" => 20,
# 			"K3_1_shade_SE3_tilt_upper" => 21,
# 			"K3_1_shade_SE3_tilt_lower" => 22,
# 			"K3_1_shade_SE3" => 22,
# 			"K3_1_shade_SE4_tilt_upper" => 23,
# 			"K3_1_shade_SE4_tilt_lower" => 24,
# 			"K3_1_shade_SE4" => 24,
# 			"K3_1_shade_E1_tilt_upper" => 25,
# 			"K3_1_shade_E1_tilt_lower" => 26,
# 			"K3_1_shade_E1" => 26,
# 			"K3_1_shade_E2_tilt_upper" => 27,
# 			"K3_1_shade_E2_tilt_lower" => 28,
# 			"K3_1_shade_E2" => 28,
# 			"K3_1_shade_E3_tilt_upper" => 29,
# 			"K3_1_shade_E3_tilt_lower" => 30,
# 			"K3_1_shade_E3" => 30 }
# 		shades.sort.each do |shade, id|
# 			if id % 2 == 0
# 				# EXTENT
# 				extension = service.sendCommand(SendCommand.new(DEVICES["exterior_shades"], "GETEXTENSION #{id}")).gsub("STATUS: BLIND #{id} EXTENT ", "")
# 				#extension = "STATUS: BLIND #{id} EXTENT 60".gsub("STATUS: BLIND #{id} EXTENT ", "")
# 				controls[:shades][shade] = extension				
# 				# LOWER TILT
# 				#tilt = service.sendCommand(SendCommand.new(DEVICES["exterior_shades"], "GETTILT #{id}")).gsub("STATUS: BLIND #{id} EXTENT ", "")
# 				#controls[:shades][shade] = service.sendCommand(SendCommand.new(DEVICES["exterior_shades"], "GETTILT #{id}"))	
# 				
# 				# WHAT DOES GET TILT RETURN?
# 				
# 			else 
# 				#tilt = service.sendCommand(SendCommand.new(DEVICES["exterior_shades"], "GETTILT #{id}")).gsub("STATUS: BLIND #{id} EXTENT ", "")
# 				#controls[:shades][shade] = service.sendCommand(SendCommand.new(DEVICES["exterior_shades"], "GETTILT #{id}"))				
# 			end
# 		end
		# push updates and output status
		Juggernaut.send_to_client(js_update.to_s, "central")
 		Juggernaut.send_to_client("syncControls(#{JSON.generate(controls)}, 'central');", "central")
 		Juggernaut.send_to_all("console.log('Controls synchronized at ' + new Date());")
 		RAILS_DEFAULT_LOGGER.debug "SYNC_CONTROLS thread called at " + Time.now.strftime("%I:%M:%S%p (%m/%d/%Y)")
		sleepInterval = 10
		sleep sleepInterval
 	end	
end