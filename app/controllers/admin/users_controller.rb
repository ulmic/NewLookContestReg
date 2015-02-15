class Admin::UsersController < Admin::ApplicationController
  def index
    @fresh_users = UserDecorator.decorate_collection User.participants.fresh
    @confirmed_users = UserDecorator.decorate_collection User.participants.accepted
    @busted_users = UserDecorator.decorate_collection User.participants.busted
  end

  def show
    @user = User.find params[:id]
  end

  def new
    @user = UserEditByAdminType.new
  end

  def create
    @user = UserEditByAdminType.new params[:user]
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def edit
    @user = UserEditByAdminType.find params[:id]
  end

  def update
    @user = UserEditByAdminType.find params[:id]
    if @user.update_attributes params[:user]
      redirect_to admin_users_path
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
