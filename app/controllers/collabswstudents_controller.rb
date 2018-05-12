class CollabswstudentsController < ApplicationController
  before_action :set_collabswstudent, only: [:show, :edit, :update, :destroy]

  # GET /collabswstudents
  # GET /collabswstudents.json
  def index
    @collabswstudents = Collabswstudent.all
  end

  # GET /collabswstudents/1
  # GET /collabswstudents/1.json
  def show
  end

  # GET /collabswstudents/new
  def new
    @collabswstudent = Collabswstudent.new
  end

  # GET /collabswstudents/1/edit
  def edit
  end

  # POST /collabswstudents
  # POST /collabswstudents.json
  def create
    @collabswstudent = Collabswstudent.new(collabswstudent_params)

    respond_to do |format|
      if @collabswstudent.save
        format.html { redirect_to @collabswstudent, notice: 'Collabswstudent was successfully created.' }
        format.json { render :show, status: :created, location: @collabswstudent }
      else
        format.html { render :new }
        format.json { render json: @collabswstudent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collabswstudents/1
  # PATCH/PUT /collabswstudents/1.json
  def update
    respond_to do |format|
      if @collabswstudent.update(collabswstudent_params)
        format.html { redirect_to @collabswstudent, notice: 'Collabswstudent was successfully updated.' }
        format.json { render :show, status: :ok, location: @collabswstudent }
      else
        format.html { render :edit }
        format.json { render json: @collabswstudent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collabswstudents/1
  # DELETE /collabswstudents/1.json
  def destroy
    @collabswstudent.destroy
    respond_to do |format|
      format.html { redirect_to collabswstudents_url, notice: 'Collabswstudent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collabswstudent
      @collabswstudent = Collabswstudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collabswstudent_params
      params.require(:collabswstudent).permit(:teachname, :studename, :explanation)
    end
end
