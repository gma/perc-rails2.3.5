class UsersController < ApplicationController
  
  def show
      @user = User.find(params[:id])
      @title = @user.first_name
  end
  
  def new
    @title = "Percussion Orchestrations Registration"
  end

end
