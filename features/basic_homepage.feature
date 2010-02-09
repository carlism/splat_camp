Feature: Basic Homepage Functions
    In order get information about SplatCamp
    As a visitor to the site
    I want to find information and be able to sign-up

    Scenario: First Visit
        Given I am logged out
        When I go to the homepage
        Then I should see "Log in"
        And I should see "Sign up"
            
    Scenario: Create New User
        Given I am on the homepage
        When I follow "Sign up"
        And I fill in "login" with "test_account"
        And I fill in "email" with "dev@null.com"
        And I fill in "password" with "1234567"
        And I fill in "user_password_confirmation" with "1234567"
        And I press "Sign up"
        Then I should see "Account registered!"
        And I should see "test_account"
        And I should see "Log out"

    Scenario: Logging In
        Given I am on the homepage
        And the following user record
            | login        | password | admin |
            | test_account | 1234567  | false |
        When I follow "Log in"
        And I fill in "login" with "test_account"
        And I fill in "password" with "1234567"
        And I press "Log in"
        Then I should see "You are now logged in"
        And I should see "test_account"
        And I should see "Log out"
