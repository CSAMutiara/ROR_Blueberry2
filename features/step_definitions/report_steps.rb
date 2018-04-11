Then("I should see the form for {string}") do |string|
  string
end

When("I fill in the response for the new report form") do
  year = "year" # Write code here that turns the phrase above into concrete actions
end

When /^"I fill in the response for the new report form"$/ do
  steps( %Q(
    And I should see "Teaching Activities"
    And I should see "Service Activities"
    And I should see "Research & Professional Activities"
    And I should see "Institutional Support Activities"
    And I should see "References Activities"
  ) )
end
