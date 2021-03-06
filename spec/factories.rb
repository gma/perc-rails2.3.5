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
  user.phone_number          "0000"
  user.membership_type       "Org"
  user.currency              "Dollars"
  user.language              "English"
  user.trial_member          "True"
  user.payment_type          "Credit transfer"
  user.trial_used            "False"
  user.years_paid            "09, 10, 11"
  user.cancelled             "False"
  user.active_member         "False"
  user.admin                 "False"
end

Factory.define :active_member do |user|
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
  user.phone_number          "0000"
  user.membership_type       "Org"
  user.currency              "Dollars"
  user.language              "English"
  user.trial_member          "True"
  user.payment_type          "Credit transfer"
  user.trial_used            "False"
  user.years_paid            "09, 10, 11"
  user.cancelled             "False"
  user.active_member         "True"
  user.admin                 "False"
end

Factory.define :admin do |admin|
  admin.first_name            "Ed"
  admin.last_name             "Cervenka"
  admin.email                 "user@example.com"
  admin.password              "foobar"
  admin.password_confirmation "foobar"
  admin.organisation_name     ""
  admin.job_title             ""
  admin.address               "Some address"
  admin.zip                   "Some zipcode"
  admin.country               "Some country"
  admin.phone_number          "0000"
  admin.membership_type       "Org"
  admin.currency              "Dollars"
  admin.language              "English"
  admin.trial_member          "True"
  admin.payment_type          "Credit transfer"
  admin.trial_used            "False"
  admin.years_paid            "09, 10, 11"
  admin.cancelled             "False"
  admin.active_member         "False"
  admin.admin                 "True"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.define :composer do |composer|
  composer.composer_name "Some Composer"
end

Factory.define :work do |work|
  work.work_name 'Symphony'
  work.association :composer
end

Factory.define :workdetail do |detail|
  detail.movement_id 1
  detail.movement_name 'Complete'
  detail.association :work
end
