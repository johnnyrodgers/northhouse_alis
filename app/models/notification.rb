class Notification < ActiveRecord::Base

 	# Validations
 	validates_presence_of :message, :priority
 
 	def priority_as_text
 		case self.priority
			when 0
				"error"
			when 1
				"important"
			when 2
				"notification"
			when 3
				"tip"	
		end 	
 	end
 
end
