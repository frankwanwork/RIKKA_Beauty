# Feature: allow the user sign in with correct username and password
 
#   As a valid user
#   So that I can sign in and manage the website
#   I want to sign in the website using the correct user name and password

# Background: an existing user with username "ec2-user" and password "rikka"

#   Given the following users exist:
#   | username                | password |  email              |
#   | ec2-user                | rikka    |  email_0_@gamil.com |
  
#   And I am on the Rikka home page

# Scenario: sign in with the correct username and password
#   When I am on the Rikka home page
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
