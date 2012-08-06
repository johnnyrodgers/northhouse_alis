class ControlsController < ApplicationController
	
	# require libraries
	require "lib/tasks/keepalive.rb" 			# needed to keep push server connection alive
	require "lib/tasks/sync_controls.rb" 	# synchronizes controls at a regular interval

# 	def gettest
# 		service = MControl_x0020_Web_x0020_ServiceSoap.new
# 		extension = service.sendCommand(SendCommand.new(DEVICES["exterior_shades"], "GETEXTENSION 24"))
# 		logger.debug extension.inspect
# 	end
	
	# PANELS
	def index 
		#check_threads
		logger.debug DEVICES.to_yaml
		# collect modes
		@modes = Mode.find(:all)
		@mode = Mode.find(1)
		# assign client id - how to differentiate between a touch panel and a connected laptop?  how to stop other computers from accessing controls?  force a local IP somehow?
		@client_id = "central"
	end
	
	def north_entry
		# collect modes
		@modes = Mode.find(:all)
		@mode = Mode.find(1)
		# need to sync client with central panel when it comes online		
		# assign client id
		@client_id = "north"
		render :layout => "controls_secondary"
	end

	def east_entry
		# collect modes
		@modes = Mode.find(:all)
		# assign selected mode
		@mode = Mode.find(1)
		# need to sync client with central panel when it comes online		
		# assign client id
		@client_id = "east"
		render :layout => "controls_secondary"
	end
	
	# JUGGERNAUT METHODS
	def push
		check_threads
		# create clients array
		clients = []
		logger.debug "push called: " + params["javascript"]
		# populate clients array (only add clients that did not originate the push request: avoids needlessly updating the originator - which leads to jitter)
		Juggernaut.show_clients.each do |client|
			# adjust parameter based on platform: client["id"] on *nix and client["client_id"] on windows
			if client["id"].nil?
				if client["client_id"] != params[:client_id]
					clients << client["client_id"]
				end
			else 
				if client["id"] != params[:client_id]
					clients << client["id"]
				end
			end
		end
		if params["controls"]
			# parse JSON parameters into a controls Hash
			controls = JSON.parse(params["controls"])
			# push new values to each touch panel
			clients.each do |client|
				Juggernaut.send_to_client("updateControls(#{JSON.generate(controls)}, true, false, '#{client}')", "#{client}")
			end
		else 
			# push javascript to be rendered to clients
			#Juggernaut.send_to_clients(params["javascript"], clients) # this doesn't work on Windows due to conflict with to_json method as defined the JSON gem and ActiveSupport
			clients.each do |client|
				Juggernaut.send_to_client(params["javascript"], "#{client}")
			end
    end
		render :nothing => true
	end

	# these methods are needed by Juggernaut but don't have any content because all they require is a valid HTTP 200 code back
	def push_subscription
		render :nothing => true
	end
	
	def push_logout
		render :nothing => true
	end

	# calls Juggernaut initializer to relaunch it on error	
	def push_relaunch
		require "config/initializers/launch_juggernaut.rb"
		render :nothing => true
	end
	
	# mControl methods		
	def sendCommand
		service = MControl_x0020_Web_x0020_ServiceSoap.new    
		service.sendCommand(SendCommand.new(params[:device_id], "#{params[:command]}"))
		sleeper
		render :nothing => true
	end
	
	def switchAmbientCanvas
		service = MControl_x0020_Web_x0020_ServiceSoap.new    
		# set intensity limit
		limit = 128
		if params[:command] == "ON"
			# this method also needs to trigger the ambientCanvas polling mechanism to start
			[1,3,5].each do |channel|
				service.sendCommand(SendCommand.new(DEVICES["ambient_canvas"], "SETPWM #{limit} #{channel}"))
				sleeper
			end
		elsif params[:command] == "OFF"
			# this method also needs to trigger the ambientCanvas polling mechanism to stop
			[1,3,5].each do |channel|
				service.sendCommand(SendCommand.new(DEVICES["ambient_canvas"], "SETPWM 0 #{channel}"))
				sleeper
			end
		end
		render :nothing => true
	end
	
	def ac_test
		# set params
		duty = params[:duty]
		channel = params[:channel]
		logger.debug "Duty: " + duty.to_s
		logger.debug "Channel: " + duty.to_s
		#set up service
		service = MControl_x0020_Web_x0020_ServiceSoap.new   
		# SET ALL to duty
		if channel == "ALL"
			(1..14).each do |i|
				#service.sendCommand(SendCommand.new(DEVICES["ambient_canvas"], "SETPWM " + duty  + " " + i))
				logger.debug "Sending command to AC: SETPWM " + duty + " " + i.to_s 
			end
		else
			#service.sendCommand(SendCommand.new(DEVICES["ambient_canvas"], "SETPWM " + duty  + " " + channel))
			logger.debug "Sending command to AC: SETPWM " + duty + " " + channel
		end
		render :layout => false
	end

	def soaptest
		#set up service
		@service = MControl_x0020_Web_x0020_ServiceSoap.new    
		# get XML Data Set to retrieve device list
		@dataset = Crack::XML.parse(@service.getXmlDataSet(0).getXmlDataSetResult)	 	
		render :layout => false
	end
	
	def datatest
		# get latest row of data from Beckhoff table
 		@dataset = Beckhoff.find_by_sql("SELECT * FROM beckhoff ORDER BY timeStamp DESC LIMIT 10")  		
		render :layout => "data"
	end
	
	def ambientcanvastest
		service = MControl_x0020_Web_x0020_ServiceSoap.new    
		service.sendCommand(SendCommand.new(DEVICES["ambient_canvas"], "SETPWM 0 1"))
		sleeper
		service.sendCommand(SendCommand.new(DEVICES["ambient_canvas"], "SETPWM 102 2"))
		sleeper
		service.sendCommand(SendCommand.new(DEVICES["ambient_canvas"], "SETPWM 204 3"))
		sleeper
		service.sendCommand(SendCommand.new(DEVICES["ambient_canvas"], "SETPWM 306 4"))
		sleeper
		service.sendCommand(SendCommand.new(DEVICES["ambient_canvas"], "SETPWM 408 5"))
		sleeper
		service.sendCommand(SendCommand.new(DEVICES["ambient_canvas"], "SETPWM 512 6"))
		sleeper
		render :layout => false
	end
	
	def solarthermaltest
		service = MControl_x0020_Web_x0020_ServiceSoap.new    	
		@stdl = service.sendCommand(SendCommand.new(DEVICES["solar_thermal"], "GET"))
		sleeper
		render :layout => false
	end
	
# 	def set_mode 
# 		#logger.debug "setting mode to " + Mode.find(params[:id]).name
# 		render :nothing => true
# 	end	
	
	def optimize_shades
		service = MControl_x0020_Web_x0020_ServiceSoap.new    
		# return exterior shades to optimized state	
		(1..30).each do |blind_id|
			# clear tilt of every shade section
			service.sendCommand(SendCommand.new(DEVICES["exterior_shades"], "CLEARTILT #{blind_id}"))
			sleeper
			# clear extension of even shades
			if (blind_id % 2 == 0) 
				service.sendCommand(SendCommand.new(DEVICES["exterior_shades"], "CLEAREXTENT #{blind_id}"))
				sleeper
			end
		end
		# start threaded timer to do a GET on the state (needs to be delayed since it takes a while for the shades to get there)
# 		Thread.new { 
#				sleep(60) # wait 60 seconds for shades to reach state
#				GETTILT and GETEXTENT on each
#				push updates to client
# 		} 		
		render :nothing => true
	end

	def set_optimization_delay
		logger.debug "optimization delay set to " + params[:delay]
		# update database
		
		# start threaded timer

		render :nothing => true
	end

	# used to buffer commands to mControl at 200ms intervals - prevents overlaod of the mControl buffer
	def sleeper
		sleep(0.4)
	end
	
		
end
