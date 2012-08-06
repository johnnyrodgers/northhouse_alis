#!/usr/bin/env ruby
require 'defaultDriver.rb'

endpoint_url = ARGV.shift
obj = MControl_x0020_Web_x0020_ServiceSoap.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   Ping(parameters)
#
# ARGS
#   parameters      Ping - {http://embeddedautomation.com/webservices/mControl}Ping
#
# RETURNS
#   parameters      PingResponse - {http://embeddedautomation.com/webservices/mControl}PingResponse
#
parameters = nil
puts obj.ping(parameters)

# SYNOPSIS
#   GetSessionID(parameters)
#
# ARGS
#   parameters      GetSessionID - {http://embeddedautomation.com/webservices/mControl}GetSessionID
#
# RETURNS
#   parameters      GetSessionIDResponse - {http://embeddedautomation.com/webservices/mControl}GetSessionIDResponse
#
parameters = nil
puts obj.getSessionID(parameters)

# SYNOPSIS
#   MessageToServer(parameters)
#
# ARGS
#   parameters      MessageToServer - {http://embeddedautomation.com/webservices/mControl}MessageToServer
#
# RETURNS
#   parameters      MessageToServerResponse - {http://embeddedautomation.com/webservices/mControl}MessageToServerResponse
#
parameters = nil
puts obj.messageToServer(parameters)

# SYNOPSIS
#   GetQueuedEvents(parameters)
#
# ARGS
#   parameters      GetQueuedEvents - {http://embeddedautomation.com/webservices/mControl}GetQueuedEvents
#
# RETURNS
#   parameters      GetQueuedEventsResponse - {http://embeddedautomation.com/webservices/mControl}GetQueuedEventsResponse
#
parameters = nil
puts obj.getQueuedEvents(parameters)

# SYNOPSIS
#   GetAllQueuedEvents(parameters)
#
# ARGS
#   parameters      GetAllQueuedEvents - {http://embeddedautomation.com/webservices/mControl}GetAllQueuedEvents
#
# RETURNS
#   parameters      GetAllQueuedEventsResponse - {http://embeddedautomation.com/webservices/mControl}GetAllQueuedEventsResponse
#
parameters = nil
puts obj.getAllQueuedEvents(parameters)

# SYNOPSIS
#   GetVersion(parameters)
#
# ARGS
#   parameters      GetVersion - {http://embeddedautomation.com/webservices/mControl}GetVersion
#
# RETURNS
#   parameters      GetVersionResponse - {http://embeddedautomation.com/webservices/mControl}GetVersionResponse
#
parameters = nil
puts obj.getVersion(parameters)

# SYNOPSIS
#   GetWebVersion(parameters)
#
# ARGS
#   parameters      GetWebVersion - {http://embeddedautomation.com/webservices/mControl}GetWebVersion
#
# RETURNS
#   parameters      GetWebVersionResponse - {http://embeddedautomation.com/webservices/mControl}GetWebVersionResponse
#
parameters = nil
puts obj.getWebVersion(parameters)

# SYNOPSIS
#   IsNewUpdateAvail(parameters)
#
# ARGS
#   parameters      IsNewUpdateAvail - {http://embeddedautomation.com/webservices/mControl}IsNewUpdateAvail
#
# RETURNS
#   parameters      IsNewUpdateAvailResponse - {http://embeddedautomation.com/webservices/mControl}IsNewUpdateAvailResponse
#
parameters = nil
puts obj.isNewUpdateAvail(parameters)

# SYNOPSIS
#   GetRegisteredUser(parameters)
#
# ARGS
#   parameters      GetRegisteredUser - {http://embeddedautomation.com/webservices/mControl}GetRegisteredUser
#
# RETURNS
#   parameters      GetRegisteredUserResponse - {http://embeddedautomation.com/webservices/mControl}GetRegisteredUserResponse
#
parameters = nil
puts obj.getRegisteredUser(parameters)

# SYNOPSIS
#   AutomationCommand(parameters)
#
# ARGS
#   parameters      AutomationCommand - {http://embeddedautomation.com/webservices/mControl}AutomationCommand
#
# RETURNS
#   parameters      AutomationCommandResponse - {http://embeddedautomation.com/webservices/mControl}AutomationCommandResponse
#
parameters = nil
puts obj.automationCommand(parameters)

# SYNOPSIS
#   RunMacro(parameters)
#
# ARGS
#   parameters      RunMacro - {http://embeddedautomation.com/webservices/mControl}RunMacro
#
# RETURNS
#   parameters      RunMacroResponse - {http://embeddedautomation.com/webservices/mControl}RunMacroResponse
#
parameters = nil
puts obj.runMacro(parameters)

# SYNOPSIS
#   PauseMacro(parameters)
#
# ARGS
#   parameters      PauseMacro - {http://embeddedautomation.com/webservices/mControl}PauseMacro
#
# RETURNS
#   parameters      PauseMacroResponse - {http://embeddedautomation.com/webservices/mControl}PauseMacroResponse
#
parameters = nil
puts obj.pauseMacro(parameters)

# SYNOPSIS
#   StopMacro(parameters)
#
# ARGS
#   parameters      StopMacro - {http://embeddedautomation.com/webservices/mControl}StopMacro
#
# RETURNS
#   parameters      StopMacroResponse - {http://embeddedautomation.com/webservices/mControl}StopMacroResponse
#
parameters = nil
puts obj.stopMacro(parameters)

# SYNOPSIS
#   StartIrLearning(parameters)
#
# ARGS
#   parameters      StartIrLearning - {http://embeddedautomation.com/webservices/mControl}StartIrLearning
#
# RETURNS
#   parameters      StartIrLearningResponse - {http://embeddedautomation.com/webservices/mControl}StartIrLearningResponse
#
parameters = nil
puts obj.startIrLearning(parameters)

# SYNOPSIS
#   StopIrLearning(parameters)
#
# ARGS
#   parameters      StopIrLearning - {http://embeddedautomation.com/webservices/mControl}StopIrLearning
#
# RETURNS
#   parameters      StopIrLearningResponse - {http://embeddedautomation.com/webservices/mControl}StopIrLearningResponse
#
parameters = nil
puts obj.stopIrLearning(parameters)

# SYNOPSIS
#   TestIrCode(parameters)
#
# ARGS
#   parameters      TestIrCode - {http://embeddedautomation.com/webservices/mControl}TestIrCode
#
# RETURNS
#   parameters      TestIrCodeResponse - {http://embeddedautomation.com/webservices/mControl}TestIrCodeResponse
#
parameters = nil
puts obj.testIrCode(parameters)

# SYNOPSIS
#   BeginDeviceEnrollment(parameters)
#
# ARGS
#   parameters      BeginDeviceEnrollment - {http://embeddedautomation.com/webservices/mControl}BeginDeviceEnrollment
#
# RETURNS
#   parameters      BeginDeviceEnrollmentResponse - {http://embeddedautomation.com/webservices/mControl}BeginDeviceEnrollmentResponse
#
parameters = nil
puts obj.beginDeviceEnrollment(parameters)

# SYNOPSIS
#   AbortDeviceEnrollment(parameters)
#
# ARGS
#   parameters      AbortDeviceEnrollment - {http://embeddedautomation.com/webservices/mControl}AbortDeviceEnrollment
#
# RETURNS
#   parameters      AbortDeviceEnrollmentResponse - {http://embeddedautomation.com/webservices/mControl}AbortDeviceEnrollmentResponse
#
parameters = nil
puts obj.abortDeviceEnrollment(parameters)

# SYNOPSIS
#   BeginDeviceUnenrollment(parameters)
#
# ARGS
#   parameters      BeginDeviceUnenrollment - {http://embeddedautomation.com/webservices/mControl}BeginDeviceUnenrollment
#
# RETURNS
#   parameters      BeginDeviceUnenrollmentResponse - {http://embeddedautomation.com/webservices/mControl}BeginDeviceUnenrollmentResponse
#
parameters = nil
puts obj.beginDeviceUnenrollment(parameters)

# SYNOPSIS
#   AbortDeviceUnenrollment(parameters)
#
# ARGS
#   parameters      AbortDeviceUnenrollment - {http://embeddedautomation.com/webservices/mControl}AbortDeviceUnenrollment
#
# RETURNS
#   parameters      AbortDeviceUnenrollmentResponse - {http://embeddedautomation.com/webservices/mControl}AbortDeviceUnenrollmentResponse
#
parameters = nil
puts obj.abortDeviceUnenrollment(parameters)

# SYNOPSIS
#   AbortUnenrollment(parameters)
#
# ARGS
#   parameters      AbortUnenrollment - {http://embeddedautomation.com/webservices/mControl}AbortUnenrollment
#
# RETURNS
#   parameters      AbortUnenrollmentResponse - {http://embeddedautomation.com/webservices/mControl}AbortUnenrollmentResponse
#
parameters = nil
puts obj.abortUnenrollment(parameters)

# SYNOPSIS
#   GetBuildNumber(parameters)
#
# ARGS
#   parameters      GetBuildNumber - {http://embeddedautomation.com/webservices/mControl}GetBuildNumber
#
# RETURNS
#   parameters      GetBuildNumberResponse - {http://embeddedautomation.com/webservices/mControl}GetBuildNumberResponse
#
parameters = nil
puts obj.getBuildNumber(parameters)

# SYNOPSIS
#   GetXmlDataSet(parameters)
#
# ARGS
#   parameters      GetXmlDataSet - {http://embeddedautomation.com/webservices/mControl}GetXmlDataSet
#
# RETURNS
#   parameters      GetXmlDataSetResponse - {http://embeddedautomation.com/webservices/mControl}GetXmlDataSetResponse
#
parameters = nil
puts obj.getXmlDataSet(parameters)

# SYNOPSIS
#   SendCommand(parameters)
#
# ARGS
#   parameters      SendCommand - {http://embeddedautomation.com/webservices/mControl}SendCommand
#
# RETURNS
#   parameters      SendCommandResponse - {http://embeddedautomation.com/webservices/mControl}SendCommandResponse
#
parameters = nil
puts obj.sendCommand(parameters)

# SYNOPSIS
#   AddZone(parameters)
#
# ARGS
#   parameters      AddZone - {http://embeddedautomation.com/webservices/mControl}AddZone
#
# RETURNS
#   parameters      AddZoneResponse - {http://embeddedautomation.com/webservices/mControl}AddZoneResponse
#
parameters = nil
puts obj.addZone(parameters)

# SYNOPSIS
#   UpdateZone(parameters)
#
# ARGS
#   parameters      UpdateZone - {http://embeddedautomation.com/webservices/mControl}UpdateZone
#
# RETURNS
#   parameters      UpdateZoneResponse - {http://embeddedautomation.com/webservices/mControl}UpdateZoneResponse
#
parameters = nil
puts obj.updateZone(parameters)

# SYNOPSIS
#   DeleteZone(parameters)
#
# ARGS
#   parameters      DeleteZone - {http://embeddedautomation.com/webservices/mControl}DeleteZone
#
# RETURNS
#   parameters      DeleteZoneResponse - {http://embeddedautomation.com/webservices/mControl}DeleteZoneResponse
#
parameters = nil
puts obj.deleteZone(parameters)

# SYNOPSIS
#   SaveZoneOrder(parameters)
#
# ARGS
#   parameters      SaveZoneOrder - {http://embeddedautomation.com/webservices/mControl}SaveZoneOrder
#
# RETURNS
#   parameters      SaveZoneOrderResponse - {http://embeddedautomation.com/webservices/mControl}SaveZoneOrderResponse
#
parameters = nil
puts obj.saveZoneOrder(parameters)

# SYNOPSIS
#   AddDevice(parameters)
#
# ARGS
#   parameters      AddDevice - {http://embeddedautomation.com/webservices/mControl}AddDevice
#
# RETURNS
#   parameters      AddDeviceResponse - {http://embeddedautomation.com/webservices/mControl}AddDeviceResponse
#
parameters = nil
puts obj.addDevice(parameters)

# SYNOPSIS
#   UpdateDevice(parameters)
#
# ARGS
#   parameters      UpdateDevice - {http://embeddedautomation.com/webservices/mControl}UpdateDevice
#
# RETURNS
#   parameters      UpdateDeviceResponse - {http://embeddedautomation.com/webservices/mControl}UpdateDeviceResponse
#
parameters = nil
puts obj.updateDevice(parameters)

# SYNOPSIS
#   DeleteDevice(parameters)
#
# ARGS
#   parameters      DeleteDevice - {http://embeddedautomation.com/webservices/mControl}DeleteDevice
#
# RETURNS
#   parameters      DeleteDeviceResponse - {http://embeddedautomation.com/webservices/mControl}DeleteDeviceResponse
#
parameters = nil
puts obj.deleteDevice(parameters)

# SYNOPSIS
#   SaveDeviceOrder(parameters)
#
# ARGS
#   parameters      SaveDeviceOrder - {http://embeddedautomation.com/webservices/mControl}SaveDeviceOrder
#
# RETURNS
#   parameters      SaveDeviceOrderResponse - {http://embeddedautomation.com/webservices/mControl}SaveDeviceOrderResponse
#
parameters = nil
puts obj.saveDeviceOrder(parameters)

# SYNOPSIS
#   MoveDeviceToNewZone(parameters)
#
# ARGS
#   parameters      MoveDeviceToNewZone - {http://embeddedautomation.com/webservices/mControl}MoveDeviceToNewZone
#
# RETURNS
#   parameters      MoveDeviceToNewZoneResponse - {http://embeddedautomation.com/webservices/mControl}MoveDeviceToNewZoneResponse
#
parameters = nil
puts obj.moveDeviceToNewZone(parameters)

# SYNOPSIS
#   AddMacro(parameters)
#
# ARGS
#   parameters      AddMacro - {http://embeddedautomation.com/webservices/mControl}AddMacro
#
# RETURNS
#   parameters      AddMacroResponse - {http://embeddedautomation.com/webservices/mControl}AddMacroResponse
#
parameters = nil
puts obj.addMacro(parameters)

# SYNOPSIS
#   UpdateMacro(parameters)
#
# ARGS
#   parameters      UpdateMacro - {http://embeddedautomation.com/webservices/mControl}UpdateMacro
#
# RETURNS
#   parameters      UpdateMacroResponse - {http://embeddedautomation.com/webservices/mControl}UpdateMacroResponse
#
parameters = nil
puts obj.updateMacro(parameters)

# SYNOPSIS
#   DeleteMacro(parameters)
#
# ARGS
#   parameters      DeleteMacro - {http://embeddedautomation.com/webservices/mControl}DeleteMacro
#
# RETURNS
#   parameters      DeleteMacroResponse - {http://embeddedautomation.com/webservices/mControl}DeleteMacroResponse
#
parameters = nil
puts obj.deleteMacro(parameters)

# SYNOPSIS
#   SaveMacroEnab(parameters)
#
# ARGS
#   parameters      SaveMacroEnab - {http://embeddedautomation.com/webservices/mControl}SaveMacroEnab
#
# RETURNS
#   parameters      SaveMacroEnabResponse - {http://embeddedautomation.com/webservices/mControl}SaveMacroEnabResponse
#
parameters = nil
puts obj.saveMacroEnab(parameters)

# SYNOPSIS
#   AddTrigger(parameters)
#
# ARGS
#   parameters      AddTrigger - {http://embeddedautomation.com/webservices/mControl}AddTrigger
#
# RETURNS
#   parameters      AddTriggerResponse - {http://embeddedautomation.com/webservices/mControl}AddTriggerResponse
#
parameters = nil
puts obj.addTrigger(parameters)

# SYNOPSIS
#   UpdateTrigger(parameters)
#
# ARGS
#   parameters      UpdateTrigger - {http://embeddedautomation.com/webservices/mControl}UpdateTrigger
#
# RETURNS
#   parameters      UpdateTriggerResponse - {http://embeddedautomation.com/webservices/mControl}UpdateTriggerResponse
#
parameters = nil
puts obj.updateTrigger(parameters)

# SYNOPSIS
#   DeleteTrigger(parameters)
#
# ARGS
#   parameters      DeleteTrigger - {http://embeddedautomation.com/webservices/mControl}DeleteTrigger
#
# RETURNS
#   parameters      DeleteTriggerResponse - {http://embeddedautomation.com/webservices/mControl}DeleteTriggerResponse
#
parameters = nil
puts obj.deleteTrigger(parameters)

# SYNOPSIS
#   SaveTriggerOrder(parameters)
#
# ARGS
#   parameters      SaveTriggerOrder - {http://embeddedautomation.com/webservices/mControl}SaveTriggerOrder
#
# RETURNS
#   parameters      SaveTriggerOrderResponse - {http://embeddedautomation.com/webservices/mControl}SaveTriggerOrderResponse
#
parameters = nil
puts obj.saveTriggerOrder(parameters)

# SYNOPSIS
#   AddCondition(parameters)
#
# ARGS
#   parameters      AddCondition - {http://embeddedautomation.com/webservices/mControl}AddCondition
#
# RETURNS
#   parameters      AddConditionResponse - {http://embeddedautomation.com/webservices/mControl}AddConditionResponse
#
parameters = nil
puts obj.addCondition(parameters)

# SYNOPSIS
#   UpdateCondition(parameters)
#
# ARGS
#   parameters      UpdateCondition - {http://embeddedautomation.com/webservices/mControl}UpdateCondition
#
# RETURNS
#   parameters      UpdateConditionResponse - {http://embeddedautomation.com/webservices/mControl}UpdateConditionResponse
#
parameters = nil
puts obj.updateCondition(parameters)

# SYNOPSIS
#   DeleteCondition(parameters)
#
# ARGS
#   parameters      DeleteCondition - {http://embeddedautomation.com/webservices/mControl}DeleteCondition
#
# RETURNS
#   parameters      DeleteConditionResponse - {http://embeddedautomation.com/webservices/mControl}DeleteConditionResponse
#
parameters = nil
puts obj.deleteCondition(parameters)

# SYNOPSIS
#   AddAction(parameters)
#
# ARGS
#   parameters      AddAction - {http://embeddedautomation.com/webservices/mControl}AddAction
#
# RETURNS
#   parameters      AddActionResponse - {http://embeddedautomation.com/webservices/mControl}AddActionResponse
#
parameters = nil
puts obj.addAction(parameters)

# SYNOPSIS
#   UpdateAction(parameters)
#
# ARGS
#   parameters      UpdateAction - {http://embeddedautomation.com/webservices/mControl}UpdateAction
#
# RETURNS
#   parameters      UpdateActionResponse - {http://embeddedautomation.com/webservices/mControl}UpdateActionResponse
#
parameters = nil
puts obj.updateAction(parameters)

# SYNOPSIS
#   DeleteAction(parameters)
#
# ARGS
#   parameters      DeleteAction - {http://embeddedautomation.com/webservices/mControl}DeleteAction
#
# RETURNS
#   parameters      DeleteActionResponse - {http://embeddedautomation.com/webservices/mControl}DeleteActionResponse
#
parameters = nil
puts obj.deleteAction(parameters)

# SYNOPSIS
#   SaveActionOrder(parameters)
#
# ARGS
#   parameters      SaveActionOrder - {http://embeddedautomation.com/webservices/mControl}SaveActionOrder
#
# RETURNS
#   parameters      SaveActionOrderResponse - {http://embeddedautomation.com/webservices/mControl}SaveActionOrderResponse
#
parameters = nil
puts obj.saveActionOrder(parameters)

# SYNOPSIS
#   AddCommand(parameters)
#
# ARGS
#   parameters      AddCommand - {http://embeddedautomation.com/webservices/mControl}AddCommand
#
# RETURNS
#   parameters      AddCommandResponse - {http://embeddedautomation.com/webservices/mControl}AddCommandResponse
#
parameters = nil
puts obj.addCommand(parameters)

# SYNOPSIS
#   UpdateCommand(parameters)
#
# ARGS
#   parameters      UpdateCommand - {http://embeddedautomation.com/webservices/mControl}UpdateCommand
#
# RETURNS
#   parameters      UpdateCommandResponse - {http://embeddedautomation.com/webservices/mControl}UpdateCommandResponse
#
parameters = nil
puts obj.updateCommand(parameters)

# SYNOPSIS
#   DeleteCommand(parameters)
#
# ARGS
#   parameters      DeleteCommand - {http://embeddedautomation.com/webservices/mControl}DeleteCommand
#
# RETURNS
#   parameters      DeleteCommandResponse - {http://embeddedautomation.com/webservices/mControl}DeleteCommandResponse
#
parameters = nil
puts obj.deleteCommand(parameters)

# SYNOPSIS
#   AddConfigGroup(parameters)
#
# ARGS
#   parameters      AddConfigGroup - {http://embeddedautomation.com/webservices/mControl}AddConfigGroup
#
# RETURNS
#   parameters      AddConfigGroupResponse - {http://embeddedautomation.com/webservices/mControl}AddConfigGroupResponse
#
parameters = nil
puts obj.addConfigGroup(parameters)

# SYNOPSIS
#   AddConfigItem(parameters)
#
# ARGS
#   parameters      AddConfigItem - {http://embeddedautomation.com/webservices/mControl}AddConfigItem
#
# RETURNS
#   parameters      AddConfigItemResponse - {http://embeddedautomation.com/webservices/mControl}AddConfigItemResponse
#
parameters = nil
puts obj.addConfigItem(parameters)

# SYNOPSIS
#   SetConfigItemValue(parameters)
#
# ARGS
#   parameters      SetConfigItemValue - {http://embeddedautomation.com/webservices/mControl}SetConfigItemValue
#
# RETURNS
#   parameters      SetConfigItemValueResponse - {http://embeddedautomation.com/webservices/mControl}SetConfigItemValueResponse
#
parameters = nil
puts obj.setConfigItemValue(parameters)

# SYNOPSIS
#   IsDeleteZoneAllowed(parameters)
#
# ARGS
#   parameters      IsDeleteZoneAllowed - {http://embeddedautomation.com/webservices/mControl}IsDeleteZoneAllowed
#
# RETURNS
#   parameters      IsDeleteZoneAllowedResponse - {http://embeddedautomation.com/webservices/mControl}IsDeleteZoneAllowedResponse
#
parameters = nil
puts obj.isDeleteZoneAllowed(parameters)

# SYNOPSIS
#   IsDeleteDeviceAllowed(parameters)
#
# ARGS
#   parameters      IsDeleteDeviceAllowed - {http://embeddedautomation.com/webservices/mControl}IsDeleteDeviceAllowed
#
# RETURNS
#   parameters      IsDeleteDeviceAllowedResponse - {http://embeddedautomation.com/webservices/mControl}IsDeleteDeviceAllowedResponse
#
parameters = nil
puts obj.isDeleteDeviceAllowed(parameters)

# SYNOPSIS
#   IsDeleteCommandAllowed(parameters)
#
# ARGS
#   parameters      IsDeleteCommandAllowed - {http://embeddedautomation.com/webservices/mControl}IsDeleteCommandAllowed
#
# RETURNS
#   parameters      IsDeleteCommandAllowedResponse - {http://embeddedautomation.com/webservices/mControl}IsDeleteCommandAllowedResponse
#
parameters = nil
puts obj.isDeleteCommandAllowed(parameters)

# SYNOPSIS
#   IsDeleteMacroAllowed(parameters)
#
# ARGS
#   parameters      IsDeleteMacroAllowed - {http://embeddedautomation.com/webservices/mControl}IsDeleteMacroAllowed
#
# RETURNS
#   parameters      IsDeleteMacroAllowedResponse - {http://embeddedautomation.com/webservices/mControl}IsDeleteMacroAllowedResponse
#
parameters = nil
puts obj.isDeleteMacroAllowed(parameters)

# SYNOPSIS
#   GetCamFilesList(parameters)
#
# ARGS
#   parameters      GetCamFilesList - {http://embeddedautomation.com/webservices/mControl}GetCamFilesList
#
# RETURNS
#   parameters      GetCamFilesListResponse - {http://embeddedautomation.com/webservices/mControl}GetCamFilesListResponse
#
parameters = nil
puts obj.getCamFilesList(parameters)

# SYNOPSIS
#   DeleteCamFiles(parameters)
#
# ARGS
#   parameters      DeleteCamFiles - {http://embeddedautomation.com/webservices/mControl}DeleteCamFiles
#
# RETURNS
#   parameters      DeleteCamFilesResponse - {http://embeddedautomation.com/webservices/mControl}DeleteCamFilesResponse
#
parameters = nil
puts obj.deleteCamFiles(parameters)

# SYNOPSIS
#   BeginMultiUpdateProcess(parameters)
#
# ARGS
#   parameters      BeginMultiUpdateProcess - {http://embeddedautomation.com/webservices/mControl}BeginMultiUpdateProcess
#
# RETURNS
#   parameters      BeginMultiUpdateProcessResponse - {http://embeddedautomation.com/webservices/mControl}BeginMultiUpdateProcessResponse
#
parameters = nil
puts obj.beginMultiUpdateProcess(parameters)

# SYNOPSIS
#   EndMultiUpdateProcess(parameters)
#
# ARGS
#   parameters      EndMultiUpdateProcess - {http://embeddedautomation.com/webservices/mControl}EndMultiUpdateProcess
#
# RETURNS
#   parameters      EndMultiUpdateProcessResponse - {http://embeddedautomation.com/webservices/mControl}EndMultiUpdateProcessResponse
#
parameters = nil
puts obj.endMultiUpdateProcess(parameters)

# SYNOPSIS
#   EnableAction(parameters)
#
# ARGS
#   parameters      EnableAction - {http://embeddedautomation.com/webservices/mControl}EnableAction
#
# RETURNS
#   parameters      EnableActionResponse - {http://embeddedautomation.com/webservices/mControl}EnableActionResponse
#
parameters = nil
puts obj.enableAction(parameters)

# SYNOPSIS
#   EnableMacro(parameters)
#
# ARGS
#   parameters      EnableMacro - {http://embeddedautomation.com/webservices/mControl}EnableMacro
#
# RETURNS
#   parameters      EnableMacroResponse - {http://embeddedautomation.com/webservices/mControl}EnableMacroResponse
#
parameters = nil
puts obj.enableMacro(parameters)

# SYNOPSIS
#   EnableTrigger(parameters)
#
# ARGS
#   parameters      EnableTrigger - {http://embeddedautomation.com/webservices/mControl}EnableTrigger
#
# RETURNS
#   parameters      EnableTriggerResponse - {http://embeddedautomation.com/webservices/mControl}EnableTriggerResponse
#
parameters = nil
puts obj.enableTrigger(parameters)

# SYNOPSIS
#   SaveMacroOrder(parameters)
#
# ARGS
#   parameters      SaveMacroOrder - {http://embeddedautomation.com/webservices/mControl}SaveMacroOrder
#
# RETURNS
#   parameters      SaveMacroOrderResponse - {http://embeddedautomation.com/webservices/mControl}SaveMacroOrderResponse
#
parameters = nil
puts obj.saveMacroOrder(parameters)

# SYNOPSIS
#   GetUserAccessLevel(parameters)
#
# ARGS
#   parameters      GetUserAccessLevel - {http://embeddedautomation.com/webservices/mControl}GetUserAccessLevel
#
# RETURNS
#   parameters      GetUserAccessLevelResponse - {http://embeddedautomation.com/webservices/mControl}GetUserAccessLevelResponse
#
parameters = nil
puts obj.getUserAccessLevel(parameters)

# SYNOPSIS
#   SendActivationKey(parameters)
#
# ARGS
#   parameters      SendActivationKey - {http://embeddedautomation.com/webservices/mControl}SendActivationKey
#
# RETURNS
#   parameters      SendActivationKeyResponse - {http://embeddedautomation.com/webservices/mControl}SendActivationKeyResponse
#
parameters = nil
puts obj.sendActivationKey(parameters)

# SYNOPSIS
#   DoWebActivation(parameters)
#
# ARGS
#   parameters      DoWebActivation - {http://embeddedautomation.com/webservices/mControl}DoWebActivation
#
# RETURNS
#   parameters      DoWebActivationResponse - {http://embeddedautomation.com/webservices/mControl}DoWebActivationResponse
#
parameters = nil
puts obj.doWebActivation(parameters)

# SYNOPSIS
#   DoWebDeactivation(parameters)
#
# ARGS
#   parameters      DoWebDeactivation - {http://embeddedautomation.com/webservices/mControl}DoWebDeactivation
#
# RETURNS
#   parameters      DoWebDeactivationResponse - {http://embeddedautomation.com/webservices/mControl}DoWebDeactivationResponse
#
parameters = nil
puts obj.doWebDeactivation(parameters)

# SYNOPSIS
#   GetActivationString(parameters)
#
# ARGS
#   parameters      GetActivationString - {http://embeddedautomation.com/webservices/mControl}GetActivationString
#
# RETURNS
#   parameters      GetActivationStringResponse - {http://embeddedautomation.com/webservices/mControl}GetActivationStringResponse
#
parameters = nil
puts obj.getActivationString(parameters)

# SYNOPSIS
#   PerformWebUpdate(parameters)
#
# ARGS
#   parameters      PerformWebUpdate - {http://embeddedautomation.com/webservices/mControl}PerformWebUpdate
#
# RETURNS
#   parameters      PerformWebUpdateResponse - {http://embeddedautomation.com/webservices/mControl}PerformWebUpdateResponse
#
parameters = nil
puts obj.performWebUpdate(parameters)


endpoint_url = ARGV.shift
obj = MControl_x0020_Web_x0020_ServiceSoap.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   Ping(parameters)
#
# ARGS
#   parameters      Ping - {http://embeddedautomation.com/webservices/mControl}Ping
#
# RETURNS
#   parameters      PingResponse - {http://embeddedautomation.com/webservices/mControl}PingResponse
#
parameters = nil
puts obj.ping(parameters)

# SYNOPSIS
#   GetSessionID(parameters)
#
# ARGS
#   parameters      GetSessionID - {http://embeddedautomation.com/webservices/mControl}GetSessionID
#
# RETURNS
#   parameters      GetSessionIDResponse - {http://embeddedautomation.com/webservices/mControl}GetSessionIDResponse
#
parameters = nil
puts obj.getSessionID(parameters)

# SYNOPSIS
#   MessageToServer(parameters)
#
# ARGS
#   parameters      MessageToServer - {http://embeddedautomation.com/webservices/mControl}MessageToServer
#
# RETURNS
#   parameters      MessageToServerResponse - {http://embeddedautomation.com/webservices/mControl}MessageToServerResponse
#
parameters = nil
puts obj.messageToServer(parameters)

# SYNOPSIS
#   GetQueuedEvents(parameters)
#
# ARGS
#   parameters      GetQueuedEvents - {http://embeddedautomation.com/webservices/mControl}GetQueuedEvents
#
# RETURNS
#   parameters      GetQueuedEventsResponse - {http://embeddedautomation.com/webservices/mControl}GetQueuedEventsResponse
#
parameters = nil
puts obj.getQueuedEvents(parameters)

# SYNOPSIS
#   GetAllQueuedEvents(parameters)
#
# ARGS
#   parameters      GetAllQueuedEvents - {http://embeddedautomation.com/webservices/mControl}GetAllQueuedEvents
#
# RETURNS
#   parameters      GetAllQueuedEventsResponse - {http://embeddedautomation.com/webservices/mControl}GetAllQueuedEventsResponse
#
parameters = nil
puts obj.getAllQueuedEvents(parameters)

# SYNOPSIS
#   GetVersion(parameters)
#
# ARGS
#   parameters      GetVersion - {http://embeddedautomation.com/webservices/mControl}GetVersion
#
# RETURNS
#   parameters      GetVersionResponse - {http://embeddedautomation.com/webservices/mControl}GetVersionResponse
#
parameters = nil
puts obj.getVersion(parameters)

# SYNOPSIS
#   GetWebVersion(parameters)
#
# ARGS
#   parameters      GetWebVersion - {http://embeddedautomation.com/webservices/mControl}GetWebVersion
#
# RETURNS
#   parameters      GetWebVersionResponse - {http://embeddedautomation.com/webservices/mControl}GetWebVersionResponse
#
parameters = nil
puts obj.getWebVersion(parameters)

# SYNOPSIS
#   IsNewUpdateAvail(parameters)
#
# ARGS
#   parameters      IsNewUpdateAvail - {http://embeddedautomation.com/webservices/mControl}IsNewUpdateAvail
#
# RETURNS
#   parameters      IsNewUpdateAvailResponse - {http://embeddedautomation.com/webservices/mControl}IsNewUpdateAvailResponse
#
parameters = nil
puts obj.isNewUpdateAvail(parameters)

# SYNOPSIS
#   GetRegisteredUser(parameters)
#
# ARGS
#   parameters      GetRegisteredUser - {http://embeddedautomation.com/webservices/mControl}GetRegisteredUser
#
# RETURNS
#   parameters      GetRegisteredUserResponse - {http://embeddedautomation.com/webservices/mControl}GetRegisteredUserResponse
#
parameters = nil
puts obj.getRegisteredUser(parameters)

# SYNOPSIS
#   AutomationCommand(parameters)
#
# ARGS
#   parameters      AutomationCommand - {http://embeddedautomation.com/webservices/mControl}AutomationCommand
#
# RETURNS
#   parameters      AutomationCommandResponse - {http://embeddedautomation.com/webservices/mControl}AutomationCommandResponse
#
parameters = nil
puts obj.automationCommand(parameters)

# SYNOPSIS
#   RunMacro(parameters)
#
# ARGS
#   parameters      RunMacro - {http://embeddedautomation.com/webservices/mControl}RunMacro
#
# RETURNS
#   parameters      RunMacroResponse - {http://embeddedautomation.com/webservices/mControl}RunMacroResponse
#
parameters = nil
puts obj.runMacro(parameters)

# SYNOPSIS
#   PauseMacro(parameters)
#
# ARGS
#   parameters      PauseMacro - {http://embeddedautomation.com/webservices/mControl}PauseMacro
#
# RETURNS
#   parameters      PauseMacroResponse - {http://embeddedautomation.com/webservices/mControl}PauseMacroResponse
#
parameters = nil
puts obj.pauseMacro(parameters)

# SYNOPSIS
#   StopMacro(parameters)
#
# ARGS
#   parameters      StopMacro - {http://embeddedautomation.com/webservices/mControl}StopMacro
#
# RETURNS
#   parameters      StopMacroResponse - {http://embeddedautomation.com/webservices/mControl}StopMacroResponse
#
parameters = nil
puts obj.stopMacro(parameters)

# SYNOPSIS
#   StartIrLearning(parameters)
#
# ARGS
#   parameters      StartIrLearning - {http://embeddedautomation.com/webservices/mControl}StartIrLearning
#
# RETURNS
#   parameters      StartIrLearningResponse - {http://embeddedautomation.com/webservices/mControl}StartIrLearningResponse
#
parameters = nil
puts obj.startIrLearning(parameters)

# SYNOPSIS
#   StopIrLearning(parameters)
#
# ARGS
#   parameters      StopIrLearning - {http://embeddedautomation.com/webservices/mControl}StopIrLearning
#
# RETURNS
#   parameters      StopIrLearningResponse - {http://embeddedautomation.com/webservices/mControl}StopIrLearningResponse
#
parameters = nil
puts obj.stopIrLearning(parameters)

# SYNOPSIS
#   TestIrCode(parameters)
#
# ARGS
#   parameters      TestIrCode - {http://embeddedautomation.com/webservices/mControl}TestIrCode
#
# RETURNS
#   parameters      TestIrCodeResponse - {http://embeddedautomation.com/webservices/mControl}TestIrCodeResponse
#
parameters = nil
puts obj.testIrCode(parameters)

# SYNOPSIS
#   BeginDeviceEnrollment(parameters)
#
# ARGS
#   parameters      BeginDeviceEnrollment - {http://embeddedautomation.com/webservices/mControl}BeginDeviceEnrollment
#
# RETURNS
#   parameters      BeginDeviceEnrollmentResponse - {http://embeddedautomation.com/webservices/mControl}BeginDeviceEnrollmentResponse
#
parameters = nil
puts obj.beginDeviceEnrollment(parameters)

# SYNOPSIS
#   AbortDeviceEnrollment(parameters)
#
# ARGS
#   parameters      AbortDeviceEnrollment - {http://embeddedautomation.com/webservices/mControl}AbortDeviceEnrollment
#
# RETURNS
#   parameters      AbortDeviceEnrollmentResponse - {http://embeddedautomation.com/webservices/mControl}AbortDeviceEnrollmentResponse
#
parameters = nil
puts obj.abortDeviceEnrollment(parameters)

# SYNOPSIS
#   BeginDeviceUnenrollment(parameters)
#
# ARGS
#   parameters      BeginDeviceUnenrollment - {http://embeddedautomation.com/webservices/mControl}BeginDeviceUnenrollment
#
# RETURNS
#   parameters      BeginDeviceUnenrollmentResponse - {http://embeddedautomation.com/webservices/mControl}BeginDeviceUnenrollmentResponse
#
parameters = nil
puts obj.beginDeviceUnenrollment(parameters)

# SYNOPSIS
#   AbortDeviceUnenrollment(parameters)
#
# ARGS
#   parameters      AbortDeviceUnenrollment - {http://embeddedautomation.com/webservices/mControl}AbortDeviceUnenrollment
#
# RETURNS
#   parameters      AbortDeviceUnenrollmentResponse - {http://embeddedautomation.com/webservices/mControl}AbortDeviceUnenrollmentResponse
#
parameters = nil
puts obj.abortDeviceUnenrollment(parameters)

# SYNOPSIS
#   AbortUnenrollment(parameters)
#
# ARGS
#   parameters      AbortUnenrollment - {http://embeddedautomation.com/webservices/mControl}AbortUnenrollment
#
# RETURNS
#   parameters      AbortUnenrollmentResponse - {http://embeddedautomation.com/webservices/mControl}AbortUnenrollmentResponse
#
parameters = nil
puts obj.abortUnenrollment(parameters)

# SYNOPSIS
#   GetBuildNumber(parameters)
#
# ARGS
#   parameters      GetBuildNumber - {http://embeddedautomation.com/webservices/mControl}GetBuildNumber
#
# RETURNS
#   parameters      GetBuildNumberResponse - {http://embeddedautomation.com/webservices/mControl}GetBuildNumberResponse
#
parameters = nil
puts obj.getBuildNumber(parameters)

# SYNOPSIS
#   GetXmlDataSet(parameters)
#
# ARGS
#   parameters      GetXmlDataSet - {http://embeddedautomation.com/webservices/mControl}GetXmlDataSet
#
# RETURNS
#   parameters      GetXmlDataSetResponse - {http://embeddedautomation.com/webservices/mControl}GetXmlDataSetResponse
#
parameters = nil
puts obj.getXmlDataSet(parameters)

# SYNOPSIS
#   SendCommand(parameters)
#
# ARGS
#   parameters      SendCommand - {http://embeddedautomation.com/webservices/mControl}SendCommand
#
# RETURNS
#   parameters      SendCommandResponse - {http://embeddedautomation.com/webservices/mControl}SendCommandResponse
#
parameters = nil
puts obj.sendCommand(parameters)

# SYNOPSIS
#   AddZone(parameters)
#
# ARGS
#   parameters      AddZone - {http://embeddedautomation.com/webservices/mControl}AddZone
#
# RETURNS
#   parameters      AddZoneResponse - {http://embeddedautomation.com/webservices/mControl}AddZoneResponse
#
parameters = nil
puts obj.addZone(parameters)

# SYNOPSIS
#   UpdateZone(parameters)
#
# ARGS
#   parameters      UpdateZone - {http://embeddedautomation.com/webservices/mControl}UpdateZone
#
# RETURNS
#   parameters      UpdateZoneResponse - {http://embeddedautomation.com/webservices/mControl}UpdateZoneResponse
#
parameters = nil
puts obj.updateZone(parameters)

# SYNOPSIS
#   DeleteZone(parameters)
#
# ARGS
#   parameters      DeleteZone - {http://embeddedautomation.com/webservices/mControl}DeleteZone
#
# RETURNS
#   parameters      DeleteZoneResponse - {http://embeddedautomation.com/webservices/mControl}DeleteZoneResponse
#
parameters = nil
puts obj.deleteZone(parameters)

# SYNOPSIS
#   SaveZoneOrder(parameters)
#
# ARGS
#   parameters      SaveZoneOrder - {http://embeddedautomation.com/webservices/mControl}SaveZoneOrder
#
# RETURNS
#   parameters      SaveZoneOrderResponse - {http://embeddedautomation.com/webservices/mControl}SaveZoneOrderResponse
#
parameters = nil
puts obj.saveZoneOrder(parameters)

# SYNOPSIS
#   AddDevice(parameters)
#
# ARGS
#   parameters      AddDevice - {http://embeddedautomation.com/webservices/mControl}AddDevice
#
# RETURNS
#   parameters      AddDeviceResponse - {http://embeddedautomation.com/webservices/mControl}AddDeviceResponse
#
parameters = nil
puts obj.addDevice(parameters)

# SYNOPSIS
#   UpdateDevice(parameters)
#
# ARGS
#   parameters      UpdateDevice - {http://embeddedautomation.com/webservices/mControl}UpdateDevice
#
# RETURNS
#   parameters      UpdateDeviceResponse - {http://embeddedautomation.com/webservices/mControl}UpdateDeviceResponse
#
parameters = nil
puts obj.updateDevice(parameters)

# SYNOPSIS
#   DeleteDevice(parameters)
#
# ARGS
#   parameters      DeleteDevice - {http://embeddedautomation.com/webservices/mControl}DeleteDevice
#
# RETURNS
#   parameters      DeleteDeviceResponse - {http://embeddedautomation.com/webservices/mControl}DeleteDeviceResponse
#
parameters = nil
puts obj.deleteDevice(parameters)

# SYNOPSIS
#   SaveDeviceOrder(parameters)
#
# ARGS
#   parameters      SaveDeviceOrder - {http://embeddedautomation.com/webservices/mControl}SaveDeviceOrder
#
# RETURNS
#   parameters      SaveDeviceOrderResponse - {http://embeddedautomation.com/webservices/mControl}SaveDeviceOrderResponse
#
parameters = nil
puts obj.saveDeviceOrder(parameters)

# SYNOPSIS
#   MoveDeviceToNewZone(parameters)
#
# ARGS
#   parameters      MoveDeviceToNewZone - {http://embeddedautomation.com/webservices/mControl}MoveDeviceToNewZone
#
# RETURNS
#   parameters      MoveDeviceToNewZoneResponse - {http://embeddedautomation.com/webservices/mControl}MoveDeviceToNewZoneResponse
#
parameters = nil
puts obj.moveDeviceToNewZone(parameters)

# SYNOPSIS
#   AddMacro(parameters)
#
# ARGS
#   parameters      AddMacro - {http://embeddedautomation.com/webservices/mControl}AddMacro
#
# RETURNS
#   parameters      AddMacroResponse - {http://embeddedautomation.com/webservices/mControl}AddMacroResponse
#
parameters = nil
puts obj.addMacro(parameters)

# SYNOPSIS
#   UpdateMacro(parameters)
#
# ARGS
#   parameters      UpdateMacro - {http://embeddedautomation.com/webservices/mControl}UpdateMacro
#
# RETURNS
#   parameters      UpdateMacroResponse - {http://embeddedautomation.com/webservices/mControl}UpdateMacroResponse
#
parameters = nil
puts obj.updateMacro(parameters)

# SYNOPSIS
#   DeleteMacro(parameters)
#
# ARGS
#   parameters      DeleteMacro - {http://embeddedautomation.com/webservices/mControl}DeleteMacro
#
# RETURNS
#   parameters      DeleteMacroResponse - {http://embeddedautomation.com/webservices/mControl}DeleteMacroResponse
#
parameters = nil
puts obj.deleteMacro(parameters)

# SYNOPSIS
#   SaveMacroEnab(parameters)
#
# ARGS
#   parameters      SaveMacroEnab - {http://embeddedautomation.com/webservices/mControl}SaveMacroEnab
#
# RETURNS
#   parameters      SaveMacroEnabResponse - {http://embeddedautomation.com/webservices/mControl}SaveMacroEnabResponse
#
parameters = nil
puts obj.saveMacroEnab(parameters)

# SYNOPSIS
#   AddTrigger(parameters)
#
# ARGS
#   parameters      AddTrigger - {http://embeddedautomation.com/webservices/mControl}AddTrigger
#
# RETURNS
#   parameters      AddTriggerResponse - {http://embeddedautomation.com/webservices/mControl}AddTriggerResponse
#
parameters = nil
puts obj.addTrigger(parameters)

# SYNOPSIS
#   UpdateTrigger(parameters)
#
# ARGS
#   parameters      UpdateTrigger - {http://embeddedautomation.com/webservices/mControl}UpdateTrigger
#
# RETURNS
#   parameters      UpdateTriggerResponse - {http://embeddedautomation.com/webservices/mControl}UpdateTriggerResponse
#
parameters = nil
puts obj.updateTrigger(parameters)

# SYNOPSIS
#   DeleteTrigger(parameters)
#
# ARGS
#   parameters      DeleteTrigger - {http://embeddedautomation.com/webservices/mControl}DeleteTrigger
#
# RETURNS
#   parameters      DeleteTriggerResponse - {http://embeddedautomation.com/webservices/mControl}DeleteTriggerResponse
#
parameters = nil
puts obj.deleteTrigger(parameters)

# SYNOPSIS
#   SaveTriggerOrder(parameters)
#
# ARGS
#   parameters      SaveTriggerOrder - {http://embeddedautomation.com/webservices/mControl}SaveTriggerOrder
#
# RETURNS
#   parameters      SaveTriggerOrderResponse - {http://embeddedautomation.com/webservices/mControl}SaveTriggerOrderResponse
#
parameters = nil
puts obj.saveTriggerOrder(parameters)

# SYNOPSIS
#   AddCondition(parameters)
#
# ARGS
#   parameters      AddCondition - {http://embeddedautomation.com/webservices/mControl}AddCondition
#
# RETURNS
#   parameters      AddConditionResponse - {http://embeddedautomation.com/webservices/mControl}AddConditionResponse
#
parameters = nil
puts obj.addCondition(parameters)

# SYNOPSIS
#   UpdateCondition(parameters)
#
# ARGS
#   parameters      UpdateCondition - {http://embeddedautomation.com/webservices/mControl}UpdateCondition
#
# RETURNS
#   parameters      UpdateConditionResponse - {http://embeddedautomation.com/webservices/mControl}UpdateConditionResponse
#
parameters = nil
puts obj.updateCondition(parameters)

# SYNOPSIS
#   DeleteCondition(parameters)
#
# ARGS
#   parameters      DeleteCondition - {http://embeddedautomation.com/webservices/mControl}DeleteCondition
#
# RETURNS
#   parameters      DeleteConditionResponse - {http://embeddedautomation.com/webservices/mControl}DeleteConditionResponse
#
parameters = nil
puts obj.deleteCondition(parameters)

# SYNOPSIS
#   AddAction(parameters)
#
# ARGS
#   parameters      AddAction - {http://embeddedautomation.com/webservices/mControl}AddAction
#
# RETURNS
#   parameters      AddActionResponse - {http://embeddedautomation.com/webservices/mControl}AddActionResponse
#
parameters = nil
puts obj.addAction(parameters)

# SYNOPSIS
#   UpdateAction(parameters)
#
# ARGS
#   parameters      UpdateAction - {http://embeddedautomation.com/webservices/mControl}UpdateAction
#
# RETURNS
#   parameters      UpdateActionResponse - {http://embeddedautomation.com/webservices/mControl}UpdateActionResponse
#
parameters = nil
puts obj.updateAction(parameters)

# SYNOPSIS
#   DeleteAction(parameters)
#
# ARGS
#   parameters      DeleteAction - {http://embeddedautomation.com/webservices/mControl}DeleteAction
#
# RETURNS
#   parameters      DeleteActionResponse - {http://embeddedautomation.com/webservices/mControl}DeleteActionResponse
#
parameters = nil
puts obj.deleteAction(parameters)

# SYNOPSIS
#   SaveActionOrder(parameters)
#
# ARGS
#   parameters      SaveActionOrder - {http://embeddedautomation.com/webservices/mControl}SaveActionOrder
#
# RETURNS
#   parameters      SaveActionOrderResponse - {http://embeddedautomation.com/webservices/mControl}SaveActionOrderResponse
#
parameters = nil
puts obj.saveActionOrder(parameters)

# SYNOPSIS
#   AddCommand(parameters)
#
# ARGS
#   parameters      AddCommand - {http://embeddedautomation.com/webservices/mControl}AddCommand
#
# RETURNS
#   parameters      AddCommandResponse - {http://embeddedautomation.com/webservices/mControl}AddCommandResponse
#
parameters = nil
puts obj.addCommand(parameters)

# SYNOPSIS
#   UpdateCommand(parameters)
#
# ARGS
#   parameters      UpdateCommand - {http://embeddedautomation.com/webservices/mControl}UpdateCommand
#
# RETURNS
#   parameters      UpdateCommandResponse - {http://embeddedautomation.com/webservices/mControl}UpdateCommandResponse
#
parameters = nil
puts obj.updateCommand(parameters)

# SYNOPSIS
#   DeleteCommand(parameters)
#
# ARGS
#   parameters      DeleteCommand - {http://embeddedautomation.com/webservices/mControl}DeleteCommand
#
# RETURNS
#   parameters      DeleteCommandResponse - {http://embeddedautomation.com/webservices/mControl}DeleteCommandResponse
#
parameters = nil
puts obj.deleteCommand(parameters)

# SYNOPSIS
#   AddConfigGroup(parameters)
#
# ARGS
#   parameters      AddConfigGroup - {http://embeddedautomation.com/webservices/mControl}AddConfigGroup
#
# RETURNS
#   parameters      AddConfigGroupResponse - {http://embeddedautomation.com/webservices/mControl}AddConfigGroupResponse
#
parameters = nil
puts obj.addConfigGroup(parameters)

# SYNOPSIS
#   AddConfigItem(parameters)
#
# ARGS
#   parameters      AddConfigItem - {http://embeddedautomation.com/webservices/mControl}AddConfigItem
#
# RETURNS
#   parameters      AddConfigItemResponse - {http://embeddedautomation.com/webservices/mControl}AddConfigItemResponse
#
parameters = nil
puts obj.addConfigItem(parameters)

# SYNOPSIS
#   SetConfigItemValue(parameters)
#
# ARGS
#   parameters      SetConfigItemValue - {http://embeddedautomation.com/webservices/mControl}SetConfigItemValue
#
# RETURNS
#   parameters      SetConfigItemValueResponse - {http://embeddedautomation.com/webservices/mControl}SetConfigItemValueResponse
#
parameters = nil
puts obj.setConfigItemValue(parameters)

# SYNOPSIS
#   IsDeleteZoneAllowed(parameters)
#
# ARGS
#   parameters      IsDeleteZoneAllowed - {http://embeddedautomation.com/webservices/mControl}IsDeleteZoneAllowed
#
# RETURNS
#   parameters      IsDeleteZoneAllowedResponse - {http://embeddedautomation.com/webservices/mControl}IsDeleteZoneAllowedResponse
#
parameters = nil
puts obj.isDeleteZoneAllowed(parameters)

# SYNOPSIS
#   IsDeleteDeviceAllowed(parameters)
#
# ARGS
#   parameters      IsDeleteDeviceAllowed - {http://embeddedautomation.com/webservices/mControl}IsDeleteDeviceAllowed
#
# RETURNS
#   parameters      IsDeleteDeviceAllowedResponse - {http://embeddedautomation.com/webservices/mControl}IsDeleteDeviceAllowedResponse
#
parameters = nil
puts obj.isDeleteDeviceAllowed(parameters)

# SYNOPSIS
#   IsDeleteCommandAllowed(parameters)
#
# ARGS
#   parameters      IsDeleteCommandAllowed - {http://embeddedautomation.com/webservices/mControl}IsDeleteCommandAllowed
#
# RETURNS
#   parameters      IsDeleteCommandAllowedResponse - {http://embeddedautomation.com/webservices/mControl}IsDeleteCommandAllowedResponse
#
parameters = nil
puts obj.isDeleteCommandAllowed(parameters)

# SYNOPSIS
#   IsDeleteMacroAllowed(parameters)
#
# ARGS
#   parameters      IsDeleteMacroAllowed - {http://embeddedautomation.com/webservices/mControl}IsDeleteMacroAllowed
#
# RETURNS
#   parameters      IsDeleteMacroAllowedResponse - {http://embeddedautomation.com/webservices/mControl}IsDeleteMacroAllowedResponse
#
parameters = nil
puts obj.isDeleteMacroAllowed(parameters)

# SYNOPSIS
#   GetCamFilesList(parameters)
#
# ARGS
#   parameters      GetCamFilesList - {http://embeddedautomation.com/webservices/mControl}GetCamFilesList
#
# RETURNS
#   parameters      GetCamFilesListResponse - {http://embeddedautomation.com/webservices/mControl}GetCamFilesListResponse
#
parameters = nil
puts obj.getCamFilesList(parameters)

# SYNOPSIS
#   DeleteCamFiles(parameters)
#
# ARGS
#   parameters      DeleteCamFiles - {http://embeddedautomation.com/webservices/mControl}DeleteCamFiles
#
# RETURNS
#   parameters      DeleteCamFilesResponse - {http://embeddedautomation.com/webservices/mControl}DeleteCamFilesResponse
#
parameters = nil
puts obj.deleteCamFiles(parameters)

# SYNOPSIS
#   BeginMultiUpdateProcess(parameters)
#
# ARGS
#   parameters      BeginMultiUpdateProcess - {http://embeddedautomation.com/webservices/mControl}BeginMultiUpdateProcess
#
# RETURNS
#   parameters      BeginMultiUpdateProcessResponse - {http://embeddedautomation.com/webservices/mControl}BeginMultiUpdateProcessResponse
#
parameters = nil
puts obj.beginMultiUpdateProcess(parameters)

# SYNOPSIS
#   EndMultiUpdateProcess(parameters)
#
# ARGS
#   parameters      EndMultiUpdateProcess - {http://embeddedautomation.com/webservices/mControl}EndMultiUpdateProcess
#
# RETURNS
#   parameters      EndMultiUpdateProcessResponse - {http://embeddedautomation.com/webservices/mControl}EndMultiUpdateProcessResponse
#
parameters = nil
puts obj.endMultiUpdateProcess(parameters)

# SYNOPSIS
#   EnableAction(parameters)
#
# ARGS
#   parameters      EnableAction - {http://embeddedautomation.com/webservices/mControl}EnableAction
#
# RETURNS
#   parameters      EnableActionResponse - {http://embeddedautomation.com/webservices/mControl}EnableActionResponse
#
parameters = nil
puts obj.enableAction(parameters)

# SYNOPSIS
#   EnableMacro(parameters)
#
# ARGS
#   parameters      EnableMacro - {http://embeddedautomation.com/webservices/mControl}EnableMacro
#
# RETURNS
#   parameters      EnableMacroResponse - {http://embeddedautomation.com/webservices/mControl}EnableMacroResponse
#
parameters = nil
puts obj.enableMacro(parameters)

# SYNOPSIS
#   EnableTrigger(parameters)
#
# ARGS
#   parameters      EnableTrigger - {http://embeddedautomation.com/webservices/mControl}EnableTrigger
#
# RETURNS
#   parameters      EnableTriggerResponse - {http://embeddedautomation.com/webservices/mControl}EnableTriggerResponse
#
parameters = nil
puts obj.enableTrigger(parameters)

# SYNOPSIS
#   SaveMacroOrder(parameters)
#
# ARGS
#   parameters      SaveMacroOrder - {http://embeddedautomation.com/webservices/mControl}SaveMacroOrder
#
# RETURNS
#   parameters      SaveMacroOrderResponse - {http://embeddedautomation.com/webservices/mControl}SaveMacroOrderResponse
#
parameters = nil
puts obj.saveMacroOrder(parameters)

# SYNOPSIS
#   GetUserAccessLevel(parameters)
#
# ARGS
#   parameters      GetUserAccessLevel - {http://embeddedautomation.com/webservices/mControl}GetUserAccessLevel
#
# RETURNS
#   parameters      GetUserAccessLevelResponse - {http://embeddedautomation.com/webservices/mControl}GetUserAccessLevelResponse
#
parameters = nil
puts obj.getUserAccessLevel(parameters)

# SYNOPSIS
#   SendActivationKey(parameters)
#
# ARGS
#   parameters      SendActivationKey - {http://embeddedautomation.com/webservices/mControl}SendActivationKey
#
# RETURNS
#   parameters      SendActivationKeyResponse - {http://embeddedautomation.com/webservices/mControl}SendActivationKeyResponse
#
parameters = nil
puts obj.sendActivationKey(parameters)

# SYNOPSIS
#   DoWebActivation(parameters)
#
# ARGS
#   parameters      DoWebActivation - {http://embeddedautomation.com/webservices/mControl}DoWebActivation
#
# RETURNS
#   parameters      DoWebActivationResponse - {http://embeddedautomation.com/webservices/mControl}DoWebActivationResponse
#
parameters = nil
puts obj.doWebActivation(parameters)

# SYNOPSIS
#   DoWebDeactivation(parameters)
#
# ARGS
#   parameters      DoWebDeactivation - {http://embeddedautomation.com/webservices/mControl}DoWebDeactivation
#
# RETURNS
#   parameters      DoWebDeactivationResponse - {http://embeddedautomation.com/webservices/mControl}DoWebDeactivationResponse
#
parameters = nil
puts obj.doWebDeactivation(parameters)

# SYNOPSIS
#   GetActivationString(parameters)
#
# ARGS
#   parameters      GetActivationString - {http://embeddedautomation.com/webservices/mControl}GetActivationString
#
# RETURNS
#   parameters      GetActivationStringResponse - {http://embeddedautomation.com/webservices/mControl}GetActivationStringResponse
#
parameters = nil
puts obj.getActivationString(parameters)

# SYNOPSIS
#   PerformWebUpdate(parameters)
#
# ARGS
#   parameters      PerformWebUpdate - {http://embeddedautomation.com/webservices/mControl}PerformWebUpdate
#
# RETURNS
#   parameters      PerformWebUpdateResponse - {http://embeddedautomation.com/webservices/mControl}PerformWebUpdateResponse
#
parameters = nil
puts obj.performWebUpdate(parameters)


