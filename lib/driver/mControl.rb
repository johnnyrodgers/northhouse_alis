require 'xsd/qname'

# {http://embeddedautomation.com/webservices/mControl}Ping
class Ping
  @@schema_type = "Ping"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["callerName", "SOAP::SOAPString"]]

  attr_accessor :callerName

  def initialize(callerName = nil)
    @callerName = callerName
  end
end

# {http://embeddedautomation.com/webservices/mControl}PingResponse
class PingResponse
  @@schema_type = "PingResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["pingResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "PingResult")]]]

  def PingResult
    @pingResult
  end

  def PingResult=(value)
    @pingResult = value
  end

  def initialize(pingResult = nil)
    @pingResult = pingResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetSessionID
class GetSessionID
  @@schema_type = "GetSessionID"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetSessionIDResponse
class GetSessionIDResponse
  @@schema_type = "GetSessionIDResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["getSessionIDResult", ["SOAP::SOAPString", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "GetSessionIDResult")]]]

  def GetSessionIDResult
    @getSessionIDResult
  end

  def GetSessionIDResult=(value)
    @getSessionIDResult = value
  end

  def initialize(getSessionIDResult = nil)
    @getSessionIDResult = getSessionIDResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}MessageToServer
class MessageToServer
  @@schema_type = "MessageToServer"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["msg", "AuServerEventMsg"]]

  attr_accessor :msg

  def initialize(msg = nil)
    @msg = msg
  end
end

# {http://embeddedautomation.com/webservices/mControl}MessageToServerResponse
class MessageToServerResponse
  @@schema_type = "MessageToServerResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetQueuedEvents
class GetQueuedEvents
  @@schema_type = "GetQueuedEvents"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetQueuedEventsResponse
class GetQueuedEventsResponse
  @@schema_type = "GetQueuedEventsResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["getQueuedEventsResult", ["SOAP::SOAPString", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "GetQueuedEventsResult")]]]

  def GetQueuedEventsResult
    @getQueuedEventsResult
  end

  def GetQueuedEventsResult=(value)
    @getQueuedEventsResult = value
  end

  def initialize(getQueuedEventsResult = nil)
    @getQueuedEventsResult = getQueuedEventsResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetAllQueuedEvents
class GetAllQueuedEvents
  @@schema_type = "GetAllQueuedEvents"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetAllQueuedEventsResponse
class GetAllQueuedEventsResponse
  @@schema_type = "GetAllQueuedEventsResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["getAllQueuedEventsResult", ["ArrayOfString", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "GetAllQueuedEventsResult")]]]

  def GetAllQueuedEventsResult
    @getAllQueuedEventsResult
  end

  def GetAllQueuedEventsResult=(value)
    @getAllQueuedEventsResult = value
  end

  def initialize(getAllQueuedEventsResult = nil)
    @getAllQueuedEventsResult = getAllQueuedEventsResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetVersion
class GetVersion
  @@schema_type = "GetVersion"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetVersionResponse
class GetVersionResponse
  @@schema_type = "GetVersionResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["getVersionResult", ["SOAP::SOAPString", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "GetVersionResult")]]]

  def GetVersionResult
    @getVersionResult
  end

  def GetVersionResult=(value)
    @getVersionResult = value
  end

  def initialize(getVersionResult = nil)
    @getVersionResult = getVersionResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetWebVersion
class GetWebVersion
  @@schema_type = "GetWebVersion"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetWebVersionResponse
class GetWebVersionResponse
  @@schema_type = "GetWebVersionResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["getWebVersionResult", ["SOAP::SOAPString", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "GetWebVersionResult")]]]

  def GetWebVersionResult
    @getWebVersionResult
  end

  def GetWebVersionResult=(value)
    @getWebVersionResult = value
  end

  def initialize(getWebVersionResult = nil)
    @getWebVersionResult = getWebVersionResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}IsNewUpdateAvail
class IsNewUpdateAvail
  @@schema_type = "IsNewUpdateAvail"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}IsNewUpdateAvailResponse
class IsNewUpdateAvailResponse
  @@schema_type = "IsNewUpdateAvailResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["isNewUpdateAvailResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "IsNewUpdateAvailResult")]]]

  def IsNewUpdateAvailResult
    @isNewUpdateAvailResult
  end

  def IsNewUpdateAvailResult=(value)
    @isNewUpdateAvailResult = value
  end

  def initialize(isNewUpdateAvailResult = nil)
    @isNewUpdateAvailResult = isNewUpdateAvailResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetRegisteredUser
class GetRegisteredUser
  @@schema_type = "GetRegisteredUser"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetRegisteredUserResponse
class GetRegisteredUserResponse
  @@schema_type = "GetRegisteredUserResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["getRegisteredUserResult", ["SOAP::SOAPString", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "GetRegisteredUserResult")]]]

  def GetRegisteredUserResult
    @getRegisteredUserResult
  end

  def GetRegisteredUserResult=(value)
    @getRegisteredUserResult = value
  end

  def initialize(getRegisteredUserResult = nil)
    @getRegisteredUserResult = getRegisteredUserResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}AutomationCommand
class AutomationCommand
  @@schema_type = "AutomationCommand"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["deviceId", "SOAP::SOAPInt"], ["command", "SOAP::SOAPString"]]

  attr_accessor :deviceId
  attr_accessor :command

  def initialize(deviceId = nil, command = nil)
    @deviceId = deviceId
    @command = command
  end
end

# {http://embeddedautomation.com/webservices/mControl}AutomationCommandResponse
class AutomationCommandResponse
  @@schema_type = "AutomationCommandResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}RunMacro
class RunMacro
  @@schema_type = "RunMacro"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["macroId", "SOAP::SOAPInt"]]

  attr_accessor :macroId

  def initialize(macroId = nil)
    @macroId = macroId
  end
end

# {http://embeddedautomation.com/webservices/mControl}RunMacroResponse
class RunMacroResponse
  @@schema_type = "RunMacroResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["runMacroResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "RunMacroResult")]]]

  def RunMacroResult
    @runMacroResult
  end

  def RunMacroResult=(value)
    @runMacroResult = value
  end

  def initialize(runMacroResult = nil)
    @runMacroResult = runMacroResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}PauseMacro
class PauseMacro
  @@schema_type = "PauseMacro"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["macroId", "SOAP::SOAPInt"]]

  attr_accessor :macroId

  def initialize(macroId = nil)
    @macroId = macroId
  end
end

# {http://embeddedautomation.com/webservices/mControl}PauseMacroResponse
class PauseMacroResponse
  @@schema_type = "PauseMacroResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["pauseMacroResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "PauseMacroResult")]]]

  def PauseMacroResult
    @pauseMacroResult
  end

  def PauseMacroResult=(value)
    @pauseMacroResult = value
  end

  def initialize(pauseMacroResult = nil)
    @pauseMacroResult = pauseMacroResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}StopMacro
class StopMacro
  @@schema_type = "StopMacro"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["macroId", "SOAP::SOAPInt"]]

  attr_accessor :macroId

  def initialize(macroId = nil)
    @macroId = macroId
  end
end

# {http://embeddedautomation.com/webservices/mControl}StopMacroResponse
class StopMacroResponse
  @@schema_type = "StopMacroResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["stopMacroResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "StopMacroResult")]]]

  def StopMacroResult
    @stopMacroResult
  end

  def StopMacroResult=(value)
    @stopMacroResult = value
  end

  def initialize(stopMacroResult = nil)
    @stopMacroResult = stopMacroResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}StartIrLearning
class StartIrLearning
  @@schema_type = "StartIrLearning"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["deviceId", "SOAP::SOAPInt"]]

  attr_accessor :deviceId

  def initialize(deviceId = nil)
    @deviceId = deviceId
  end
end

# {http://embeddedautomation.com/webservices/mControl}StartIrLearningResponse
class StartIrLearningResponse
  @@schema_type = "StartIrLearningResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["startIrLearningResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "StartIrLearningResult")]]]

  def StartIrLearningResult
    @startIrLearningResult
  end

  def StartIrLearningResult=(value)
    @startIrLearningResult = value
  end

  def initialize(startIrLearningResult = nil)
    @startIrLearningResult = startIrLearningResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}StopIrLearning
class StopIrLearning
  @@schema_type = "StopIrLearning"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["deviceId", "SOAP::SOAPInt"]]

  attr_accessor :deviceId

  def initialize(deviceId = nil)
    @deviceId = deviceId
  end
end

# {http://embeddedautomation.com/webservices/mControl}StopIrLearningResponse
class StopIrLearningResponse
  @@schema_type = "StopIrLearningResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["stopIrLearningResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "StopIrLearningResult")]]]

  def StopIrLearningResult
    @stopIrLearningResult
  end

  def StopIrLearningResult=(value)
    @stopIrLearningResult = value
  end

  def initialize(stopIrLearningResult = nil)
    @stopIrLearningResult = stopIrLearningResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}TestIrCode
class TestIrCode
  @@schema_type = "TestIrCode"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["deviceId", "SOAP::SOAPInt"], ["ccfCode", "SOAP::SOAPString"]]

  attr_accessor :deviceId
  attr_accessor :ccfCode

  def initialize(deviceId = nil, ccfCode = nil)
    @deviceId = deviceId
    @ccfCode = ccfCode
  end
end

# {http://embeddedautomation.com/webservices/mControl}TestIrCodeResponse
class TestIrCodeResponse
  @@schema_type = "TestIrCodeResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["testIrCodeResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "TestIrCodeResult")]]]

  def TestIrCodeResult
    @testIrCodeResult
  end

  def TestIrCodeResult=(value)
    @testIrCodeResult = value
  end

  def initialize(testIrCodeResult = nil)
    @testIrCodeResult = testIrCodeResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}BeginDeviceEnrollment
class BeginDeviceEnrollment
  @@schema_type = "BeginDeviceEnrollment"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["driverName", "SOAP::SOAPString"]]

  attr_accessor :driverName

  def initialize(driverName = nil)
    @driverName = driverName
  end
end

# {http://embeddedautomation.com/webservices/mControl}BeginDeviceEnrollmentResponse
class BeginDeviceEnrollmentResponse
  @@schema_type = "BeginDeviceEnrollmentResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["beginDeviceEnrollmentResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "BeginDeviceEnrollmentResult")]]]

  def BeginDeviceEnrollmentResult
    @beginDeviceEnrollmentResult
  end

  def BeginDeviceEnrollmentResult=(value)
    @beginDeviceEnrollmentResult = value
  end

  def initialize(beginDeviceEnrollmentResult = nil)
    @beginDeviceEnrollmentResult = beginDeviceEnrollmentResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}AbortDeviceEnrollment
class AbortDeviceEnrollment
  @@schema_type = "AbortDeviceEnrollment"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["driverName", "SOAP::SOAPString"]]

  attr_accessor :driverName

  def initialize(driverName = nil)
    @driverName = driverName
  end
end

# {http://embeddedautomation.com/webservices/mControl}AbortDeviceEnrollmentResponse
class AbortDeviceEnrollmentResponse
  @@schema_type = "AbortDeviceEnrollmentResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}BeginDeviceUnenrollment
class BeginDeviceUnenrollment
  @@schema_type = "BeginDeviceUnenrollment"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["driverName", "SOAP::SOAPString"]]

  attr_accessor :driverName

  def initialize(driverName = nil)
    @driverName = driverName
  end
end

# {http://embeddedautomation.com/webservices/mControl}BeginDeviceUnenrollmentResponse
class BeginDeviceUnenrollmentResponse
  @@schema_type = "BeginDeviceUnenrollmentResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["beginDeviceUnenrollmentResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "BeginDeviceUnenrollmentResult")]]]

  def BeginDeviceUnenrollmentResult
    @beginDeviceUnenrollmentResult
  end

  def BeginDeviceUnenrollmentResult=(value)
    @beginDeviceUnenrollmentResult = value
  end

  def initialize(beginDeviceUnenrollmentResult = nil)
    @beginDeviceUnenrollmentResult = beginDeviceUnenrollmentResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}AbortDeviceUnenrollment
class AbortDeviceUnenrollment
  @@schema_type = "AbortDeviceUnenrollment"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["baseDriverName", "SOAP::SOAPString"]]

  attr_accessor :baseDriverName

  def initialize(baseDriverName = nil)
    @baseDriverName = baseDriverName
  end
end

# {http://embeddedautomation.com/webservices/mControl}AbortDeviceUnenrollmentResponse
class AbortDeviceUnenrollmentResponse
  @@schema_type = "AbortDeviceUnenrollmentResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}AbortUnenrollment
class AbortUnenrollment
  @@schema_type = "AbortUnenrollment"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["driverName", "SOAP::SOAPString"]]

  attr_accessor :driverName

  def initialize(driverName = nil)
    @driverName = driverName
  end
end

# {http://embeddedautomation.com/webservices/mControl}AbortUnenrollmentResponse
class AbortUnenrollmentResponse
  @@schema_type = "AbortUnenrollmentResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetBuildNumber
class GetBuildNumber
  @@schema_type = "GetBuildNumber"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetBuildNumberResponse
class GetBuildNumberResponse
  @@schema_type = "GetBuildNumberResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["getBuildNumberResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "GetBuildNumberResult")]]]

  def GetBuildNumberResult
    @getBuildNumberResult
  end

  def GetBuildNumberResult=(value)
    @getBuildNumberResult = value
  end

  def initialize(getBuildNumberResult = nil)
    @getBuildNumberResult = getBuildNumberResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetXmlDataSet
class GetXmlDataSet
  @@schema_type = "GetXmlDataSet"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetXmlDataSetResponse
class GetXmlDataSetResponse
  @@schema_type = "GetXmlDataSetResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["getXmlDataSetResult", ["SOAP::SOAPString", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "GetXmlDataSetResult")]]]

  def GetXmlDataSetResult
    @getXmlDataSetResult
  end

  def GetXmlDataSetResult=(value)
    @getXmlDataSetResult = value
  end

  def initialize(getXmlDataSetResult = nil)
    @getXmlDataSetResult = getXmlDataSetResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}SendCommand
class SendCommand
  @@schema_type = "SendCommand"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["devId", "SOAP::SOAPInt"], ["command", "SOAP::SOAPString"]]

  attr_accessor :devId
  attr_accessor :command

  def initialize(devId = nil, command = nil)
    @devId = devId
    @command = command
  end
end

# {http://embeddedautomation.com/webservices/mControl}SendCommandResponse
class SendCommandResponse
  @@schema_type = "SendCommandResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}AddZone
class AddZone
  @@schema_type = "AddZone"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["name", "SOAP::SOAPString"], ["image", "SOAP::SOAPString"]]

  attr_accessor :name
  attr_accessor :image

  def initialize(name = nil, image = nil)
    @name = name
    @image = image
  end
end

# {http://embeddedautomation.com/webservices/mControl}AddZoneResponse
class AddZoneResponse
  @@schema_type = "AddZoneResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["addZoneResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "AddZoneResult")]]]

  def AddZoneResult
    @addZoneResult
  end

  def AddZoneResult=(value)
    @addZoneResult = value
  end

  def initialize(addZoneResult = nil)
    @addZoneResult = addZoneResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}UpdateZone
class UpdateZone
  @@schema_type = "UpdateZone"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["zoneId", "SOAP::SOAPInt"], ["name", "SOAP::SOAPString"], ["image", "SOAP::SOAPString"]]

  attr_accessor :zoneId
  attr_accessor :name
  attr_accessor :image

  def initialize(zoneId = nil, name = nil, image = nil)
    @zoneId = zoneId
    @name = name
    @image = image
  end
end

# {http://embeddedautomation.com/webservices/mControl}UpdateZoneResponse
class UpdateZoneResponse
  @@schema_type = "UpdateZoneResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["updateZoneResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "UpdateZoneResult")]]]

  def UpdateZoneResult
    @updateZoneResult
  end

  def UpdateZoneResult=(value)
    @updateZoneResult = value
  end

  def initialize(updateZoneResult = nil)
    @updateZoneResult = updateZoneResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}DeleteZone
class DeleteZone
  @@schema_type = "DeleteZone"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["zoneId", "SOAP::SOAPInt"]]

  attr_accessor :zoneId

  def initialize(zoneId = nil)
    @zoneId = zoneId
  end
end

# {http://embeddedautomation.com/webservices/mControl}DeleteZoneResponse
class DeleteZoneResponse
  @@schema_type = "DeleteZoneResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["deleteZoneResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "DeleteZoneResult")]]]

  def DeleteZoneResult
    @deleteZoneResult
  end

  def DeleteZoneResult=(value)
    @deleteZoneResult = value
  end

  def initialize(deleteZoneResult = nil)
    @deleteZoneResult = deleteZoneResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}SaveZoneOrder
class SaveZoneOrder
  @@schema_type = "SaveZoneOrder"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["orderingStr", "SOAP::SOAPString"]]

  attr_accessor :orderingStr

  def initialize(orderingStr = nil)
    @orderingStr = orderingStr
  end
end

# {http://embeddedautomation.com/webservices/mControl}SaveZoneOrderResponse
class SaveZoneOrderResponse
  @@schema_type = "SaveZoneOrderResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["saveZoneOrderResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "SaveZoneOrderResult")]]]

  def SaveZoneOrderResult
    @saveZoneOrderResult
  end

  def SaveZoneOrderResult=(value)
    @saveZoneOrderResult = value
  end

  def initialize(saveZoneOrderResult = nil)
    @saveZoneOrderResult = saveZoneOrderResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}AddDevice
class AddDevice
  @@schema_type = "AddDevice"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["name", "SOAP::SOAPString"], ["address", "SOAP::SOAPString"], ["v_module", ["SOAP::SOAPString", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "module")]], ["image", "SOAP::SOAPString"], ["zoneId", "SOAP::SOAPInt"], ["adapter", "SOAP::SOAPString"], ["protocol", "SOAP::SOAPString"], ["notify", "SOAP::SOAPString"], ["options", "SOAP::SOAPString"]]

  attr_accessor :name
  attr_accessor :address
  attr_accessor :image
  attr_accessor :zoneId
  attr_accessor :adapter
  attr_accessor :protocol
  attr_accessor :notify
  attr_accessor :options

  def module
    @v_module
  end

  def module=(value)
    @v_module = value
  end

  def initialize(name = nil, address = nil, v_module = nil, image = nil, zoneId = nil, adapter = nil, protocol = nil, notify = nil, options = nil)
    @name = name
    @address = address
    @v_module = v_module
    @image = image
    @zoneId = zoneId
    @adapter = adapter
    @protocol = protocol
    @notify = notify
    @options = options
  end
end

# {http://embeddedautomation.com/webservices/mControl}AddDeviceResponse
class AddDeviceResponse
  @@schema_type = "AddDeviceResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["addDeviceResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "AddDeviceResult")]]]

  def AddDeviceResult
    @addDeviceResult
  end

  def AddDeviceResult=(value)
    @addDeviceResult = value
  end

  def initialize(addDeviceResult = nil)
    @addDeviceResult = addDeviceResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}UpdateDevice
class UpdateDevice
  @@schema_type = "UpdateDevice"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["deviceId", "SOAP::SOAPInt"], ["name", "SOAP::SOAPString"], ["address", "SOAP::SOAPString"], ["v_module", ["SOAP::SOAPString", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "module")]], ["image", "SOAP::SOAPString"], ["zoneId", "SOAP::SOAPInt"], ["adapter", "SOAP::SOAPString"], ["protocol", "SOAP::SOAPString"], ["notify", "SOAP::SOAPString"], ["options", "SOAP::SOAPString"]]

  attr_accessor :deviceId
  attr_accessor :name
  attr_accessor :address
  attr_accessor :image
  attr_accessor :zoneId
  attr_accessor :adapter
  attr_accessor :protocol
  attr_accessor :notify
  attr_accessor :options

  def module
    @v_module
  end

  def module=(value)
    @v_module = value
  end

  def initialize(deviceId = nil, name = nil, address = nil, v_module = nil, image = nil, zoneId = nil, adapter = nil, protocol = nil, notify = nil, options = nil)
    @deviceId = deviceId
    @name = name
    @address = address
    @v_module = v_module
    @image = image
    @zoneId = zoneId
    @adapter = adapter
    @protocol = protocol
    @notify = notify
    @options = options
  end
end

# {http://embeddedautomation.com/webservices/mControl}UpdateDeviceResponse
class UpdateDeviceResponse
  @@schema_type = "UpdateDeviceResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["updateDeviceResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "UpdateDeviceResult")]]]

  def UpdateDeviceResult
    @updateDeviceResult
  end

  def UpdateDeviceResult=(value)
    @updateDeviceResult = value
  end

  def initialize(updateDeviceResult = nil)
    @updateDeviceResult = updateDeviceResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}DeleteDevice
class DeleteDevice
  @@schema_type = "DeleteDevice"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["deviceId", "SOAP::SOAPInt"]]

  attr_accessor :deviceId

  def initialize(deviceId = nil)
    @deviceId = deviceId
  end
end

# {http://embeddedautomation.com/webservices/mControl}DeleteDeviceResponse
class DeleteDeviceResponse
  @@schema_type = "DeleteDeviceResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["deleteDeviceResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "DeleteDeviceResult")]]]

  def DeleteDeviceResult
    @deleteDeviceResult
  end

  def DeleteDeviceResult=(value)
    @deleteDeviceResult = value
  end

  def initialize(deleteDeviceResult = nil)
    @deleteDeviceResult = deleteDeviceResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}SaveDeviceOrder
class SaveDeviceOrder
  @@schema_type = "SaveDeviceOrder"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["zoneId", "SOAP::SOAPInt"], ["orderingStr", "SOAP::SOAPString"]]

  attr_accessor :zoneId
  attr_accessor :orderingStr

  def initialize(zoneId = nil, orderingStr = nil)
    @zoneId = zoneId
    @orderingStr = orderingStr
  end
end

# {http://embeddedautomation.com/webservices/mControl}SaveDeviceOrderResponse
class SaveDeviceOrderResponse
  @@schema_type = "SaveDeviceOrderResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["saveDeviceOrderResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "SaveDeviceOrderResult")]]]

  def SaveDeviceOrderResult
    @saveDeviceOrderResult
  end

  def SaveDeviceOrderResult=(value)
    @saveDeviceOrderResult = value
  end

  def initialize(saveDeviceOrderResult = nil)
    @saveDeviceOrderResult = saveDeviceOrderResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}MoveDeviceToNewZone
class MoveDeviceToNewZone
  @@schema_type = "MoveDeviceToNewZone"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["deviceId", "SOAP::SOAPInt"], ["newZoneId", "SOAP::SOAPInt"]]

  attr_accessor :deviceId
  attr_accessor :newZoneId

  def initialize(deviceId = nil, newZoneId = nil)
    @deviceId = deviceId
    @newZoneId = newZoneId
  end
end

# {http://embeddedautomation.com/webservices/mControl}MoveDeviceToNewZoneResponse
class MoveDeviceToNewZoneResponse
  @@schema_type = "MoveDeviceToNewZoneResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["moveDeviceToNewZoneResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "MoveDeviceToNewZoneResult")]]]

  def MoveDeviceToNewZoneResult
    @moveDeviceToNewZoneResult
  end

  def MoveDeviceToNewZoneResult=(value)
    @moveDeviceToNewZoneResult = value
  end

  def initialize(moveDeviceToNewZoneResult = nil)
    @moveDeviceToNewZoneResult = moveDeviceToNewZoneResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}AddMacro
class AddMacro
  @@schema_type = "AddMacro"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["name", "SOAP::SOAPString"], ["zoneId", "SOAP::SOAPInt"], ["image", "SOAP::SOAPString"], ["manual", "SOAP::SOAPBoolean"]]

  attr_accessor :name
  attr_accessor :zoneId
  attr_accessor :image
  attr_accessor :manual

  def initialize(name = nil, zoneId = nil, image = nil, manual = nil)
    @name = name
    @zoneId = zoneId
    @image = image
    @manual = manual
  end
end

# {http://embeddedautomation.com/webservices/mControl}AddMacroResponse
class AddMacroResponse
  @@schema_type = "AddMacroResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["addMacroResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "AddMacroResult")]]]

  def AddMacroResult
    @addMacroResult
  end

  def AddMacroResult=(value)
    @addMacroResult = value
  end

  def initialize(addMacroResult = nil)
    @addMacroResult = addMacroResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}UpdateMacro
class UpdateMacro
  @@schema_type = "UpdateMacro"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["macroId", "SOAP::SOAPInt"], ["name", "SOAP::SOAPString"], ["zoneId", "SOAP::SOAPInt"], ["image", "SOAP::SOAPString"], ["manual", "SOAP::SOAPBoolean"]]

  attr_accessor :macroId
  attr_accessor :name
  attr_accessor :zoneId
  attr_accessor :image
  attr_accessor :manual

  def initialize(macroId = nil, name = nil, zoneId = nil, image = nil, manual = nil)
    @macroId = macroId
    @name = name
    @zoneId = zoneId
    @image = image
    @manual = manual
  end
end

# {http://embeddedautomation.com/webservices/mControl}UpdateMacroResponse
class UpdateMacroResponse
  @@schema_type = "UpdateMacroResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["updateMacroResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "UpdateMacroResult")]]]

  def UpdateMacroResult
    @updateMacroResult
  end

  def UpdateMacroResult=(value)
    @updateMacroResult = value
  end

  def initialize(updateMacroResult = nil)
    @updateMacroResult = updateMacroResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}DeleteMacro
class DeleteMacro
  @@schema_type = "DeleteMacro"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["macroId", "SOAP::SOAPInt"]]

  attr_accessor :macroId

  def initialize(macroId = nil)
    @macroId = macroId
  end
end

# {http://embeddedautomation.com/webservices/mControl}DeleteMacroResponse
class DeleteMacroResponse
  @@schema_type = "DeleteMacroResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["deleteMacroResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "DeleteMacroResult")]]]

  def DeleteMacroResult
    @deleteMacroResult
  end

  def DeleteMacroResult=(value)
    @deleteMacroResult = value
  end

  def initialize(deleteMacroResult = nil)
    @deleteMacroResult = deleteMacroResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}SaveMacroEnab
class SaveMacroEnab
  @@schema_type = "SaveMacroEnab"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["macrosIds", "SOAP::SOAPString"], ["enab", "SOAP::SOAPString"], ["orderingStr", "SOAP::SOAPString"]]

  attr_accessor :macrosIds
  attr_accessor :enab
  attr_accessor :orderingStr

  def initialize(macrosIds = nil, enab = nil, orderingStr = nil)
    @macrosIds = macrosIds
    @enab = enab
    @orderingStr = orderingStr
  end
end

# {http://embeddedautomation.com/webservices/mControl}SaveMacroEnabResponse
class SaveMacroEnabResponse
  @@schema_type = "SaveMacroEnabResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["saveMacroEnabResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "SaveMacroEnabResult")]]]

  def SaveMacroEnabResult
    @saveMacroEnabResult
  end

  def SaveMacroEnabResult=(value)
    @saveMacroEnabResult = value
  end

  def initialize(saveMacroEnabResult = nil)
    @saveMacroEnabResult = saveMacroEnabResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}AddTrigger
class AddTrigger
  @@schema_type = "AddTrigger"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["name", "SOAP::SOAPString"], ["macroId", "SOAP::SOAPInt"]]

  attr_accessor :name
  attr_accessor :macroId

  def initialize(name = nil, macroId = nil)
    @name = name
    @macroId = macroId
  end
end

# {http://embeddedautomation.com/webservices/mControl}AddTriggerResponse
class AddTriggerResponse
  @@schema_type = "AddTriggerResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["addTriggerResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "AddTriggerResult")]]]

  def AddTriggerResult
    @addTriggerResult
  end

  def AddTriggerResult=(value)
    @addTriggerResult = value
  end

  def initialize(addTriggerResult = nil)
    @addTriggerResult = addTriggerResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}UpdateTrigger
class UpdateTrigger
  @@schema_type = "UpdateTrigger"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["trigId", "SOAP::SOAPInt"], ["name", "SOAP::SOAPString"], ["macroId", "SOAP::SOAPInt"]]

  attr_accessor :trigId
  attr_accessor :name
  attr_accessor :macroId

  def initialize(trigId = nil, name = nil, macroId = nil)
    @trigId = trigId
    @name = name
    @macroId = macroId
  end
end

# {http://embeddedautomation.com/webservices/mControl}UpdateTriggerResponse
class UpdateTriggerResponse
  @@schema_type = "UpdateTriggerResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["updateTriggerResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "UpdateTriggerResult")]]]

  def UpdateTriggerResult
    @updateTriggerResult
  end

  def UpdateTriggerResult=(value)
    @updateTriggerResult = value
  end

  def initialize(updateTriggerResult = nil)
    @updateTriggerResult = updateTriggerResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}DeleteTrigger
class DeleteTrigger
  @@schema_type = "DeleteTrigger"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["trigId", "SOAP::SOAPInt"]]

  attr_accessor :trigId

  def initialize(trigId = nil)
    @trigId = trigId
  end
end

# {http://embeddedautomation.com/webservices/mControl}DeleteTriggerResponse
class DeleteTriggerResponse
  @@schema_type = "DeleteTriggerResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["deleteTriggerResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "DeleteTriggerResult")]]]

  def DeleteTriggerResult
    @deleteTriggerResult
  end

  def DeleteTriggerResult=(value)
    @deleteTriggerResult = value
  end

  def initialize(deleteTriggerResult = nil)
    @deleteTriggerResult = deleteTriggerResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}SaveTriggerOrder
class SaveTriggerOrder
  @@schema_type = "SaveTriggerOrder"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["macroId", "SOAP::SOAPInt"], ["ordededTrigIds", "SOAP::SOAPString"]]

  attr_accessor :macroId
  attr_accessor :ordededTrigIds

  def initialize(macroId = nil, ordededTrigIds = nil)
    @macroId = macroId
    @ordededTrigIds = ordededTrigIds
  end
end

# {http://embeddedautomation.com/webservices/mControl}SaveTriggerOrderResponse
class SaveTriggerOrderResponse
  @@schema_type = "SaveTriggerOrderResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["saveTriggerOrderResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "SaveTriggerOrderResult")]]]

  def SaveTriggerOrderResult
    @saveTriggerOrderResult
  end

  def SaveTriggerOrderResult=(value)
    @saveTriggerOrderResult = value
  end

  def initialize(saveTriggerOrderResult = nil)
    @saveTriggerOrderResult = saveTriggerOrderResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}AddCondition
class AddCondition
  @@schema_type = "AddCondition"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["condType", "SOAP::SOAPString"], ["trigId", "SOAP::SOAPInt"], ["condExpr", "SOAP::SOAPString"]]

  attr_accessor :condType
  attr_accessor :trigId
  attr_accessor :condExpr

  def initialize(condType = nil, trigId = nil, condExpr = nil)
    @condType = condType
    @trigId = trigId
    @condExpr = condExpr
  end
end

# {http://embeddedautomation.com/webservices/mControl}AddConditionResponse
class AddConditionResponse
  @@schema_type = "AddConditionResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["addConditionResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "AddConditionResult")]]]

  def AddConditionResult
    @addConditionResult
  end

  def AddConditionResult=(value)
    @addConditionResult = value
  end

  def initialize(addConditionResult = nil)
    @addConditionResult = addConditionResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}UpdateCondition
class UpdateCondition
  @@schema_type = "UpdateCondition"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["condId", "SOAP::SOAPInt"], ["condType", "SOAP::SOAPString"], ["trigId", "SOAP::SOAPInt"], ["condExpr", "SOAP::SOAPString"]]

  attr_accessor :condId
  attr_accessor :condType
  attr_accessor :trigId
  attr_accessor :condExpr

  def initialize(condId = nil, condType = nil, trigId = nil, condExpr = nil)
    @condId = condId
    @condType = condType
    @trigId = trigId
    @condExpr = condExpr
  end
end

# {http://embeddedautomation.com/webservices/mControl}UpdateConditionResponse
class UpdateConditionResponse
  @@schema_type = "UpdateConditionResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["updateConditionResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "UpdateConditionResult")]]]

  def UpdateConditionResult
    @updateConditionResult
  end

  def UpdateConditionResult=(value)
    @updateConditionResult = value
  end

  def initialize(updateConditionResult = nil)
    @updateConditionResult = updateConditionResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}DeleteCondition
class DeleteCondition
  @@schema_type = "DeleteCondition"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["condId", "SOAP::SOAPInt"]]

  attr_accessor :condId

  def initialize(condId = nil)
    @condId = condId
  end
end

# {http://embeddedautomation.com/webservices/mControl}DeleteConditionResponse
class DeleteConditionResponse
  @@schema_type = "DeleteConditionResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["deleteConditionResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "DeleteConditionResult")]]]

  def DeleteConditionResult
    @deleteConditionResult
  end

  def DeleteConditionResult=(value)
    @deleteConditionResult = value
  end

  def initialize(deleteConditionResult = nil)
    @deleteConditionResult = deleteConditionResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}AddAction
class AddAction
  @@schema_type = "AddAction"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["type", "SOAP::SOAPString"], ["macroId", "SOAP::SOAPInt"], ["command", "SOAP::SOAPString"]]

  attr_accessor :type
  attr_accessor :macroId
  attr_accessor :command

  def initialize(type = nil, macroId = nil, command = nil)
    @type = type
    @macroId = macroId
    @command = command
  end
end

# {http://embeddedautomation.com/webservices/mControl}AddActionResponse
class AddActionResponse
  @@schema_type = "AddActionResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["addActionResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "AddActionResult")]]]

  def AddActionResult
    @addActionResult
  end

  def AddActionResult=(value)
    @addActionResult = value
  end

  def initialize(addActionResult = nil)
    @addActionResult = addActionResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}UpdateAction
class UpdateAction
  @@schema_type = "UpdateAction"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["actionId", "SOAP::SOAPInt"], ["type", "SOAP::SOAPString"], ["macroId", "SOAP::SOAPInt"], ["command", "SOAP::SOAPString"]]

  attr_accessor :actionId
  attr_accessor :type
  attr_accessor :macroId
  attr_accessor :command

  def initialize(actionId = nil, type = nil, macroId = nil, command = nil)
    @actionId = actionId
    @type = type
    @macroId = macroId
    @command = command
  end
end

# {http://embeddedautomation.com/webservices/mControl}UpdateActionResponse
class UpdateActionResponse
  @@schema_type = "UpdateActionResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["updateActionResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "UpdateActionResult")]]]

  def UpdateActionResult
    @updateActionResult
  end

  def UpdateActionResult=(value)
    @updateActionResult = value
  end

  def initialize(updateActionResult = nil)
    @updateActionResult = updateActionResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}DeleteAction
class DeleteAction
  @@schema_type = "DeleteAction"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["actionId", "SOAP::SOAPInt"]]

  attr_accessor :actionId

  def initialize(actionId = nil)
    @actionId = actionId
  end
end

# {http://embeddedautomation.com/webservices/mControl}DeleteActionResponse
class DeleteActionResponse
  @@schema_type = "DeleteActionResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["deleteActionResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "DeleteActionResult")]]]

  def DeleteActionResult
    @deleteActionResult
  end

  def DeleteActionResult=(value)
    @deleteActionResult = value
  end

  def initialize(deleteActionResult = nil)
    @deleteActionResult = deleteActionResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}SaveActionOrder
class SaveActionOrder
  @@schema_type = "SaveActionOrder"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["macroId", "SOAP::SOAPInt"], ["ordededActionsIds", "SOAP::SOAPString"]]

  attr_accessor :macroId
  attr_accessor :ordededActionsIds

  def initialize(macroId = nil, ordededActionsIds = nil)
    @macroId = macroId
    @ordededActionsIds = ordededActionsIds
  end
end

# {http://embeddedautomation.com/webservices/mControl}SaveActionOrderResponse
class SaveActionOrderResponse
  @@schema_type = "SaveActionOrderResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["saveActionOrderResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "SaveActionOrderResult")]]]

  def SaveActionOrderResult
    @saveActionOrderResult
  end

  def SaveActionOrderResult=(value)
    @saveActionOrderResult = value
  end

  def initialize(saveActionOrderResult = nil)
    @saveActionOrderResult = saveActionOrderResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}AddCommand
class AddCommand
  @@schema_type = "AddCommand"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["name", "SOAP::SOAPString"], ["ofType", "SOAP::SOAPUnsignedShort"], ["typeName", "SOAP::SOAPString"], ["command", "SOAP::SOAPString"]]

  attr_accessor :name
  attr_accessor :ofType
  attr_accessor :typeName
  attr_accessor :command

  def initialize(name = nil, ofType = nil, typeName = nil, command = nil)
    @name = name
    @ofType = ofType
    @typeName = typeName
    @command = command
  end
end

# {http://embeddedautomation.com/webservices/mControl}AddCommandResponse
class AddCommandResponse
  @@schema_type = "AddCommandResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["addCommandResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "AddCommandResult")]]]

  def AddCommandResult
    @addCommandResult
  end

  def AddCommandResult=(value)
    @addCommandResult = value
  end

  def initialize(addCommandResult = nil)
    @addCommandResult = addCommandResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}UpdateCommand
class UpdateCommand
  @@schema_type = "UpdateCommand"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["cmdId", "SOAP::SOAPInt"], ["name", "SOAP::SOAPString"], ["ofType", "SOAP::SOAPUnsignedShort"], ["typeName", "SOAP::SOAPString"], ["command", "SOAP::SOAPString"]]

  attr_accessor :cmdId
  attr_accessor :name
  attr_accessor :ofType
  attr_accessor :typeName
  attr_accessor :command

  def initialize(cmdId = nil, name = nil, ofType = nil, typeName = nil, command = nil)
    @cmdId = cmdId
    @name = name
    @ofType = ofType
    @typeName = typeName
    @command = command
  end
end

# {http://embeddedautomation.com/webservices/mControl}UpdateCommandResponse
class UpdateCommandResponse
  @@schema_type = "UpdateCommandResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["updateCommandResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "UpdateCommandResult")]]]

  def UpdateCommandResult
    @updateCommandResult
  end

  def UpdateCommandResult=(value)
    @updateCommandResult = value
  end

  def initialize(updateCommandResult = nil)
    @updateCommandResult = updateCommandResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}DeleteCommand
class DeleteCommand
  @@schema_type = "DeleteCommand"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["cmdId", "SOAP::SOAPInt"]]

  attr_accessor :cmdId

  def initialize(cmdId = nil)
    @cmdId = cmdId
  end
end

# {http://embeddedautomation.com/webservices/mControl}DeleteCommandResponse
class DeleteCommandResponse
  @@schema_type = "DeleteCommandResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["deleteCommandResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "DeleteCommandResult")]]]

  def DeleteCommandResult
    @deleteCommandResult
  end

  def DeleteCommandResult=(value)
    @deleteCommandResult = value
  end

  def initialize(deleteCommandResult = nil)
    @deleteCommandResult = deleteCommandResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}AddConfigGroup
class AddConfigGroup
  @@schema_type = "AddConfigGroup"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["title", "SOAP::SOAPString"], ["description", "SOAP::SOAPString"], ["visible", "SOAP::SOAPBoolean"]]

  attr_accessor :title
  attr_accessor :description
  attr_accessor :visible

  def initialize(title = nil, description = nil, visible = nil)
    @title = title
    @description = description
    @visible = visible
  end
end

# {http://embeddedautomation.com/webservices/mControl}AddConfigGroupResponse
class AddConfigGroupResponse
  @@schema_type = "AddConfigGroupResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["addConfigGroupResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "AddConfigGroupResult")]]]

  def AddConfigGroupResult
    @addConfigGroupResult
  end

  def AddConfigGroupResult=(value)
    @addConfigGroupResult = value
  end

  def initialize(addConfigGroupResult = nil)
    @addConfigGroupResult = addConfigGroupResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}AddConfigItem
class AddConfigItem
  @@schema_type = "AddConfigItem"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["groupId", "SOAP::SOAPInt"], ["accessRight", "SOAP::SOAPUnsignedShort"], ["dataType", "SOAP::SOAPUnsignedShort"], ["title", "SOAP::SOAPString"], ["key", "SOAP::SOAPString"], ["val", "SOAP::SOAPString"], ["description", "SOAP::SOAPString"], ["selectList", "SOAP::SOAPString"]]

  attr_accessor :groupId
  attr_accessor :accessRight
  attr_accessor :dataType
  attr_accessor :title
  attr_accessor :key
  attr_accessor :val
  attr_accessor :description
  attr_accessor :selectList

  def initialize(groupId = nil, accessRight = nil, dataType = nil, title = nil, key = nil, val = nil, description = nil, selectList = nil)
    @groupId = groupId
    @accessRight = accessRight
    @dataType = dataType
    @title = title
    @key = key
    @val = val
    @description = description
    @selectList = selectList
  end
end

# {http://embeddedautomation.com/webservices/mControl}AddConfigItemResponse
class AddConfigItemResponse
  @@schema_type = "AddConfigItemResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["addConfigItemResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "AddConfigItemResult")]]]

  def AddConfigItemResult
    @addConfigItemResult
  end

  def AddConfigItemResult=(value)
    @addConfigItemResult = value
  end

  def initialize(addConfigItemResult = nil)
    @addConfigItemResult = addConfigItemResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}SetConfigItemValue
class SetConfigItemValue
  @@schema_type = "SetConfigItemValue"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["groupId", "SOAP::SOAPInt"], ["key", "SOAP::SOAPString"], ["val", "SOAP::SOAPString"]]

  attr_accessor :groupId
  attr_accessor :key
  attr_accessor :val

  def initialize(groupId = nil, key = nil, val = nil)
    @groupId = groupId
    @key = key
    @val = val
  end
end

# {http://embeddedautomation.com/webservices/mControl}SetConfigItemValueResponse
class SetConfigItemValueResponse
  @@schema_type = "SetConfigItemValueResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["setConfigItemValueResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "SetConfigItemValueResult")]]]

  def SetConfigItemValueResult
    @setConfigItemValueResult
  end

  def SetConfigItemValueResult=(value)
    @setConfigItemValueResult = value
  end

  def initialize(setConfigItemValueResult = nil)
    @setConfigItemValueResult = setConfigItemValueResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}IsDeleteZoneAllowed
class IsDeleteZoneAllowed
  @@schema_type = "IsDeleteZoneAllowed"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["zoneId", "SOAP::SOAPInt"]]

  attr_accessor :zoneId

  def initialize(zoneId = nil)
    @zoneId = zoneId
  end
end

# {http://embeddedautomation.com/webservices/mControl}IsDeleteZoneAllowedResponse
class IsDeleteZoneAllowedResponse
  @@schema_type = "IsDeleteZoneAllowedResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["isDeleteZoneAllowedResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "IsDeleteZoneAllowedResult")]]]

  def IsDeleteZoneAllowedResult
    @isDeleteZoneAllowedResult
  end

  def IsDeleteZoneAllowedResult=(value)
    @isDeleteZoneAllowedResult = value
  end

  def initialize(isDeleteZoneAllowedResult = nil)
    @isDeleteZoneAllowedResult = isDeleteZoneAllowedResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}IsDeleteDeviceAllowed
class IsDeleteDeviceAllowed
  @@schema_type = "IsDeleteDeviceAllowed"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["deviceId", "SOAP::SOAPInt"]]

  attr_accessor :deviceId

  def initialize(deviceId = nil)
    @deviceId = deviceId
  end
end

# {http://embeddedautomation.com/webservices/mControl}IsDeleteDeviceAllowedResponse
class IsDeleteDeviceAllowedResponse
  @@schema_type = "IsDeleteDeviceAllowedResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["isDeleteDeviceAllowedResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "IsDeleteDeviceAllowedResult")]]]

  def IsDeleteDeviceAllowedResult
    @isDeleteDeviceAllowedResult
  end

  def IsDeleteDeviceAllowedResult=(value)
    @isDeleteDeviceAllowedResult = value
  end

  def initialize(isDeleteDeviceAllowedResult = nil)
    @isDeleteDeviceAllowedResult = isDeleteDeviceAllowedResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}IsDeleteCommandAllowed
class IsDeleteCommandAllowed
  @@schema_type = "IsDeleteCommandAllowed"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["cmdId", "SOAP::SOAPInt"]]

  attr_accessor :cmdId

  def initialize(cmdId = nil)
    @cmdId = cmdId
  end
end

# {http://embeddedautomation.com/webservices/mControl}IsDeleteCommandAllowedResponse
class IsDeleteCommandAllowedResponse
  @@schema_type = "IsDeleteCommandAllowedResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["isDeleteCommandAllowedResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "IsDeleteCommandAllowedResult")]]]

  def IsDeleteCommandAllowedResult
    @isDeleteCommandAllowedResult
  end

  def IsDeleteCommandAllowedResult=(value)
    @isDeleteCommandAllowedResult = value
  end

  def initialize(isDeleteCommandAllowedResult = nil)
    @isDeleteCommandAllowedResult = isDeleteCommandAllowedResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}IsDeleteMacroAllowed
class IsDeleteMacroAllowed
  @@schema_type = "IsDeleteMacroAllowed"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["macroId", "SOAP::SOAPInt"]]

  attr_accessor :macroId

  def initialize(macroId = nil)
    @macroId = macroId
  end
end

# {http://embeddedautomation.com/webservices/mControl}IsDeleteMacroAllowedResponse
class IsDeleteMacroAllowedResponse
  @@schema_type = "IsDeleteMacroAllowedResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["isDeleteMacroAllowedResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "IsDeleteMacroAllowedResult")]]]

  def IsDeleteMacroAllowedResult
    @isDeleteMacroAllowedResult
  end

  def IsDeleteMacroAllowedResult=(value)
    @isDeleteMacroAllowedResult = value
  end

  def initialize(isDeleteMacroAllowedResult = nil)
    @isDeleteMacroAllowedResult = isDeleteMacroAllowedResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetCamFilesList
class GetCamFilesList
  @@schema_type = "GetCamFilesList"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["adapterBaseName", "SOAP::SOAPString"], ["withinHours", "SOAP::SOAPInt"], ["imgTypeStr", "SOAP::SOAPString"]]

  attr_accessor :adapterBaseName
  attr_accessor :withinHours
  attr_accessor :imgTypeStr

  def initialize(adapterBaseName = nil, withinHours = nil, imgTypeStr = nil)
    @adapterBaseName = adapterBaseName
    @withinHours = withinHours
    @imgTypeStr = imgTypeStr
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetCamFilesListResponse
class GetCamFilesListResponse
  @@schema_type = "GetCamFilesListResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["getCamFilesListResult", ["ArrayOfString", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "GetCamFilesListResult")]]]

  def GetCamFilesListResult
    @getCamFilesListResult
  end

  def GetCamFilesListResult=(value)
    @getCamFilesListResult = value
  end

  def initialize(getCamFilesListResult = nil)
    @getCamFilesListResult = getCamFilesListResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}DeleteCamFiles
class DeleteCamFiles
  @@schema_type = "DeleteCamFiles"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["adapterBaseName", "SOAP::SOAPString"], ["filesToDelete", "ArrayOfString"]]

  attr_accessor :adapterBaseName
  attr_accessor :filesToDelete

  def initialize(adapterBaseName = nil, filesToDelete = nil)
    @adapterBaseName = adapterBaseName
    @filesToDelete = filesToDelete
  end
end

# {http://embeddedautomation.com/webservices/mControl}DeleteCamFilesResponse
class DeleteCamFilesResponse
  @@schema_type = "DeleteCamFilesResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}BeginMultiUpdateProcess
class BeginMultiUpdateProcess
  @@schema_type = "BeginMultiUpdateProcess"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}BeginMultiUpdateProcessResponse
class BeginMultiUpdateProcessResponse
  @@schema_type = "BeginMultiUpdateProcessResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}EndMultiUpdateProcess
class EndMultiUpdateProcess
  @@schema_type = "EndMultiUpdateProcess"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}EndMultiUpdateProcessResponse
class EndMultiUpdateProcessResponse
  @@schema_type = "EndMultiUpdateProcessResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}EnableAction
class EnableAction
  @@schema_type = "EnableAction"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["actionId", "SOAP::SOAPInt"], ["enabled", "SOAP::SOAPBoolean"]]

  attr_accessor :actionId
  attr_accessor :enabled

  def initialize(actionId = nil, enabled = nil)
    @actionId = actionId
    @enabled = enabled
  end
end

# {http://embeddedautomation.com/webservices/mControl}EnableActionResponse
class EnableActionResponse
  @@schema_type = "EnableActionResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["enableActionResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "EnableActionResult")]]]

  def EnableActionResult
    @enableActionResult
  end

  def EnableActionResult=(value)
    @enableActionResult = value
  end

  def initialize(enableActionResult = nil)
    @enableActionResult = enableActionResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}EnableMacro
class EnableMacro
  @@schema_type = "EnableMacro"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["macroId", "SOAP::SOAPInt"], ["enabled", "SOAP::SOAPBoolean"]]

  attr_accessor :macroId
  attr_accessor :enabled

  def initialize(macroId = nil, enabled = nil)
    @macroId = macroId
    @enabled = enabled
  end
end

# {http://embeddedautomation.com/webservices/mControl}EnableMacroResponse
class EnableMacroResponse
  @@schema_type = "EnableMacroResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["enableMacroResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "EnableMacroResult")]]]

  def EnableMacroResult
    @enableMacroResult
  end

  def EnableMacroResult=(value)
    @enableMacroResult = value
  end

  def initialize(enableMacroResult = nil)
    @enableMacroResult = enableMacroResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}EnableTrigger
class EnableTrigger
  @@schema_type = "EnableTrigger"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["triggerId", "SOAP::SOAPInt"], ["enabled", "SOAP::SOAPBoolean"]]

  attr_accessor :triggerId
  attr_accessor :enabled

  def initialize(triggerId = nil, enabled = nil)
    @triggerId = triggerId
    @enabled = enabled
  end
end

# {http://embeddedautomation.com/webservices/mControl}EnableTriggerResponse
class EnableTriggerResponse
  @@schema_type = "EnableTriggerResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["enableTriggerResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "EnableTriggerResult")]]]

  def EnableTriggerResult
    @enableTriggerResult
  end

  def EnableTriggerResult=(value)
    @enableTriggerResult = value
  end

  def initialize(enableTriggerResult = nil)
    @enableTriggerResult = enableTriggerResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}SaveMacroOrder
class SaveMacroOrder
  @@schema_type = "SaveMacroOrder"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["ordededMacrosIds", "SOAP::SOAPString"]]

  attr_accessor :ordededMacrosIds

  def initialize(ordededMacrosIds = nil)
    @ordededMacrosIds = ordededMacrosIds
  end
end

# {http://embeddedautomation.com/webservices/mControl}SaveMacroOrderResponse
class SaveMacroOrderResponse
  @@schema_type = "SaveMacroOrderResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["saveMacroOrderResult", ["SOAP::SOAPBoolean", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "SaveMacroOrderResult")]]]

  def SaveMacroOrderResult
    @saveMacroOrderResult
  end

  def SaveMacroOrderResult=(value)
    @saveMacroOrderResult = value
  end

  def initialize(saveMacroOrderResult = nil)
    @saveMacroOrderResult = saveMacroOrderResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetUserAccessLevel
class GetUserAccessLevel
  @@schema_type = "GetUserAccessLevel"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["userId", "SOAP::SOAPString"], ["pin", "SOAP::SOAPString"]]

  attr_accessor :userId
  attr_accessor :pin

  def initialize(userId = nil, pin = nil)
    @userId = userId
    @pin = pin
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetUserAccessLevelResponse
class GetUserAccessLevelResponse
  @@schema_type = "GetUserAccessLevelResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["getUserAccessLevelResult", ["SOAP::SOAPString", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "GetUserAccessLevelResult")]]]

  def GetUserAccessLevelResult
    @getUserAccessLevelResult
  end

  def GetUserAccessLevelResult=(value)
    @getUserAccessLevelResult = value
  end

  def initialize(getUserAccessLevelResult = nil)
    @getUserAccessLevelResult = getUserAccessLevelResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}SendActivationKey
class SendActivationKey
  @@schema_type = "SendActivationKey"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["activationKey", "SOAP::SOAPString"]]

  attr_accessor :activationKey

  def initialize(activationKey = nil)
    @activationKey = activationKey
  end
end

# {http://embeddedautomation.com/webservices/mControl}SendActivationKeyResponse
class SendActivationKeyResponse
  @@schema_type = "SendActivationKeyResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["sendActivationKeyResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "SendActivationKeyResult")]]]

  def SendActivationKeyResult
    @sendActivationKeyResult
  end

  def SendActivationKeyResult=(value)
    @sendActivationKeyResult = value
  end

  def initialize(sendActivationKeyResult = nil)
    @sendActivationKeyResult = sendActivationKeyResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}DoWebActivation
class DoWebActivation
  @@schema_type = "DoWebActivation"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}DoWebActivationResponse
class DoWebActivationResponse
  @@schema_type = "DoWebActivationResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["doWebActivationResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "DoWebActivationResult")]]]

  def DoWebActivationResult
    @doWebActivationResult
  end

  def DoWebActivationResult=(value)
    @doWebActivationResult = value
  end

  def initialize(doWebActivationResult = nil)
    @doWebActivationResult = doWebActivationResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}DoWebDeactivation
class DoWebDeactivation
  @@schema_type = "DoWebDeactivation"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}DoWebDeactivationResponse
class DoWebDeactivationResponse
  @@schema_type = "DoWebDeactivationResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["doWebDeactivationResult", ["SOAP::SOAPInt", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "DoWebDeactivationResult")]]]

  def DoWebDeactivationResult
    @doWebDeactivationResult
  end

  def DoWebDeactivationResult=(value)
    @doWebDeactivationResult = value
  end

  def initialize(doWebDeactivationResult = nil)
    @doWebDeactivationResult = doWebDeactivationResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetActivationString
class GetActivationString
  @@schema_type = "GetActivationString"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}GetActivationStringResponse
class GetActivationStringResponse
  @@schema_type = "GetActivationStringResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = [["getActivationStringResult", ["SOAP::SOAPString", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "GetActivationStringResult")]]]

  def GetActivationStringResult
    @getActivationStringResult
  end

  def GetActivationStringResult=(value)
    @getActivationStringResult = value
  end

  def initialize(getActivationStringResult = nil)
    @getActivationStringResult = getActivationStringResult
  end
end

# {http://embeddedautomation.com/webservices/mControl}PerformWebUpdate
class PerformWebUpdate
  @@schema_type = "PerformWebUpdate"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}PerformWebUpdateResponse
class PerformWebUpdateResponse
  @@schema_type = "PerformWebUpdateResponse"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}AuServerEventMsg
class AuServerEventMsg
  @@schema_type = "AuServerEventMsg"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}EventArgs
class EventArgs
  @@schema_type = "EventArgs"
  @@schema_ns = "http://embeddedautomation.com/webservices/mControl"
  @@schema_element = []

  def initialize
  end
end

# {http://embeddedautomation.com/webservices/mControl}ArrayOfString
class ArrayOfString < ::Array
  @@schema_type = "string"
  @@schema_ns = "http://www.w3.org/2001/XMLSchema"
  @@schema_element = [["string", ["SOAP::SOAPString[]", XSD::QName.new("http://embeddedautomation.com/webservices/mControl", "string")]]]
end

# {http://embeddedautomation.com/webservices/mControl}EUserAccessLevel
module EUserAccessLevel
  Admin = "Admin"
  Builltin = "Builltin"
  Deny = "Deny"
  Guest = "Guest"
  User = "User"
end
