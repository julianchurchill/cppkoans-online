
Feature: home page
    In order to gain a understanding of the site layout
    As a site visitor
    I want to see some content on the home page

    Scenario: The home page shows a welcome message
        When I visit the home page
        Then the home page shows "Welcome to C++ Koans Online!"
