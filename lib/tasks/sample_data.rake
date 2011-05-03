require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    
    User.create!(:first_name => "Example User",
                 :email => "user@example.com",
                 :password => "foobar",
                 :password_confirmation => "foobar")
    99.times do |n|
      first_name  = Faker::FirstName.first_name
      email = "user-#{n+1}@example.com"
      password  = "password"
      User.create!(:first_name => first_name,
                   :email => email,
                   :password => password,
                   :password_confirmation => password)
    end
  end
end