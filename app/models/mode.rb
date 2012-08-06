class Mode < ActiveRecord::Base

 	# Validations
 	validates_presence_of :name
 
 	def settings
 		# create settings hash
	 	settings = Hash.new 	 	
		# populate settings
		settings = {
# 			:mode => self.id,
# 			:hvac => { 
# 				:temperature => self.temperature
# 			},
			:lights => {
				:LeftLight => self.LeftLight,
				:RightLight => self.RightLight,
			}
		}
	end
 
end
