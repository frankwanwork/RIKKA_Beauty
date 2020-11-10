Feature: allow the user search for a product they are interested in
 
  As an valid user
  So that I can search the product in the product page
  I want to search the product information based on the product name

Background: a dataset with products and pictures
  
Scenario: search products with an ambiguous name search
  When I am on the Rikka signin page
  And I fill in "username" with "admin"
  And I fill in "password" with "pass"
  And I press "Sign In"
  Then I follow "Products"
  And I should be on the Rikka product page
  
  And I follow "Add New"
  And I fill in "new product name" with "new name 1"
  And I fill in "new description" with "new desc 1"
  And I fill in "new price" with "30"
  And I attach "new image" to "features/test_image/tmp1.png"
  And I press "Add"
  And I follow "Products"
  
  And I follow "Add New"
  And I fill in "new product name" with "new name 2"
  And I fill in "new description" with "new desc 2"
  And I fill in "new price" with "30"
  And I attach "new image" to "features/test_image/tmp1.png"
  And I press "Add"
  And I follow "Products"
  And I fill in "product_name" with "new name"
  And I press "Search"
  
  Then I should see "new name 1"
  Then I should see "new name 2"
  
Scenario: search products with an exact name search
  When I am on the Rikka signin page
  And I fill in "username" with "admin"
  And I fill in "password" with "pass"
  And I press "Sign In"
  Then I follow "Products"
  And I should be on the Rikka product page
  
  And I follow "Add New"
  And I fill in "new product name" with "new name 1"
  And I fill in "new description" with "new desc 1"
  And I fill in "new price" with "30"
  And I attach "new image" to "features/test_image/tmp1.png"
  And I press "Add"
  And I follow "Products"
  
  And I follow "Add New"
  And I fill in "new product name" with "new name 2"
  And I fill in "new description" with "new desc 2"
  And I fill in "new price" with "30"
  And I attach "new image" to "features/test_image/tmp1.png"
  And I press "Add"
  And I follow "Products"
  And I fill in "product_name" with "new name 1"
  And I press "Search"
  
  Then I should see "new name 1"
  Then I should not see "new name 2"
  
Scenario: search non-existing product, and do not return other results
  When I am on the Rikka signin page
  And I fill in "username" with "admin"
  And I fill in "password" with "pass"
  And I press "Sign In"
  Then I follow "Products"
  And I should be on the Rikka product page
  
  And I follow "Add New"
  And I fill in "new product name" with "new name 1"
  And I fill in "new description" with "new desc 1"
  And I fill in "new price" with "30"
  And I attach "new image" to "features/test_image/tmp1.png"
  And I press "Add"
  And I follow "Products"
  
  And I fill in "product_name" with "not existing"
  And I press "Search"
  
  Then I should not see "not existing"
  And I should not see "new name 1"