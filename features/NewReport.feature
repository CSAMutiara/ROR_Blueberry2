Feature: Create a New Report
    As a faculty (2)
    I want to be able to create a new report of any activity
    so that I can publish my information on the achievements report
    
Scenario: Seeing current and upcoming reports
	Given there is a logged in user
	And I am on the home page
	Then I should see Current Faculty Activity Report
	And I should see Upcoming Faculty Activity Report.

Scenario: Adding an activity to the report
	When I click on Current Faculty Activity Report
	Then I should see the form for “Year of Report”
	When I enter the year and press “Create Report”
	Then I should be on the show report page of that year. 
	
	When I click on Upcoming Faculty Activity Report
	Then I should see the form for “Year of Report”
	When I enter the year and press “Create Report”
	Then I should be on the show report page of that year.    
     
