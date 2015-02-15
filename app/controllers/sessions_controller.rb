class SessionsController < ApplicationController
  def new
    @session = UserSignInType.new
  end

  def create
    @session = UserSignInType.new params[:user_sign_in_type]
    if @session.valid?
      user = @session.user
      user_sign_in user
      redirect_to admin_root_path, flash: :success
    else
      render :new, flash: :error
    end
  end

  def destroy
    sign_out
    try_redirect_to_from_or root_path, flash: :success
  end
end
