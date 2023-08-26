@Login
Feature: Login

    As a registered_user
    I want to log in to my account
    So that I can access my personalized information and use the features of the platform

    Background:
        Given the user is on the login page

    @PositiveTest
    Scenario: Login with valid credentials
        When the user logs in with valid email and password
        Then the page redirects to the Getting Started page

    @NegativeTest
    Scenario: Login with empty fields
        When the user logs in without "<field>"
        Then an error "message" "<message>" is displayed
        Examples:
            | field    | message               |
            | email    | Email harus diisi.    |
            | password | Password harus diisi. |

    @NegativeTest
    Scenario: Login with incorrect credentials
        When the user logs in with the "<field>" "<input>"
        Then an error "alert" "Password atau email anda salah." is displayed
        Examples:
            | field    | input                |
            | email    | qa.rakamin@gmail.com |
            | password | Jubelio!             |

    @NegativeTest
    Scenario: Login with invalid inputs
        When the user logs in with the "<field>" "<input>"
        Then an error "message" "<message>" is displayed
        Examples:
            | field    | input                    | message                            |
            | email    | qa.rakamin.jubelio       | Format Email tidak valid.          |
            | email    | qa.rakamin.jubelio@gmail | Format Email tidak valid.          |
            | password | Jubel                    | Password harus di antara 6 dan 30. |



