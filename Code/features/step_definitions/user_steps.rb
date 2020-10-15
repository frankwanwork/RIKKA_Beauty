Given /the following users exist/ do |users|
  users.hashes.each do |user|
    User.create(user)
  end
end
