Feature: allow the valid user add or edit the product in the product page
 
  As an valid user
  So that I can edit the product in the product page
  I want to add or edit the information in the product page
  
  Given the following users exist:
  | username             | password  | user_type |
  | admin                | pass      | 1         |
  

Background: an existing dataset with products and pictures
  
Scenario: check the existing product on the product page
  When I am on the Rikka product page
  Then I follow "Products"
  And I should see "Product 1"
  And I should see "Product 2"
  And I should see "Product 3"
  And I should see "Product 4"
  And I should see "Price: $10"
  And I should see "Price: $15"
  And I should see "Price: $20"
  And I should see "French Tip"
  And I should see "Almond"
  And I should see "Stiletto"
  And I should see "Oval"

Scenario: add the product to the dataset
  When I am on the Rikka signin page
  And I fill in "username" with "admin"
  And I fill in "password" with "pass"
  And I press "Sign In"
  Then I follow "Products"
  And I should be on the Rikka product page
  And I follow "Add New"
  And I fill in "new product name" with "new name"
  And I fill in "new description" with "new desc"
  And I fill in "new price" with "30"
  And I attach "new image" to "features/test_image/tmp1.png"
  And I press "Add"
  And I follow "Products"
  Then I should see "new name"
  And I should see "new desc"
  And I should see "Price: $ 30"

Scenario: add a new product and then edit the added product
  When I am on the Rikka signin page
  And I fill in "username" with "admin"
  And I fill in "password" with "pass"
  And I press "Sign In"
  Then I follow "Products"
  And I should be on the Rikka product page
  And I follow "Add New"
  And I fill in "new product name" with "new name"
  And I fill in "new description" with "new desc"
  And I fill in "new price" with "30"
  And I attach "new image" to "features/test_image/tmp1.png"
  And I press "Add"
  And I follow "Products"
  Then I should see "new name"
  And I should see "new desc"
  And I should see "Price: $ 30"
  Then I follow "Edit"
  And I fill in "edit product name" with "new name"
  And I fill in "edit description" with "ddd"
  And I fill in "edit price" with "555"
  And I attach "edit image" to "features/test_image/tmp1.png"
  And I press "Update"
  And I follow "Products"
  Then I should see "new name"
  And I should not see "new desc"
  And I should not see "Price: $ 30"
  And I should see "ddd"
  And I should see "Price: $ 555"
  
  
Scenario: add the product with the same name, then the product should not be added and stays at the adding page
  When I am on the Rikka signin page
  And I fill in "username" with "admin"
  And I fill in "password" with "pass"
  And I press "Sign In"
  Then I follow "Products"
  And I should be on the Rikka product page
  And I follow "Add New"
  And I fill in "new product name" with "new name"
  And I fill in "new description" with "new desc"
  And I fill in "new price" with "30"
  And I attach "new image" to "features/test_image/tmp1.png"
  And I press "Add"
  # Then I should be on the Rikka product page
  And I follow "Products"
  And I follow "Add New"
  And I fill in "new product name" with "new name"
  And I fill in "new description" with "new desc"
  And I fill in "new price" with "30"
  And I attach "new image" to "features/test_image/tmp1.png"
  And I press "Add"
  Then I should be on the Rikka add page
  