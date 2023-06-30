Feature: Login

    Scenario: Login with valid credentials
        Given user is on the Login page
        When user inputs "<email>" and "<password>"
        And user clicks the login button
        Then page redirects to the Getting Started page
        Examples:
            | email                        | password    |
            | qa.rakamin.jubelio@gmail.com | Jubelio123! |