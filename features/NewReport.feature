Feature: Create a New Report
    As a faculty,
    I want to be able to create a new report of any activity
    so that I can publish my information on the achievements report
    
Scenario: Seeing current and upcoming reports
	Given there is a logged in user
	And I am on the home page
	Then I should see "Create Current Faculty Activity Report (2018)"
	And I should see "Create Upcoming Faculty Activity Report (2019)"

Scenario: Adding an activity to the report
	When I create a new faculty activity report
	And I am on the add new report page
	And I should see "Select A Year"
	When I select
	And I am on the show report page
	Then I should see "Summary"
	
	When I click on "Create Upcoming Faculty Activity Report (2019)"
	Then I should see the form for “Year of Report”
	When I enter the year and press “Create Report”
	Then I should be on the show report page of that year 
