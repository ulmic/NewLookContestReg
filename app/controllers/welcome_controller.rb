class WelcomeController < ApplicationController
  def index
    @participant = Informat::ParticipantFillingType.new
  end
end
