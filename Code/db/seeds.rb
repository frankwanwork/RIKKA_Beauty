# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tags = [{:tagName => 'Winter Warm'},
    	  {:tagName => 'Summer Shining'},
    	  {:tagName => 'French'},
    	  {:tagName => 'Fall is coming'},
    	  {:tagName => 'Chic'},
    	  {:tagName => 'Modern'},
    	  {:tagName => 'Drak'},
    	  {:tagName => 'Pink'}
  	 ]

users = [{:email => 'test@tamu.edu', :username => 'admin', :password => 'pass', :user_type => 1, :lastname => 'Bill', :firstname => 'Gates', :phone => '9799859999'}]

tags.each do |tag|
  Tag.create!(tag)
end

users.each do |user|
  User.create!(user)
end
