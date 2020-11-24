Feature: allow the valid user add or edit an appointment on the website
 
  As an valid user
  So that I can add or edit an appointment in the appointment page
  I want to add or edit an appointment in the appointment page
  
  Given the following users exist:
  | username             | password  | user_type |
  | admin                | pass      | 1         |
  | not_admin            | pass      | 0         |
  

Background: there is an admin user and a non-admin user already in the database

Scenario: add and delete a new appointment
  Given a valid admin user
  When I am on the Rikka appointments page
  And I fill in "username" with "admin"
  And I fill in "password" with "pass"
  And I press "Sign In"
  Then I follow "Appointment"
  Then I should be on the Rikka appointments page
  
  Then I follow "Make Appointment"
  And I select "2020" from "appointments_appt_date_1i"
  And I select "December" from "appointments_appt_date_2i"
  And I select "5" from "appointments_appt_date_3i"
  And I select "10:00" from "appointments_timeslot"
  And I fill in "phone number" with "12345678"
  And I fill in "email" with "123@gmail.com"
  And I press "Submit"
  
  Then I should see "12345678"
  And I should see "123@gmail.com"
    # id is i
  And I should see "2020-12-05"
  
#     # id is i+1
  Then I press "Delete"
  
  Then I should not see "12345678"
  And I should not see "123@gmail.com"
  And I should not see "2020-12-05"
  
Scenario: edit an existing appointment
  Given a valid admin user
  When I am on the Rikka appointments page
  And I fill in "username" with "admin"
  And I fill in "password" with "pass"
  And I press "Sign In"
  Then I follow "Appointment"
  Then I should be on the Rikka appointments page
  
  Then I follow "Make Appointment"
  And I select "2020" from "appointments_appt_date_1i"
  And I select "December" from "appointments_appt_date_2i"
  And I select "5" from "appointments_appt_date_3i"
  And I select "10:00" from "appointments_timeslot"
  And I fill in "phone number" with "12345678"
  And I fill in "email" with "123@gmail.com"
  And I press "Submit"
  
  Then I should see "12345678"
  And I should see "123@gmail.com"
  And I should see "2020-12-05"
  
  Then I follow "Edit Appointment"
#   # id is i+2
  And I fill in "appointments_id" with "92"
  And I select "2021" from "appointments_appt_date_1i"
  And I select "March" from "appointments_appt_date_2i"
  And I select "10" from "appointments_appt_date_3i"
  And I select "14:00" from "appointments_timeslot"
  And I fill in "appointments_user_tele" with "87654321"
  And I fill in "appointments_user_email" with "321@gmail.com"
  And I press "Submit"
  
  Then I should see "2021-03-10"
  Then I should see "14:00"
  Then I should see "87654321"
  Then I should see "321@gmail.com"
  

Scenario: should not access appointment page before logging in
  When I am on the Rikka appointments page
  Then I should be on the Rikka signin page
  
  When I am on the Rikka appointments drop page
  Then I should be on the Rikka signin page
  
  When I am on the Rikka appointments edit page
  Then I should be on the Rikka signin page
  
  When I am on the Rikka appointments add page
  Then I should be on the Rikka signin page
 
  