class PagesController < ApplicationController

  def index
  end

  def success
	cookies[:current_user]=nil
  end

end
