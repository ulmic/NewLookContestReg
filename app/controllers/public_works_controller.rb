class PublicWorksController < ApplicationController

  def index
    @public_works = PublicWork.all
  end

  def show
    @public_work = PublicWork.find(params[:id])
  end

  def new
    @public_work = PublicWork.new
  end

  def create
    @public_work = User.find(cookies[:current_user]).public_works.build(params[:public_work])

    if @public_work.save
      redirect_to @public_work
    else
      render action: "new"
    end
  end


  def destroy
    @public_work = PublicWork.find(params[:id])
    @public_work.destroy
    redirect_to public_works_url
  end
end
