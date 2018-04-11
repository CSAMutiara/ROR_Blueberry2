When /^I fill in the responses for the service activities$/ do
  steps( %Q(
    When I fill in "sactivity[a1]" with "ta1"
    When I fill in "sactivity[a2]" with "ta2"
    When I fill in "sactivity[a3]" with "ta3"
    When I fill in "sactivity[a4]" with "ta4"
    When I fill in "sactivity[a5]" with "ta5"
  ) )
end
