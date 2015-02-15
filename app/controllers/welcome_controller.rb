class WelcomeController < ApplicationController
  def index
    @user = UserRegistrationType.new
  end
end
