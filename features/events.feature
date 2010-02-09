Feature: Event Features
  In order to manage participation in events
  As a user of the system
  I want to be able to create events and register for them
  
  Scenario: User Creates An Event
    Given the following user record
        | login     | password | admin |
        | organizer | secret   | false |
    And I am logged in as "organizer" with password "secret"
    And I am on the homepage
    When I follow "New Event"
    And I fill in "name" with "BarCamp Philly"
    And I fill in "event_short_name" with "bcphilly"
    And I fill in "date" with "9/9/10"
    And I fill in "location" with "UArts Philadelphia, PA"
    And I press "Create"
    Then I should see "Event created!"
    And I should see "BarCamp Philly"
    And I am the organizer of 1 event
    
  
  
  
  
  

  
