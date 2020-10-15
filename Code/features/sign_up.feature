Feature: allow new user sign up with their username and password
 
  As a new user
  So that I can create account to the website
  I want to sign up the website using my username and password

Background: an existing user with username "ec2-user" and password "rikka"

  Given the following users exist:
  | username                | password |
  | ec2-user                | rikka    |
  
  And  I am on the Rikka signup page
  
Scenario: sign up with the proper username and password
  When I am on the Rikka signup page
  And I fill in "new_username" with "new-user"
  And I fill in "new_password" with "rikka"
  And I press "Sign Up"
  Then I should be on the Rikka home page
  
Scenario: sign up with the repeated username and password
  When I am on the Rikka signup page
  And I fill in "new_username" with "ec2-user"
  And I fill in "new_password" with "rikka"
  And I press "Sign Up"
  Then I should be on the Rikka home page