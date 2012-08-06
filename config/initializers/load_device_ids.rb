# # set up service
# service = MControl_x0020_Web_x0020_ServiceSoap.new    
# # get XML Data Set to retrieve device list
# dataset = Crack::XML.parse(service.getXmlDataSet(0).getXmlDataSetResult)
# # create DEVICES constant
# DEVICES = Hash.new
# # iterate over devices and add to hash
# dataset["mControlDatabase"]["Devices"]["Device"].each do |device|
# 	DEVICES[device["name"]] = device["id"]
# end 
# local
DEVICES = YAML.load_file(RAILS_ROOT + "/config/devices.yml");