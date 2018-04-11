Feature: Add Service Activity
    As a faculty (2)
    I want to be able to add a new service activity to my activity report
    so that I can publish my information on the Achievements report
    
    Scenario: Seeing a form for new service activity
        Given there is a logged in user
        And I am on the add new service activity page
        Then I should see "How have you contributed service to your department or to the University at large over the last calendar year? Detail committee participation, curricular development, and anything else that has contributed to strengthening AUP’s learning environment and/or profile."
        And  I should see "What kinds of departmental or university service do you plan to participate in next year? This question can be answered in dialogue with the department chair."
        And  I should see "Please elaborate on any extra-curricular or co-curricular activities, such as study trips, mentoring of student clubs, oversight of student publications,..."
        And  I should see "Have you incorporated assessment of student learning into the programs in which you play role this year? Have any changes been made as a result of assessment activities, or for any other reasons, in or across departments in which you play a role? "
        And  I should see "Any other comments you would like to make about your service?"
        
    Scenario: Add a new teaching activity to the service page
        Given there is a logged in user
        And I am on the add new service activity page
        When I fill in the responses for the service activities
        And I press "Save"
        Then I should be on the show service activities page
        And I should see "ta1"
        And I should see "ta2"
        And I should see "ta3"
        And I should see "ta4"
        And I should see "ta5"