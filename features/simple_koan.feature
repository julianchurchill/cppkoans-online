
Feature: simple koan
    In order to perform a koan
    As a site visitor
    I want to see a koan to fill in and be able to complete it

    Scenario: The home page has a single koan on it
        When I visit the home page
        Then the page shows "First simple koan"
        And the page shows "Enter the answer in the box provided and hit the submit button"
        And the page shows "bool true = "
        And the page has a text box with id "answer"
        And the text box with id "answer" is empty
        And the page has a button with id "submit"
        And the button with id "submit" has the text "Submit"

    # Note this scenario is a replacement for the one above
    # Once this is passing the one above can be removed as well
    # as any associated code to make it work, e.g. text index,html.erb
    @wip
    Scenario: The home page shows the first koan available
        Given a koan is set up like this
            | instructions | make i equal to 14 |
            | code         | int i = ___; |
            | answer       | 14 |
        When I visit the home page
        Then the page shows "make i equal to 14"
        And the page shows "int i = "
        And the page has a text box with id "answer"
        And the text box with id "answer" is empty
        And the page has a button with id "submit"
        And the button with id "submit" has the text "Submit"

    @wip
    Scenario: Answering a koan correctly displays success
        Given a koan is set up like this
            | instructions | make i equal to 14 |
            | code         | int i = ___; |
            | answer       | 14 |
        When I visit the home page
        And I enter "14" in the "answer" field
        And I press the button "submit"
        Then the page shows "Correct!"
        And the page does not show "Incorrect!"

    @wip
    Scenario: Answering a koan incorrectly displays failure
        Given a koan is set up like this
            | instructions | make i equal to 14 |
            | code         | int i = ___; |
            | answer       | 14 |
        When I visit the home page
        And I enter "99" in the "answer" field
        And I press the button "submit"
        Then the page shows "Incorrect!"
        And the page does not show "Correct!"
