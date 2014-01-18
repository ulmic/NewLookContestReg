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

  def edit
    @user = User.find params[:id]
  end

  def create
    @user = User.new params[:user]
    if @user.save
      redirect_to @user
    else
        render :new
    end
  end

  def update
    @user = User.find params[:id]
    if @user.update_attributes params[:user]
      redirect_to @user
    else
      render action: "edit"
    end
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy
    redirect_to users_url
  end

end
