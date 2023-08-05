@Login
Feature: Login

    Background:
        Given the user is on the login page

    @PositiveTest
    Scenario: Login with valid credentials
        When the user inputs "<email>" and "<password>"
        And the user clicks the login button
        Then the page redirects to the Getting Started page
        Examples:
            | email                        | password    |
            | qa.rakamin.jubelio@gmail.com | Jubelio123! |

    @NegativeTest
    Scenario: Login with empty fields
        When the user leaves "<field>" empty
        And the user clicks the login button
        Then error message "<message>" is displayed
        Examples:
            | field    | message               |
            | email    | Email harus diisi.    |
            | password | Password harus diisi. |

    @NegativeTest
    Scenario: Login with incorrect credentials
        When the user inputs "<email>" and "<password>"
        And the user clicks the login button
        Then error alert "Password atau email anda salah." is displayed
        Examples:
            | test case          | email                        | password    |
            | Incorrect email    | qa.rakamin@gmail.com         | Jubelio123! |
            | Incorrect password | qa.rakamin.jubelio@gmail.com | Jubelio!    |

    @NegativeTest
    Scenario: Login with invalid inputs
        When the user inputs "<field>" with "<invalidInput>"
        And the user clicks the login button
        Then error message "<message>" is displayed
        Examples:
            | field    | invalidInput             | message                            |
            | email    | qa.rakamin.jubelio       | Format Email tidak valid.          |
            | email    | qa.rakamin.jubelio@gmail | Format Email tidak valid.          |
            | password | Jubel                    | Password harus di antara 6 dan 30. |



