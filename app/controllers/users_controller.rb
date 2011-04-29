class UsersController < ApplicationController
  
  def show
      @user = User.find(params[:id])
      @title = @user.first_name
  end
  
  def new
    @user = User.new
    @title = "Percussion Orchestrations Registration"
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to user_path(@user)
    else
      @title = "Percussion Orchestrations Registration"
      render 'new'
    end
  end      
end
