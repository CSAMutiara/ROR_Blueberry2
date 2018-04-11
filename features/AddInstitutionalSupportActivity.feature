Feature: Add Institutional Support Activity
    As a faculty (2)
    I want to be able to add a new institutional support activity to my activity report
    so that I can publish my information on the Achievements report
    
    Scenario: Add a new institutional support activity to the institutional support page
        Given there is a logged in user
        And I am on the add new institutional support activity page
        Then I should see "What kinds of resources would support you in your research and professional activity? The Office of Academic Affairs will do its best to accommodate faculty requests in the range of the limits of existing policies and available annual funding."
        And I should see "How has your department supported you in your pedagogical and professional efforts this year?"
        And I should see "How has the Office of Academic Affairs, or University management as a whole, supported you in your pedagogical and professional efforts this year?"
        And I should see "If you would like to request a course release for research and/or service for next year, please outline your project and provide arguments for why this release should be granted."
        And I should see "If you would like to request funding for projects for next year, please outline your projects and provide arguments for why funds should be granted. PLEASE NOTE that in each of the cases below there is a separate application procedure which you will need to follow. I would like to request funding through: a) Mellon funds b) Faculty Development Funds c) Formation Professionnelle Continue d) Other"
        And I should see "Any other comments you would like to make about institutional support?"
