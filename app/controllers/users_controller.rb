class UsersController < ApplicationController

  
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
  
  def new
    @title = 'Sign up'
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash.now[:success] = "Welcome to Practiced #{@user.name}!"
      redirect_to @user
    else
      render 'new'
    end
  end
end
