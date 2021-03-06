Feature: Add Teaching Activity
    As a faculty (2)
    I want to be able to add a new teaching activity to my activity report
    so that I can publish my information on the Achievements report
    
    Scenario: Seeing a form for new teaching activity
        Given there is a logged in user
        And I am on the add new teaching activity page
        Then I should see "Please describe your activities and experience as a teacher during the year. Elaborate on pedagogical activities, curricular transformation or revision and new course development."
        And  I should see "Please read your teaching evaluations for both semesters of the past calendar year and comment on them here. Are there any suggestions which you find useful and intend to incorporate into your courses in the future? Are there any comments which you wish to refute or explain?"
        And  I should see "For each one of the courses you have taught in the spring and fall of the last calendar year, please indicate how well your students are achieving the learning outcomes of your courses and the learning outcomes of the majors or programs your courses contribute to; include any evidence you have. Do you envisage making any changes in your courses as a result of assessment activities, or for any other reasons? Please, also consult with your chair about any assessment information he or she may need from you to complete the departmental report."
        And  I should see "Any other comments you would like to make about your teaching?"
        
    Scenario: Add a new teaching activity to the teaching page
        Given there is a logged in user
        And I am on the add new teaching activity page
        When I fill in the responses for the teaching activities
        And I press "Save"
        Then I should be on the show teaching activities page
        And I should see "ta1"
        And I should see "ta2"
        And I should see "ta3"
        And I should see "ta4"