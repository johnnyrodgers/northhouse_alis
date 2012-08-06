# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  require 'json/pure' # needed to parse JSON on Windows

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  #before_filter :generate_notifications, :get_weather # for some reason this doesn't work on the server - only calls methods after apache restart?
  
  before_filter :mobile_safari?, :disable_link_prefetching

	# detect Mobile Safari UA (iPhone or iPod Touch) and serve appropriate format - adapted from http://www.slashdotdash.net/2007/12/04/iphone-on-rails-creating-an-iphone-optimised-version-of-your-rails-site-using-iui-and-rails-2/ and http://railspikes.com/2007/11/8/iphone-subdomains-with-rails
	def mobile_safari?
		if request.subdomains.first == "iphone" || (RAILS_ENV != "production" && request.user_agent =~ /(Mobile\/.+Safari)/)
	    request.format = :iphone
	  end
	end
	
	def authenticate
		# login authentication code here		
	end
  
  def check_threads
  	logger.debug "check_threads called at " + Time.now.strftime("%I:%M:%S%p (%m/%d/%Y)")
		# JUGGERNAUT
		if JUGGERNAUT_SERVER.status.nil?
  		logger.debug "Juggernaut Server Thread crashed.  Relaunching..."
  		require "config/initializers/launch_juggernaut.rb"
  	else 
  		logger.debug "Juggernaut Server Thread Status: " + JUGGERNAUT_SERVER.status.to_s
  	end		
		if JUGGERNAUT_KEEPALIVE.status.nil?
  		logger.debug "Juggernaut Keepalive Thread crashed.  Relaunching..."
  		require "lib/tasks/keepalive.rb"  		
  	else 
  		logger.debug "Juggernaut Keepalive Thread Status: " + JUGGERNAUT_KEEPALIVE.status.to_s
  	end
		# SYNC_CONTROLS
		if SYNC_CONTROLS.status.nil?
  		logger.debug "Sync Controls Thread crashed.  Relaunching..."
  		require "lib/tasks/sync_controls.rb"  		
  	else 
  		logger.debug "Sync Controls Thread Status: " + SYNC_CONTROLS.status.to_s
  	end  	
  end  

  private
  	# disable link prefetching to avoid Modes being deleted in the DB (http://37signals.com/svn/archives2/google_web_accelerator_hey_not_so_fast_an_alert_for_web_app_designers.php)
  	# Fix for Rails by the DHH himself: http://snippets.dzone.com/posts/show/261
    def disable_link_prefetching
      if request.env["HTTP_X_MOZ"] == "prefetch" 
        logger.debug "prefetch detected: sending 403 Forbidden" 
        render_nothing "403 Forbidden" 
        return false
      end
    end  
end
