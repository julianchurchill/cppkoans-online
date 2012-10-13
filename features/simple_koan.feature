
@wip
Feature: simple koan
    In order to perform a koan
    As a site visitor
    I want to see a koan to fill in and be able to complete it

    Scenario: The home page has a single koan on it
        When I visit the home page
        Then the home page shows "First simple koan"
        And the home page shows "Enter the answer in the box provided and hit the submit button"
        And the home page shows "bool true = "
        And the home page has an empty text box
        And the home page has a button with the text "Submit"

    Scenario: Answering a koan correctly displays success
        When I visit the home page
        And I enter "true"
        Then the home page shows "Correct!"
        And the home page does not show "Incorrect!"

    Scenario: Answering a koan incorrectly displays failure
        When I visit the home page
        And I enter "false"
        Then the home page shows "Incorrect!"
        And the home page does not show "Correct!"
