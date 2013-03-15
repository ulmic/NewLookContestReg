class PublicWorksController < ApplicationController


  # GET /public_works/1
  # GET /public_works/1.json
  def show
    @public_work = PublicWork.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @public_work }
    end
  end

  # GET /public_works/new
  # GET /public_works/new.json
  def new
    @public_work = PublicWork.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @public_work }
    end
  end

  # POST /public_works
  # POST /public_works.json
  def create
    @public_work = User.find(cookies[:current_user]).public_works.build(params[:public_work])

    respond_to do |format|
      if @public_work.save
        format.html { redirect_to @public_work, notice: 'Public work was successfully created.' }
        format.json { render json: @public_work, status: :created, location: @public_work }
      else
        format.html { render action: "new" }
        format.json { render json: @public_work.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /public_works/1
  # DELETE /public_works/1.json
  def destroy
    @public_work = PublicWork.find(params[:id])
    @public_work.destroy

    respond_to do |format|
      format.html { redirect_to public_works_url }
      format.json { head :no_content }
    end
  end
end
