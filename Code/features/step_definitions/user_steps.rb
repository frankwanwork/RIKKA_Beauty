Given /the following users exist/ do |users|
  users.hashes.each do |user|
    User.create(user)
  end
end

# Given /the following products exist/ do |products|
#   products.hashes.each do |t|
#     Tag.create(t)
#   end 
# end

# And(/^I attach "(.*?)" to "(.*?)"$/) do |field, file|
And /^(?:|I )attach "([^"]*)" to "([^"]*)"$/ do |field, file|
    page.attach_file field, File.join(Rails.root, file)
end