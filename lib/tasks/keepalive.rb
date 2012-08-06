JUGGERNAUT_KEEPALIVE = Thread.new(Juggernaut) do
	RAILS_DEFAULT_LOGGER.debug "Launching Keepalive thread for Juggernaut."
	while true do
		Juggernaut.send_to_all("console.log('JUGGERNAUT: Keepalive sent at " + Time.now.strftime("%I:%M:%S%p (%m/%d/%Y)") + ", received at ' + new Date());")
		RAILS_DEFAULT_LOGGER.debug 'JUGGERNAUT: Keepalive sent at ' + Time.now.strftime("%I:%M:%S%p (%m/%d/%Y)")
		sleepInterval = 60*30 #30 minutes
		sleep sleepInterval
	end
end