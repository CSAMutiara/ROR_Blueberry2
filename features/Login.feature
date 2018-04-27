Feature: Add Service Activity
    As a faculty (2)
    I want to be able to login using twitter
    so that I can edit activities in my account 
    
    Scenario: Logging in a user 
        Given I am on the homepage 
        Then I should see "Connect With twitter"
        When I follow "Connect With twitter"
        Then I should see "Sign In"