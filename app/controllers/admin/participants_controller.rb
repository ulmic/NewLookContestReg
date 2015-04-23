class Admin::ParticipantsController < Admin::ApplicationController
  def index
    @users = User.participants.presented
    respond_to do |format|
      format.html { @users = UserDecorator.decorate_collection(@users) }
      format.xls { send_data(@users.to_xls(only: [:first_name, :patronymic, :last_name, :birth_date, :school, :group, :job, :city, :mobile_phone, :email, :events, :honors, :media, :experience])) }
    end
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
    redirect_to admin_users_path
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
