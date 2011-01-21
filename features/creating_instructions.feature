Feature: Creating Instructions
  In order to something
  As a someone
  I want to something

  @javascript
  Scenario: Simple
    When I go to the home page
    # And I fill in "Title" with "Installing A Ruby 1.8 Stack on Ubuntu 8.10"
    # And I fill in "Step 1" with "Install the system level basics"
    # And I fill in "Command 1" with "apt-get update" within Step 1
    # And I press "add" within Step 1
    # And I fill in "Command 2" with "apt-get -y install build-essential" within Step 1
    # And I press "add" within Step 1
    # And I fill in "Command 3" with "apt-get -y install curl wget" within Step 1
    # And I press "add step"
    # And I fill in "Step 2" with "Do nothing"
    # And I fill in "Command 1" with "ls" within Step 2
    # And I press "Save and view instructions"
    #
    # Then I should see:
    #   """
    #   Installing A Ruby 1.8 Stack on Ubuntu 8.10
    #
    #   Install the system level basics
    #   apt-get update
    #   apt-get -y install build-essential
    #   apt-get -y install curl wget
    #
    #   Do Nothing
    #   ls
    #   """