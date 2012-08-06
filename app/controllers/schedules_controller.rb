class SchedulesController < ApplicationController

	def index
		@modes = Mode.all
		
		# GOOGLE CALENDAR IDS
		# HOME: a7enafki8fgh1a5d0d7t0nufug
		# SLEEP: mg5pv0mbb2uc5lukhe4klf0lh0
		# AWAY: i5qk3ggkbaqju6s34p35fne008
		#
		# FORMAT: src=ID%40group.calendar.google.com&amp;color=%23HEX&amp;
		
		# create presets array
		presets = {
			"Home" => { :id => "a7enafki8fgh1a5d0d7t0nufug", :hex => Mode.find_by_name("Home").colour },
			"Sleep" => { :id => "mg5pv0mbb2uc5lukhe4klf0lh0", :hex => Mode.find_by_name("Sleep").colour },
			"Away" => { :id => "i5qk3ggkbaqju6s34p35fne008", :hex => Mode.find_by_name("Away").colour }
		}		
		# presets
		@preset_src = String.new
		@checked_presets = Array.new
		if params[:presets]
			params[:presets].each do |preset|
				case preset[0]
					when "Home"
						@preset_src += "src=#{presets['Home'][:id]}%40group.calendar.google.com&amp;color=%23#{presets['Home'][:hex]}&amp;"
						@checked_presets << "Home"
					when "Sleep"
						@preset_src += "src=#{presets['Sleep'][:id]}%40group.calendar.google.com&amp;color=%23#{presets['Sleep'][:hex]}&amp;"
						@checked_presets << "Sleep"
					when "Away"
						@preset_src += "src=#{presets['Away'][:id]}%40group.calendar.google.com&amp;color=%23#{presets['Away'][:hex]}&amp;"
						@checked_presets << "Away"
				end				
			end			
		else
			# if no presets params are available, it's a fresh request so we show all scheduled presets
			presets.each do |key, value|
				@preset_src += "src=#{presets[key][:id]}%40group.calendar.google.com&amp;color=%23#{presets[key][:hex]}&amp;"
				@checked_presets << key
			end
		end
		
		# create calendars hash
		calendars = {
			"personal" => { :id => "northhouse.resident%40gmail.com", :hex => "1B887A" },
			"work" => { :id => "3m7c3usuo8f27tn376pk3mv87g", :hex => "4E5D6C" }
		}
		# calendars
		@calendar_src = String.new
		@checked_calendars = Array.new
		if params[:calendars]
			params[:calendars].each do |calendar|
				case calendar[0]
					when "personal"
						@calendar_src += "src=#{calendars['personal'][:id]}&amp;color=%23#{calendars['personal'][:hex]}&amp;"
						@checked_calendars << "personal"
					when "work"
						@calendar_src += "src=#{calendars['work'][:id]}%40group.calendar.google.com&amp;color=%23#{calendars['work'][:hex]}&amp;"
						@checked_calendars << "work"
				end				
			end
		else
			# if no calendar params are available, it's a fresh request so we show all calendars
			@calendar_src = "src=#{calendars['personal'][:id]}&amp;color=%23#{calendars['personal'][:hex]}&amp;"
			@calendar_src += "src=#{calendars['work'][:id]}%40group.calendar.google.com&amp;color=%23#{calendars['work'][:hex]}&amp;"
			calendars.each do |key, value|
				@checked_calendars << key
			end
		end
		
	end

end
