# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  # == Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr
  config.mock_with :rspec

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  def test_sign_in(user)
    controller.sign_in(user)
  end
  
  def integration_sign_in(user)
    visit signin_path
    fill_in :email,    :with => user.email
    fill_in :password, :with => user.password
    click_button
  end  
end

module ActiveMembersHelpers
  def should_require_active_members(method)
    describe "authentication" do
      def login(user)
        controller.instance_variable_set(:@current_user, user)
      end

      describe "of inactive members" do
        before(:each) do
          @user = Factory.create(:user, :active_member => false)
        end

        it "should redirect to payment page" do
          login(@user)
          send(method)
          response.should redirect_to(user_path(@user))
        end
      end

      describe "of active members" do
        before(:each) do
          @user = Factory.create(:user, :active_member => true)
        end

        it "should display the page" do
          login(@user)
          send(method)
          response.should be_success
        end
      end
    end
  end
end
