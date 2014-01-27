class ApplicationController < ActionController::Base
  include AuthHelper

  def current_user_on_page?(user_to_show)
    current_user == user_to_show
  end

  protect_from_forgery
end
