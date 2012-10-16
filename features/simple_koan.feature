
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

    @wip
    Scenario: Answering a koan correctly displays success
        When I visit the home page
        And I enter "true" in the "answer" field
        And I press the button "submit"
        Then the page shows "Correct!"
        And the page does not show "Incorrect!"

    @wip
    Scenario: Answering a koan incorrectly displays failure
        When I visit the home page
        And I enter "false" in the "answer" field
        And I press the button "submit"
        Then the page shows "Incorrect!"
        And the page does not show "Correct!"
