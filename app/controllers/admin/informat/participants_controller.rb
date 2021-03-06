class Admin::Informat::ParticipantsController < Admin::Informat::ApplicationController
  def index
    @fresh_participants = ::Informat::ParticipantDecorator.decorate_collection Informat::Participant.fresh
    @confirmed_participants = ::Informat::ParticipantDecorator.decorate_collection Informat::Participant.accepted
    @busted_participants = ::Informat::ParticipantDecorator.decorate_collection Informat::Participant.busted
  end

  def show
    @participant = ::Informat::Participant.find params[:id]
  end

  def new
    @participant = ::Informat::ParticipantEditByAdminType.new
  end

  def create
    @participant = ::Informat::ParticipantEditByAdminType.new params[:informat_participant]
    params[:informat_participant].permit!
    if @participant.save
      redirect_to admin_informat_participants_path
    else
      render :new
    end
  end

  def edit
    @participant = ::Informat::ParticipantEditByAdminType.find params[:id]
  end

  def update
    @participant = ::Informat::ParticipantEditByAdminType.find params[:id]
    params[:participant].permit!
    if @participant.update_attributes params[:participant]
      redirect_to admin_informat_participants_path
    else
      render :edit
    end
  end

  def destroy
    @participant = ::Informat::Participant.find params[:id]
    @participant.bust
    redirect_to admin_informat_participants_path
  end
end
