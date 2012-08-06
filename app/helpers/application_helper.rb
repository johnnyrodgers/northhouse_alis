# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

	def demo?
		return false
	end

	# sets the page title for a given view
	def title(page_title)
	  content_for(:title) { page_title }
	end
	
	# generates the secondary_nav links for each controller and returns them as an array of hashes
	def generate_secondary_nav
		# set secondary_nav according to controller
		case controller.controller_name
			when "community"
				secondary_nav = [ { :name => "Bulletin", :action => "bulletin" }, { :name => "Challenges", :action => "challenges" }, { :name => "Green Tips", :action => "tips" } ]
			when "modes"
		  	secondary_nav = [ { :name => "Presets", :controller => "modes" }, { :name => "House Schedule", :controller => "schedules" } ]
			when "schedules"
		  	secondary_nav = [ { :name => "Presets", :controller => "modes" }, { :name => "House Schedule", :controller => "schedules" } ]
			else
				# set seconday_nav to false for Overview and other pages without secondary navigation
				secondary_nav = false			
		end	
		return secondary_nav	
	end

	# retrieves system data from the database for display in the system data overlay
	def get_system_data
		@system_data = Hash.new			
		@system_data[:solar_irradiance] 			= { :value => 0, :units => "W/m<sup>2</sup>" } 
		@system_data[:solar_insolation] 			= { :value => 0, :units => "kWh" } 
		@system_data[:solar_thermal_energy]	 	= { :value => 0, :units => "kWh" }	
		@system_data[:solar_electric_power]	 	= { :value => 0, :units => "kW" }	
		@system_data[:solar_electric_energy] 	= { :value => 0, :units => "kWh" }	
		@system_data[:net_grid_power]					= { :value => 0, :units => "kW" }	
		@system_data[:net_grid_energy] 				= { :value => 0, :units => "kWh" }	
		@system_data[:water_consumption] 			= { :value => 0, :units => "L" }	
		@system_data[:hot_water_consumption]  = { :value => 0, :units => "L" }	
		@system_data[:cold_water_consumption]	= { :value => 0, :units => "L" }	
	end

	# retrieves 15 most recent notifications from the database
	def generate_notifications
		@notifications = Notification.find(:all, :order => "created_at DESC")
	end
		
	# gets current and forecasted weather from the Yahoo Weather API (http://developer.yahoo.com/weather/)
	def get_weather	
		# get weather for location
		# Vancouver, BC (CAXX0518)
		# Washington, DC (USDC0001)
	  @weather = YahooWeather::Client.new.lookup_location('CAXX0518', 'c')
		# GOOGLE WEATHER gives a 4 day forecast (including today)
		@forecast = GoogleWeather.new("Vancouver,BC") 
	end
	
	# converts a value from a given unit (Fahrenheit or Celsius) to it's opposite
	def convert_temp(value, fromUnits)	
		if fromUnits == "F"
			converted_value = (value - 32) / 1.8
		elsif fromUnits == "C"
			converted_value = (1.8 * value) + 32
		end		
		return converted_value.round
	end
	
	# accepts wind degrees (int) and returns a direction, broken down into 8 segments of the compass
	def convert_direction(degrees)
		direction = ""
		case degrees
			when 0..22
				direction = "N"
			when 23..67
				direction = "NE"
			when 68..112
				direction = "E"
			when 113..157		
				direction = "SE"
			when 158..202
				direction = "S"
			when 203..247
				direction = "SW"
			when 248..292
				direction = "W"
			when 293..337
				direction = "NW"			
			when 338..360
				direction = "N"
			else 
				direction = ""		
		end		
	end
	
	def money(amount)
		# round to two decimal places and add trailing 0s
		amount = sprintf("%.2f", amount)
		# remove trailing 00s if the number is a round $ (1.00 => 1)
		amount = amount.gsub(".00", "")
		return amount
	end

end
