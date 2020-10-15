Feature: allow the user sign in with correct user name and password
 
  As a valid user
  So that I can sign in and manage the website
  I want to sign in the website using the correct user name and password

Background: an existing user with username "ec2-user" and password "rikka"

  Given the following users exist:
  | username                | password |
  | ec2-user                | rikka    |
  

  And  I am on the Rikka home page
  Then 10 seed movies should exist

Scenario: sign in with the correct username and password
  When I check the following ratings: PG, R
  # enter step(s) to ensure that PG and R movies are visible
#   Then I should see "The Terminator"
#   And I should see "When Harry Met Sally"
#   And I should see "Amelie"
#   And I should see "The Incredibles"
#   And I should see "Raiders of the Lost Ark"
#   # enter step(s) to ensure that other movies are not visible
#   And I should not see "Aladdin"
#   And I should not see "The Help"
#   And I should not see "Chocolat"
#   And I should not see "2001: A Space Odyssey"
#   And I should not see "Chicken Run"