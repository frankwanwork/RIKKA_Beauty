# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the (Rikka )?home\s?page$/ then '/users/index'
    when /^the (Rikka )?signin\s?page$/ then '/users/signin'
    when /^the (Rikka )?signup\s?page$/ then '/users/signup'
    when /^the (Rikka )?add\s?page$/ then '/product/add'
    when /^the (Rikka )?edit\s?page$/ then '/product/edit'
    when /^the (Rikka )?product\s?page$/ then '/product/show'
    when /^the (Rikka )?default\s?page$/ then '/'
    
    when /^the (Rikka )?appointments\s?page$/ then '/appointments/show'
    when /^the (Rikka )?appointments drop\s?page$/ then '/appointments/drop'
    when /^the (Rikka )?appointments edit\s?page$/ then '/appointments/edit'
    when /^the (Rikka )?appointments add\s?page$/ then '/appointments/add'
      
    when /^the (Rikka )?delete\s?page$/ then '/appointments/drop?id=70'

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
