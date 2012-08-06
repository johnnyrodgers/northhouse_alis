class MobileController < ApplicationController

  before_filter :mobile_safari?  
  
  def index
  
  	# CONTROLS
		@modes = Mode.find(:all)
		@active_mode = Mode.find(1);
		@current_temp = 20;
		@current_RH = 50;

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

		# NOTIFICATIONS
		@notifications = Notification.find(:all, :order => "created_at DESC")


  	respond_to do |format|
			format.iphone
		end
  end

	def slidertest
		@modes = Mode.find(:all)
		@active_mode = Mode.find(2);
		logger.debug @active_mode.settings.inspect
  	respond_to do |format|
			format.iphone
		end
	end
	
end
