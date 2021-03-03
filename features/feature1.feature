@OPEN
Feature: Remote Start Vehicle Status

  As a User, I want to receive a status response after my Remote Start Request has been submitted.

  @GS-6 @OPEN
  Scenario Outline: Remote Start Status Responses
    Given the TBM has received a Remote Start Request
    When the TBM submits the Remote Start Request to the CAN
    Then the BCM responds with "<Remote_Status_Response>" message
    And the TBM publishes the RemoteOperationResponse messsage with the "<Remote_Status_Response>" message
    
    Examples:
      | Remote_Status_Response        |
      | SUCCESS                       |
      | SUCCESS_CONTINUE              |
      | NOT_AUTHORIZED                |
      | FAILED                        |
      | FAILED_IGNITION_ON            |
      | FAILED_NOCANACK               |
      | FAILED_VEHCONDITION           |
      | STARTFAILED_DOORS_NOTLOCKED   |
      | STARTFAILED_DOORS_OPEN        |
      | STARTFAILED_HOODTRUNK_OPEN    |
      | STARTFAILED_ALARM_ACTIVE      |
      | STARTFAILED_FUELLOW           |
      | STARTFAILED_GASPEDAL          |
      | STARTFAILED_PRNDL             |
      | STARTFAILED_WINDOWSUNOPEN     |
      | STARTFAILED_MAXATTEMPTS_MET   |
      | STARTFAILED_VEHPOWERMODE      |
      | STARTFAILED_BATTERYLOW        |
      | STOPFAILED_ENG_ALREADYOFF     |
      | DOORS_FAILED_DOOR_OPEN        |
      | FLASHLIGHTS_FAILED_IGNITIONON |
      | FLASHLIGHTS_FAILED_DOOROPEN   |
      | FLASHLIGHTS_FAILED_EXPIRED    |
      | DOORUNLOCK_RELOCKED_FAILED    |
      | DOORUNLOCK_RELOCKED           |
      | NOTIFY_CONTINUE               |
      | NOTIFY_NOCONTINUE             |
      | FAILED_ACTIVE_THEFT_ALARM     |
      | SPEEDLOCKOUT                  |
