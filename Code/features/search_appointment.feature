Feature: allow the valid user search an appointment on the website
 
  As an valid user
  So that I can search an appointment(s) in the appointment page
  I want to search an appointment(s) in the appointment page
  
  Given the following users exist:
  | username             | password  | user_type |
  | admin                | pass      | 1         |
  | not_admin            | pass      | 0         |
  

Background: there is an admin user and a non-admin user already in the database
  
 
Scenario: search appointment based on conditions
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
  
  Then I follow "Make Appointment"
  And I select "2022" from "appointments_appt_date_1i"
  And I select "March" from "appointments_appt_date_2i"
  And I select "10" from "appointments_appt_date_3i"
  And I select "14:00" from "appointments_timeslot"
  And I fill in "phone number" with "12345678"
  And I fill in "email" with "123@gmail.com"
  And I press "Submit"
  
  # Then I follow "Make Appointment"
  And I select "2019" from "appt_date2__1i"
  And I select "March" from "appt_date2__2i"
  And I select "10" from "appt_date2__3i"
  And I select "10:00" from "timeslot1"
  And I select "2021" from "appt_date1__1i"
  And I select "March" from "appt_date1__2i"
  And I select "10" from "appt_date1__3i"
  And I select "14:00" from "timeslot2"
  
  And I press "Search"
  Then I should see "2020-12-05"
  Then I should not see "2022-03-10"
  
  
  
  
Scenario: if search condition is null, just return all the conditions
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
  
  Then I follow "Make Appointment"
  And I select "2022" from "appointments_appt_date_1i"
  And I select "March" from "appointments_appt_date_2i"
  And I select "10" from "appointments_appt_date_3i"
  And I select "14:00" from "appointments_timeslot"
  And I fill in "phone number" with "12345678"
  And I fill in "email" with "123@gmail.com"
  And I press "Submit"
  
  And I press "Search"
  And I press "Search"
  Then I should see "2020-12-05"
  Then I should see "2022-03-10"