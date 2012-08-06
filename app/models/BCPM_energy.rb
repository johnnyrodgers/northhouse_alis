class BCPM_energy < ActiveRecord::Base
	set_table_name "bcpm_public_kwh"
	set_primary_key "timeStamp"
	
	establish_connection "datalogs"
end
