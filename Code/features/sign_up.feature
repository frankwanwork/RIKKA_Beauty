Feature: allow new user sign up with their username and password
 
  As a new user
  So that I can create account to the website
  I want to sign up the website using my username and password

Background: an existing user with username "ec2-user" and password "rikka"

  Given the following users exist:
  | username                | password |  email              |
  | ec2-user                | rikka    |  email_0_@gmail.com |
  
  And  I am on the Rikka signup page
  
Scenario: sign up with the proper username, password and email
  When I am on the Rikka signup page
  And I fill in "new_username" with "new-user"
  And I fill in "new_password" with "rikka"
  And I fill in "new_password_rep" with "rikka"
  And I fill in "new_email" with "email_1_@gmail.com"
  And I press "Sign Up"
  Then I should be on the Rikka signin page
  
Scenario: sign up and become the admin
  When I am on the Rikka signup page
  And I fill in "new_username" with "admin1"
  And I fill in "new_password" with "rikka"
  And I fill in "new_password_rep" with "rikka"
  And I fill in "new_email" with "email_admin_@gmail.com"
  And I fill in "security_code" with "rikka"
  And I press "Sign Up"
  Then I should be on the Rikka signin page
  # Then I should see "Email or Username already exists!"
  
Scenario: sign up with the repeated username
  When I am on the Rikka signup page
  And I fill in "new_username" with "ec2-user"
  And I fill in "new_password" with "rikka"
  And I fill in "new_password_rep" with "rikka"
  And I fill in "new_email" with "email_1_@gmail.com"
  And I press "Sign Up"
  Then I should be on the Rikka signup page
  # Then I should see "Email or Username already exists!"
  
  