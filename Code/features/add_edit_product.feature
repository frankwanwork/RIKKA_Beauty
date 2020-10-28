Feature: allow the admin add or edit the product in the product page
 
  As an admin
  So that I can edit the product in the product page
  I want to add or edit the information in the product page

Background: an existing dataset with products and pictures

  # Given the following products exist:
  # | tagName   | tagName  | tagName   | tagName  | tagName   |
  # | productName   | description  | tags   | pics  | price   |
  # | name1         | desc1        | tag1   | pic1  | p1      |
  # | name2         | desc2        | tag2   | pic2  | p2      |
  
  # Given the following pictures exist:
  # | productName   | description  | tags   | pics  | price   |
  # | name1         | desc1        | tag1   | pic1  | p1      |
  # | name2         | desc2        | tag2   | pic2  | p2      |
  
  And I am on the Rikka product page

Scenario: add the product to the dataset
  When I am on the Rikka product page
#   And I fill in "username" with "ec2-user"
#   And I fill in "password" with "rikka"
#   And I press "Log In"
#   Then I should not be on the Rikka home page
#   And I should see "logins in successfully"
  
  
# Scenario: sign in with the wrong username
#   When I am on the Rikka home page
#   And I fill in "username" with "ec2-use"
#   And I fill in "password" with "rikka"
#   And I press "Log In"
#   Then I should be on the Rikka home page
#   And I should see "the username or password is not correct"
  
# Scenario: sign in with the wrong password
#   When I am on the Rikka home page
#   And I fill in "username" with "ec2-use"
#   And I fill in "password" with "rikk"
#   And I press "Log In"
#   Then I should be on the Rikka home page
#   And I should see "the username or password is not correct"
