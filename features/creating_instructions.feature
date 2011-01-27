Feature: Creating Instructions

  Scenario: Validations
    When I go to the home page
    And I press "Save and view instructions"
    Then I should see "can't be blank" within ".title"



  @javascript
  Scenario: Creating
    When I go to the home page
    And I fill in "Title" with "Installing A Ruby 1.8 Stack on Ubuntu 8.10"
    And I am scoped to step 1
    And I fill in "Description" with "Install the system level basics"
    And I fill in command 1 with "apt-get update"
    And I press "add"
    And I fill in command 2 with "apt-get -y install build-essential"
    And I press "add"
    And I fill in command 3 with "apt-get -y install curl wget"
    And I am scoped to the page
    And I press "add step"
    And I am scoped to step 2
    And I fill in "Description" with "Do nothing"
    And I fill in command 1 with "ls"
    And I am scoped to the page
    And I press "Save and view instructions"
    Then I should see:
      """
      Installing A Ruby 1.8 Stack on Ubuntu 8.10
      Install the system level basics
      apt-get update
      apt-get -y install build-essential
      apt-get -y install curl wget
      Do nothing
      ls
      """



  @javascript
  Scenario: Editing after creating
    When I go to the home page
    And I fill in "Title" with "How to do stuff"
    And I am scoped to step 1
    And I fill in "Description" with "Get off your butt"
    And I fill in command 1 with "get off the couch"
    And I press "add"
    And I fill in command 2 with "walk around"
    And I am scoped to the page
    And I press "add step"
    And I am scoped to step 2
    And I fill in "Description" with "Clean up the house"
    And I fill in command 1 with "start cleaning the bathroom"