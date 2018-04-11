When /^I fill in the responses for the teaching activities$/ do
  steps( %Q(
    When I fill in "tactivity[a1]" with "ta1"
    When I fill in "tactivity[a2]" with "ta2"
    When I fill in "tactivity[a3]" with "ta3"
    When I fill in "tactivity[a4]" with "ta4"
  ) )
end
