class Admin::UsersController < Admin::ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def new
    @user = UserRegistrationType.new
  end

  def create
    @user = UserRegistrationType.new params[:user]
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def edit
    @user = UserRegistrationType.find params[:id]
  end

  def update
    @user = UserRegistrationType.find params[:id]
    if @user.update_attributes params[:user]
      redirect_to admin_user_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find params[:id]
    @user.bust
    redirect_to users_path
  end

  def accept
    @user = User.find params[:id]
    @user.accept
    redirect_to admin_user_path @user
  end

  def reserve
    @user = User.find params[:id]
    @user.reserve
    redirect_to admin_user_path @user
  end
end
