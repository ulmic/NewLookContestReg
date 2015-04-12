class Informat::ParticipantsController < Informat::ApplicationController
  def new
    @participant = Informat::ParticipantFillingType.new
  end

  def create
    @participant = Informat::ParticipantFillingType.new params[:informat_participant]
    if @participant.save
      redirect_to root_path, flash: :success
    else
      render :new
    end
  end
end
