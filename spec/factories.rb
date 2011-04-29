# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.first_name                  "Ed"
  user.email                 "user@example.com"
  user.password              "foobar"
  user.password_confirmation "foobar"
end

Factory.define :composer do |composer|
  composer.composer_name "Some Composer"
end