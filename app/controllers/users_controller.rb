class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
    @title = @user.first_name + " " + @user.middle_name + " " + @user.last_name
  end

  def new
    @user = User.new
    @district = District.all
  end

  def create
    @user = User.new params[:user]
    user_sign_in @user
    if @user.save
      redirect_to @user
    else
        render :new
    end
  end

end
