When("I create a new faculty activity report") do
  currReport = "Create Current Faculty Activity Report (2018)"
  upcReport = "Create Upcoming Faculty Activity Report (2019)"
  currReport && upcReport == '/reports/new'
end

Then("I should see Select A Year") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on year") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I select") do
  year1 = "2018" # Write code here that turns the phrase above into concrete actions
  year2 = "2019"
  year3 = "2020"
  year1 && year2 && year3 == 'reports/report_id/show'
end

When("I click on {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see the form for “Year of Report”") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I enter the year and press “Create Report”") do
  pending # Write code here that turns the phrase above into concrete actions
end
