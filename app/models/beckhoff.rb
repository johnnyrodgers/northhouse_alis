class Beckhoff < ActiveRecord::Base
	set_table_name "beckhoff"
	set_primary_key "timeStamp"
	
	establish_connection "datalogs"
end
