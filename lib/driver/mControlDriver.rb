require 'lib/driver/mControl.rb'

require 'soap/rpc/driver'

class MControl_x0020_Web_x0020_ServiceSoap < ::SOAP::RPC::Driver
  #DefaultEndpointUrl = "http://sr-westhouse0.iat.sfu.ca/mcontrol/mserver.asmx"
  DefaultEndpointUrl = "http://142.58.183.199/mcontrol/mserver.asmx"
  MappingRegistry = ::SOAP::Mapping::Registry.new

  Methods = [
    [ "http://embeddedautomation.com/webservices/mControl/Ping",
      "ping",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "Ping"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "PingResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/GetSessionID",
      "getSessionID",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetSessionID"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetSessionIDResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/MessageToServer",
      "messageToServer",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "MessageToServer"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "MessageToServerResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/GetQueuedEvents",
      "getQueuedEvents",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetQueuedEvents"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetQueuedEventsResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/GetAllQueuedEvents",
      "getAllQueuedEvents",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetAllQueuedEvents"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetAllQueuedEventsResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/GetVersion",
      "getVersion",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetVersion"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetVersionResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/GetWebVersion",
      "getWebVersion",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetWebVersion"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetWebVersionResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/IsNewUpdateAvail",
      "isNewUpdateAvail",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "IsNewUpdateAvail"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "IsNewUpdateAvailResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/GetRegisteredUser",
      "getRegisteredUser",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetRegisteredUser"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetRegisteredUserResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/AutomationCommand",
      "automationCommand",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AutomationCommand"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AutomationCommandResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/RunMacro",
      "runMacro",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "RunMacro"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "RunMacroResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/PauseMacro",
      "pauseMacro",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "PauseMacro"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "PauseMacroResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/StopMacro",
      "stopMacro",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "StopMacro"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "StopMacroResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/StartIrLearning",
      "startIrLearning",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "StartIrLearning"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "StartIrLearningResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/StopIrLearning",
      "stopIrLearning",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "StopIrLearning"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "StopIrLearningResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/TestIrCode",
      "testIrCode",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "TestIrCode"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "TestIrCodeResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/BeginDeviceEnrollment",
      "beginDeviceEnrollment",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "BeginDeviceEnrollment"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "BeginDeviceEnrollmentResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/AbortDeviceEnrollment",
      "abortDeviceEnrollment",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AbortDeviceEnrollment"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AbortDeviceEnrollmentResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/BeginDeviceUnenrollment",
      "beginDeviceUnenrollment",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "BeginDeviceUnenrollment"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "BeginDeviceUnenrollmentResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/AbortDeviceUnenrollment",
      "abortDeviceUnenrollment",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AbortDeviceUnenrollment"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AbortDeviceUnenrollmentResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/AbortUnenrollment",
      "abortUnenrollment",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AbortUnenrollment"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AbortUnenrollmentResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/GetBuildNumber",
      "getBuildNumber",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetBuildNumber"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetBuildNumberResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/GetXmlDataSet",
      "getXmlDataSet",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetXmlDataSet"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetXmlDataSetResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/SendCommand",
      "sendCommand",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "SendCommand"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "SendCommandResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/AddZone",
      "addZone",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AddZone"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AddZoneResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/UpdateZone",
      "updateZone",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "UpdateZone"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "UpdateZoneResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/DeleteZone",
      "deleteZone",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "DeleteZone"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "DeleteZoneResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/SaveZoneOrder",
      "saveZoneOrder",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "SaveZoneOrder"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "SaveZoneOrderResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/AddDevice",
      "addDevice",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AddDevice"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AddDeviceResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/UpdateDevice",
      "updateDevice",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "UpdateDevice"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "UpdateDeviceResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/DeleteDevice",
      "deleteDevice",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "DeleteDevice"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "DeleteDeviceResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/SaveDeviceOrder",
      "saveDeviceOrder",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "SaveDeviceOrder"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "SaveDeviceOrderResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/MoveDeviceToNewZone",
      "moveDeviceToNewZone",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "MoveDeviceToNewZone"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "MoveDeviceToNewZoneResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/AddMacro",
      "addMacro",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AddMacro"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AddMacroResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/UpdateMacro",
      "updateMacro",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "UpdateMacro"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "UpdateMacroResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/DeleteMacro",
      "deleteMacro",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "DeleteMacro"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "DeleteMacroResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/SaveMacroEnab",
      "saveMacroEnab",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "SaveMacroEnab"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "SaveMacroEnabResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/AddTrigger",
      "addTrigger",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AddTrigger"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AddTriggerResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/UpdateTrigger",
      "updateTrigger",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "UpdateTrigger"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "UpdateTriggerResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/DeleteTrigger",
      "deleteTrigger",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "DeleteTrigger"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "DeleteTriggerResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/SaveTriggerOrder",
      "saveTriggerOrder",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "SaveTriggerOrder"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "SaveTriggerOrderResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/AddCondition",
      "addCondition",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AddCondition"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AddConditionResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/UpdateCondition",
      "updateCondition",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "UpdateCondition"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "UpdateConditionResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/DeleteCondition",
      "deleteCondition",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "DeleteCondition"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "DeleteConditionResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/AddAction",
      "addAction",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AddAction"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AddActionResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/UpdateAction",
      "updateAction",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "UpdateAction"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "UpdateActionResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/DeleteAction",
      "deleteAction",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "DeleteAction"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "DeleteActionResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/SaveActionOrder",
      "saveActionOrder",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "SaveActionOrder"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "SaveActionOrderResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/AddCommand",
      "addCommand",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AddCommand"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AddCommandResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/UpdateCommand",
      "updateCommand",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "UpdateCommand"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "UpdateCommandResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/DeleteCommand",
      "deleteCommand",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "DeleteCommand"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "DeleteCommandResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/AddConfigGroup",
      "addConfigGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AddConfigGroup"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AddConfigGroupResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/AddConfigItem",
      "addConfigItem",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AddConfigItem"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "AddConfigItemResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/SetConfigItemValue",
      "setConfigItemValue",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "SetConfigItemValue"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "SetConfigItemValueResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/IsDeleteZoneAllowed",
      "isDeleteZoneAllowed",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "IsDeleteZoneAllowed"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "IsDeleteZoneAllowedResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/IsDeleteDeviceAllowed",
      "isDeleteDeviceAllowed",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "IsDeleteDeviceAllowed"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "IsDeleteDeviceAllowedResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/IsDeleteCommandAllowed",
      "isDeleteCommandAllowed",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "IsDeleteCommandAllowed"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "IsDeleteCommandAllowedResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/IsDeleteMacroAllowed",
      "isDeleteMacroAllowed",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "IsDeleteMacroAllowed"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "IsDeleteMacroAllowedResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/GetCamFilesList",
      "getCamFilesList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetCamFilesList"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetCamFilesListResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/DeleteCamFiles",
      "deleteCamFiles",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "DeleteCamFiles"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "DeleteCamFilesResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/BeginMultiUpdateProcess",
      "beginMultiUpdateProcess",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "BeginMultiUpdateProcess"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "BeginMultiUpdateProcessResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/EndMultiUpdateProcess",
      "endMultiUpdateProcess",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "EndMultiUpdateProcess"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "EndMultiUpdateProcessResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/EnableAction",
      "enableAction",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "EnableAction"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "EnableActionResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/EnableMacro",
      "enableMacro",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "EnableMacro"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "EnableMacroResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/EnableTrigger",
      "enableTrigger",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "EnableTrigger"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "EnableTriggerResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/SaveMacroOrder",
      "saveMacroOrder",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "SaveMacroOrder"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "SaveMacroOrderResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/GetUserAccessLevel",
      "getUserAccessLevel",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetUserAccessLevel"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetUserAccessLevelResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/SendActivationKey",
      "sendActivationKey",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "SendActivationKey"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "SendActivationKeyResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/DoWebActivation",
      "doWebActivation",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "DoWebActivation"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "DoWebActivationResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/DoWebDeactivation",
      "doWebDeactivation",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "DoWebDeactivation"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "DoWebDeactivationResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/GetActivationString",
      "getActivationString",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetActivationString"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "GetActivationStringResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://embeddedautomation.com/webservices/mControl/PerformWebUpdate",
      "performWebUpdate",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "PerformWebUpdate"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://embeddedautomation.com/webservices/mControl", "PerformWebUpdateResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = MappingRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

