class MainController < ApplicationController

	def display_notifications
		logger.debug "display_notifications called"
	end

	def manage_notifications
		logger.debug "manage_notifications called"
	end
	
	def overview
    if mobile_safari?
    	redirect_to :controller => "mobile"
    end
    
    # ENERGY
    # energy cost (from Quick Facts notes)
    earn_rate = 0.80
    pay_rate = 0.10
    # net energy today, expressed as $    
    production = BCPM_energy.find_by_sql("SELECT solar_kwh FROM bcpm_public_kwh ORDER BY timeStamp DESC LIMIT 1")[0].solar_kwh
    producion = production - BCPM_energy.find_by_sql("SELECT solar_kwh FROM bcpm_public_kwh WHERE timeStamp BETWEEN '#{(Date.today - 1).strftime('%Y-%m-%d 23:59:00')}' AND '#{(Date.today - 1).strftime('%Y-%m-%d 23:59:59')}' ORDER BY timeStamp DESC LIMIT 1")[0].solar_kwh
    consumption = BCPM_energy.find_by_sql("SELECT grid_tie_kwh FROM bcpm_public_kwh ORDER BY timeStamp DESC LIMIT 1")[0].grid_tie_kwh
    consumption = consumption - BCPM_energy.find_by_sql("SELECT grid_tie_kwh FROM bcpm_public_kwh WHERE timeStamp BETWEEN '#{(Date.today - 1).strftime('%Y-%m-%d 23:59:00')}' AND '#{(Date.today - 1).strftime('%Y-%m-%d 23:59:59')}' ORDER BY timeStamp DESC LIMIT 1")[0].grid_tie_kwh
    difference = production - consumption
    if difference >= 0
    	@energy_earnings = difference * earn_rate
    else 
    	@energy_earnings = difference * pay_rate
    end
    
    @energy_earnings = 1.37
    
    
    # difference from this time yesterday
#     yesterday_production = BCPM_energy.find_by_sql("SELECT solar_kwh FROM bcpm_public_kwh WHERE timeStamp BETWEEN '#{(Date.today - 1).strftime('%Y-%m-%d 23:59:00')}' AND '#{(Date.today - 1).strftime('%Y-%m-%d 23:59:59')}' ORDER BY timeStamp DESC LIMIT 1")[0].solar_kwh
#     yesterday_consumption = BCPM_energy.find_by_sql("SELECT grid_tie_kwh FROM bcpm_public_kwh WHERE timeStamp BETWEEN '#{(Date.today - 1).strftime('%Y-%m-%d 23:59:00')}' AND '#{(Date.today - 1).strftime('%Y-%m-%d 23:59:59')}' ORDER BY timeStamp DESC LIMIT 1")[0].grid_tie_kwh    
    @energy_earnings_difference = 0.65 #(yesterday_production - yesterday_consumption) * rate
    
#     @energy_graph_data = [] 
#     (0..24).each do |i|
# #     	production = BCPM_power.find_by_sql("SELECT solar_kwh FROM bcpm_public_kwh WHERE timeStamp BETWEEN '#{Time.now.advance(:hours => -i).strftime("%Y-%m-%d %H:%M:00")}' AND '#{Time.now.advance(:hours => -i).strftime("%Y-%m-%d %H:%M:59")}' ORDER BY timeStamp DESC LIMIT 1")[0].solar_kwh
# #     	consumption = BCPM_power.find_by_sql("SELECT grid_tie_kwh FROM bcpm_public_kwh WHERE timeStamp BETWEEN '#{Time.now.advance(:hours => -i).strftime("%Y-%m-%d %H:%M:00")}' AND '#{Time.now.advance(:hours => -i).strftime("%Y-%m-%d %H:%M:59")}' ORDER BY timeStamp DESC LIMIT 1")[0].grid_tie_kwh
# 			time = Time.now
#     	production = BCPM_power.find_by_sql("SELECT solar_kwh FROM bcpm_public_kwh WHERE timeStamp BETWEEN '#{time.advance(:hours => -i).strftime("%Y-%m-%d %H:%M:00")}' AND '#{time.advance(:hours => -i).strftime("%Y-%m-%d %H:%M:59")}' ORDER BY timeStamp DESC LIMIT 1") #[0].solar_kwh
#     	production = Float(production[0].solar_kwh)
# #    	logger.debug "PRODUCTION: " + production.to_s
#     	consumption = BCPM_power.find_by_sql("SELECT grid_tie_kwh FROM bcpm_public_kwh WHERE timeStamp BETWEEN '#{time.advance(:hours => -i).strftime("%Y-%m-%d %H:%M:00")}' AND '#{time.advance(:hours => -i).strftime("%Y-%m-%d %H:%M:59")}' ORDER BY timeStamp DESC LIMIT 1") #[0].grid_tie_kwh
#     	consumption = Float(consumption[0].grid_tie_kwh)
# #    	logger.debug "CONSUMPTION: " + consumption.to_s
# 			if !production.nil? && !consumption.nil?
# 	    	@energy_graph_data << production - consumption
# 	    else
# 	    	@energy_graph_data << 0
# 	    end
#     end
#    logger.debug @energy_graph_data.to_yaml
    
		@energy_graph_data = [1.5, 0, -0.5, -1.2, -1.1, -1.3, -1.6, -1.8, -1.6, -1.3, -0.4, 0.2, 1, 1, 3, 6, 6.5, 8, 7.8, 7.6, 5.6, 5.2, 3.5]	    
    
    # WATER
    
    #CHALLENGE
    # get cumulative produced energy since start of contest from BCPM logs
  	@energy_produced = 80.0
    # calculate days since contest start
    days_since_contest_start = (Date.today - Date.parse("2009-10-06")).to_i
    # create array to be populated
    solar_kwh_readings = Array.new
    # get values for each day at midnight
    (1..days_since_contest_start).each do |day|
    	#logger.debug "SQL QUERY: SELECT solar_kwh_kwh FROM bcpm_public_kwh WHERE timeStamp BETWEEN '#{(Date.today - day).strftime('%Y-%m-%d 23:59:00')}' AND '#{(Date.today - day).strftime('%Y-%m-%d 23:59:59')}' ORDER BY timeStamp DESC LIMIT 1"
    	 reading = BCPM_energy.find_by_sql("SELECT solar_kwh FROM bcpm_public_kwh WHERE timeStamp BETWEEN '#{(Date.today - day).strftime('%Y-%m-%d 23:59:00')}' AND '#{(Date.today - day).strftime('%Y-%m-%d 23:59:59')}' ORDER BY timeStamp DESC LIMIT 1")[0]
			 if !reading.nil?
	    	 solar_kwh_readings << reading
	    end
    end    
    # check for readings
    if (!solar_kwh_readings.empty?)
	    # add up readings
	    solar_kwh_readings.each do |reading|
	    	logger.debug "adding : " + reading.solar_kwh.to_s
	    	@energy_produced += reading.solar_kwh
	    end
	  end
    
    # set production goal
    @production_goal = 300.0 # as a float!
    
	end
	
end
