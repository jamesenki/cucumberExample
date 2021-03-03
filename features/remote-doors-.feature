Feature: Remote Doors 

  Users Want to Open Door Remotely

  @ORPHAN
  Scenario Outline: Remote Operation From CWP
    
        Given User initiates a Remote Door "<Operation>" request from the Application
        And has supplied the correct <PIN>
        When The TBM receives the request
        Then The TBM returns "<Response_Message>"
        And the User is notified of response Remote "<Operation>" in Progress via PUSH and in App
    
        Examples:
    
            | Operation     | Response_Message |
            | LOCK          | SUCCESS_CONTINUE |
            | UNLOCK        | SUCCESS_CONTINUE |
    
