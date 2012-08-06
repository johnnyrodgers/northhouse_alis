class BCPM_power < ActiveRecord::Base
	set_table_name "bcpm_public_kw"
	set_primary_key "timeStamp"
	
	establish_connection "datalogs"
end
