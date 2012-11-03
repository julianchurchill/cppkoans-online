
Feature: simple koan
    In order to perform a koan
    As a site visitor
    I want to see a koan to fill in and be able to complete it

    Scenario: The home page shows the first koan available
        Given a koan is set up like this
            | question      | make i equal to 14 |
            | code          | int i = ___; |
            | actual_answer | 14 |
        When I visit the home page
        Then the page shows "make i equal to 14"
        And the page contains "int i = " followed by a text box with id "answer" followed by ";"
        And the text box with id "answer" is empty
        And the page has a button with id "submit"
        And the button with id "submit" has the text "Submit"

    @wip
    Scenario: Answering a koan correctly displays success
        Given a koan is set up like this
            | question      | make i equal to 14 |
            | code          | int i = ___; |
            | actual_answer | 14 |
        When I visit the home page
        And I enter "14" in the "answer" field
        And I press the button "submit"
        Then the page shows "Correct!"
        And the page does not show "Incorrect!"

    @wip
    Scenario: Answering a koan incorrectly displays failure
        Given a koan is set up like this
            | question      | make i equal to 14 |
            | code          | int i = ___; |
            | actual_answer | 14 |
        When I visit the home page
        And I enter "99" in the "answer" field
        And I press the button "submit"
        Then the page shows "Incorrect!"
        And the page does not show "Correct!"

    @future
    Scenario: An koan is formatted with the correct CSS classes and DIVs

    @future
    Scenario: An unanswered koan is displayed without additional colours

    @future
    Scenario: A correctly answered koan is coloured green

    @future
    Scenario: An incorrectly answered koan is coloured red

