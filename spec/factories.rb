# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.first_name            "Ed"
  user.last_name             "Cervenka"
  user.email                 "user@example.com"
  user.password              "foobar"
  user.password_confirmation "foobar"
  user.organisation_name     ""
  user.job_title             ""
  user.address               "Some address"
  user.zip                   "Some zipcode"
  user.country               "Some country"
  user.membership_type       "Org"
  user.currency              "Dollars"
  user.language              "English"
  user.trial_member          "True"
  user.payment_type          "Credit transfer"
  user.trial_used            "False"
  user.years_paid            "09, 10, 11"
  user.cancelled             "False"
  user.active_member         "False"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.define :composer do |composer|
  composer.composer_name "Some Composer"
end
