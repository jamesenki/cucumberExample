Feature: Remote Doors 

  Users Want to Open Door Remotely

  Background:
    Given the Vehicle is in "Ignition Off" Status
    And the vehicle is in park

  Scenario Outline: Remote Operation From CWP
    Given User initiates a Remote Door "<Operation>" request from the Application
    And has supplied the correct <PIN>
    When The TBM receives the request
    Then The TBM returns "<Response_Message>"
    And the User is notified of response Remote "<Operation>" in Progress via PUSH and in App
    
    Examples:
      | Operation | Response_Message |
      | LOCK      | SUCCESS_CONTINUE |
      | UNLOCK    | SUCCESS_CONTINUE |


  Scenario Outline: Remote Door Operation from Call Center
     Given the User has Requested a Call Center Agent To "<Operation>" their Vehicle
        Given the User has supplied a PIN to Agent
        And the Call Center Agent has validated the PIN
        Given the Call Center Agent has initiated the Vehicle "<Operation>" request
        When The TBM receives the request
        Then The TBM returns "<Response_Message>"
        And the User is notified "<Operation>" in Progress  via PUSH and in App
        And the Call Center Agent is notified "<Operation>" in Progress
        And the Call Center Agent sends a PIN reset request to the User
            Examples:
    
                | Operation     | Response_Message |
                | LOCK          | SUCCESS_CONTINUE |
                | UNLOCK        | SUCCESS_CONTINUE |
    
    
