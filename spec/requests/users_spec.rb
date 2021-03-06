require 'spec_helper'

describe "Users" do
  
  describe "signup" do
    
    describe "failure" do
    
      it "should not make a new user" do
        lambda do
          visit signup_path
          fill_in "First name",        :with => ""
          fill_in "Last name",         :with => ""
          fill_in "Organisation name", :with => ""
          fill_in "Job title",         :with => ""
          fill_in "Address",           :with => ""
          fill_in "Zip",               :with => ""
          fill_in "Country",           :with => ""
          fill_in "Phone number",      :with => ""
          fill_in "Email",             :with => ""
          fill_in "Password",          :with => ""
          fill_in "Confirmation",      :with => ""
          click_button
          response.should render_template('users/new')
          response.should have_selector("div#error_explanation")
        end.should_not change(User, :count)
      end
    end
    
    describe "success" do
      
      it "should make a new user" do
        lambda do
          visit signup_path
          fill_in "First name",        :with => "Example User"
          fill_in "Last name",         :with => "Surname"
          fill_in "Organisation name", :with => "Some orchestra"
          fill_in "Job title",         :with => "Some job title"
          fill_in "Address",           :with => "Some address"
          fill_in "Zip",               :with => "Some postcode" 
          fill_in "Country",           :with => "Some country"
          fill_in "Phone number",      :with => "000 0000 00"
          fill_in "Email",             :with => "user@example.com"
          fill_in "Password",          :with => "foobar"
          fill_in "Confirmation",      :with => "foobar"
          click_button
          
          response.should render_template('users/show')
        end.should change(User, :count).by(1)
      end
    end
  end  
    
  describe "sign in/out" do
      
    describe "failure" do
      it "should not sign a user in" do
        visit signin_path
        fill_in :email,    :with => ""
        fill_in :password, :with => ""
        click_button
        response.should have_selector("p", :content => "Invalid")
      end
    end 
      
    describe "success" do
      it "should sign a user in and out" do
        user = Factory(:user)
        visit signin_path
        fill_in :email,    :with => user.email
        fill_in :password, :with => user.password
        click_button
        controller.should be_signed_in
        click_link "Sign out"
        controller.should_not be_signed_in
      end
    end                                    
  end
end
