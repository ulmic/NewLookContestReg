class Admin::ApplicationController < ApplicationController
  before_filter :authenticate_user!
  before_filter :load_navbar

  def load_navbar
    @contest_parts = User.where(type: nil).count
    @fair_parts = ::Informat::Participant.count
  end

  layout 'admin/application'
end
