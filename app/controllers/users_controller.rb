class UsersController < ApplicationController

  def show
    @user = User.find(params[:id]).decorate
    unless current_user_on_page? @user
      redirect_to not_found_errors_path
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]
    if @user.save
      redirect_to @user
    else
        render :new
    end
  end

end
