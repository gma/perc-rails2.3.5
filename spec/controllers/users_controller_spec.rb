require 'spec_helper'

describe UsersController do
  render_views
  
  describe "GET 'index'" do

    describe "for non-admin users" do
      it "should deny access" do
        get :index
        response.should redirect_to(signin_path)
        flash[:notice].should =~ /sign in/i
      end
    end

    
  end
  
  describe "GET 'show'" do
    
    before(:each) do
      @user = Factory(:user)
    end
    
    it "should be successful" do
      get :show, :id => @user
      response.should be_success
    end
    
    it "should find the right user" do
      get :show, :id => @user
      assigns(:user).should == @user
    end
    
    it "should have the right title" do
      get :show, :id => @user
      response.should have_selector("title", :content => @user.first_name)
    end
    
    it "should include the user's first name" do
      get :show, :id => @user
      response.should have_selector("h1", :content => @user.first_name)
    end
    
    it "should include the user's last name" do
      get :show, :id => @user
      response.should have_selector("h1", :content => @user.last_name)
    end
    
    it "should include the user's address" do
      get :show, :id => @user
      response.should have_selector("p", :content => @user.address)
    end
    
    it "should include the user's zip code" do
      get :show, :id => @user
      response.should have_selector("p", :content => @user.zip)
    end
    
    it "should include the user's country" do
      get :show, :id => @user
      response.should have_selector("p", :content => @user.country)
    end
    
    it "should include the user's phone number" do
      get :show, :id => @user
      response.should have_selector("p", :content => @user.phone_number)
    end
        
  end        

  describe "GET 'new'" do
    it "should be successful" do
      get :new
      response.should be_success
    end
    
    it "should have the right title" do
      get :new
      response.should have_selector("title", :content => "Percussion Orchestrations Registration")
    end 
    
    it "should have a first name field" do
      get :new
      response.should have_selector("input[name='user[first_name]'][type='text']")
    end  
    
    it "should have a last name field" do
      get :new
      response.should have_selector("input[name='user[last_name]'][type='text']")
    end
    
    it "should have an address field" do
      get :new
      response.should have_selector("input[name='user[address]'][type='text_area']")
    end
    
    it "should have a zip field" do
      get :new
      response.should have_selector("input[name='user[zip]'][type='text']")
    end
    
    it "should have a country field" do
      get :new
      response.should have_selector("input[name='user[country]'][type='text']")
    end
    
    it "should have a phone number field" do
      get :new
      response.should have_selector("input[name='user[phone_number]'][type='text']")
    end
    
    it "should have an email field" do
      get :new
      response.should have_selector("input[name='user[email]'][type='text']")
    end
    
    it "should have a password field" do
      get :new
      response.should have_selector("input[name='user[password]'][type='password']")
    end
    
    it "should have a password confirmation field" do
      get :new
      response.should have_selector("input[name='user[password_confirmation]'][type='password']")
    end   
        
  end 
  
  describe "POST 'create'" do
    
    describe "failure" do
      
      before(:each) do
        @attr = { :first_name => "", :last_name => "", :address => "", :zip => "", :country => "", :phone_number => "", :email => "", :password => "", 
                  :password_confirmation => "" }
      end
      
      it "should not create a user" do
        lambda do
          post :create, :user => @attr
        end.should_not change(User, :count)
      end
      
      it "should have the right title" do
        post :create, :user => @attr
        response.should have_selector("title", :content => "Percussion Orchestrations Registration")
      end
      
      it "should render the 'new' page" do
        post :create, :user => @attr
        response.should render_template('new')
      end
    end
    
    describe "success" do
      
      before(:each) do
        @attr = { :first_name => "New User", :last_name => "Surname", :address => "Some address", :zip => "Some postcode", :country => "Some country", :phone_number => "0000", :email => "user@example.com",
                  :password => "foobar", :password_confirmation => "foobar" }
      end
      
      it "should create a user" do
        lambda do
          post :create, :user => @attr
        end.should change(User, :count).by(1)
      end
      
      it "should sign the user in" do
        post :create, :user => @attr
        controller.should be_signed_in
      end
            
      it "should redirect to the user show page" do
        post :create, :user => @attr
        response.should redirect_to(user_path(assigns(:user)))
      end
    end
  end
  
  describe "GET 'edit'" do

    before(:each) do
      @user = Factory(:user)
      test_sign_in(@user)
    end

    it "should be successful" do
      get :edit, :id => @user
      response.should be_success
    end

    it "should have the right title" do
      get :edit, :id => @user
      response.should have_selector("title", :content => "Edit user")
    end
  end
  
  describe "PUT 'update'" do
    
    before(:each) do
      @user = Factory(:user)
      test_sign_in(@user)
    end
    
    describe "failure" do
    
      before(:each) do
        @attr = { :email => "", :first_name => "", :last_name => "", :address => "", :zip => "", :country => "", :phone_number => "", :password => "",
                  :password_confirmation => "" }
      end
      
      it "should render the 'edit' page" do
        put :update, :id => @user, :user => @attr
        response.should render_template('edit')
      end

      it "should have the right title" do
        put :update, :id => @user, :user => @attr
        response.should have_selector("title", :content => "Edit user")
      end
    end
    
    describe "success" do

      before(:each) do
        @attr = { :first_name => "New Name", :last_name => "Surname", :address => "Some address", :zip => "Some postcode", :country => "Some country", :phone_number => "0000", :email => "user@example.org",
                  :password => "barbaz", :password_confirmation => "barbaz" }
      end

      it "should change the user's attributes" do
        put :update, :id => @user, :user => @attr
        @user.reload
        @user.first_name.should  == @attr[:first_name]
        @user.last_name.should  == @attr[:last_name]
        @user.address.should  == @attr[:address] 
        @user.zip.should  == @attr[:zip]
        @user.country.should  == @attr[:country]  
        @user.phone_number.should  == @attr[:phone_number]
        @user.email.should == @attr[:email]
      end

      it "should redirect to the user show page" do
        put :update, :id => @user, :user => @attr
        response.should redirect_to(user_path(@user))
      end

      it "should have a flash message" do
        put :update, :id => @user, :user => @attr
        flash[:success].should =~ /updated/
      end
    end
  end
  
  describe "authentication of edit/update pages" do

    before(:each) do
      @user = Factory(:user)
    end

    describe "for non-signed-in users" do

      it "should deny access to 'edit'" do
        get :edit, :id => @user
        response.should redirect_to(signin_path)
      end

      it "should deny access to 'update'" do
        put :update, :id => @user, :user => {}
        response.should redirect_to(signin_path)
      end
    end
    
    describe "for signed-in users" do

      before(:each) do
        wrong_user = Factory(:user, :email => "user@example.net")
        test_sign_in(wrong_user)
      end

      it "should require matching users for 'edit'" do
        get :edit, :id => @user
        response.should redirect_to(root_path)
      end

      it "should require matching users for 'update'" do
        put :update, :id => @user, :user => {}
        response.should redirect_to(root_path)
      end
    end
  end
end           

