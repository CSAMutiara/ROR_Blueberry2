Feature: Create a New Report
    As a faculty (2)
    I want to be able to create a new report of any activity
    so that I can publish my information on the achievements report
    
    Scenario: Seeing a form for a new report
        Given there is a logged in user
        And I am on the add new report page
        Then I should see the form for "Year of Report:"
        
    Scenario: Adding a year to the new report form
        Given there is a logged in user
        And I am on the add new report page
        When I fill in the response for the new report form
        And I press "Create Report"
        Then I should be on the show report page
        And I should see "Teaching Activities"
        And I should see "Service Activities"
        And I should see "Research & Professional Activities"
        And I should see "Institutional Support Activities"
        And I should see "References Activities"