class CollabswfacultiesController < ApplicationController
  before_action :set_collabswfaculty, only: [:show, :edit, :update, :destroy]

  # GET /collabswfaculties
  # GET /collabswfaculties.json
  def index
    @collabswfaculties = Collabswfaculty.all
  end

  # GET /collabswfaculties/1
  # GET /collabswfaculties/1.json
  def show
  end

  # GET /collabswfaculties/new
  def new
    @collabswfaculty = Collabswfaculty.new
  end

  # GET /collabswfaculties/1/edit
  def edit
  end

  # POST /collabswfaculties
  # POST /collabswfaculties.json
  def create
    @collabswfaculty = Collabswfaculty.new(collabswfaculty_params)

    respond_to do |format|
      if @collabswfaculty.save
        format.html { redirect_to @collabswfaculty, notice: 'Collabswfaculty was successfully created.' }
        format.json { render :show, status: :created, location: @collabswfaculty }
      else
        format.html { render :new }
        format.json { render json: @collabswfaculty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collabswfaculties/1
  # PATCH/PUT /collabswfaculties/1.json
  def update
    respond_to do |format|
      if @collabswfaculty.update(collabswfaculty_params)
        format.html { redirect_to @collabswfaculty, notice: 'Collabswfaculty was successfully updated.' }
        format.json { render :show, status: :ok, location: @collabswfaculty }
      else
        format.html { render :edit }
        format.json { render json: @collabswfaculty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collabswfaculties/1
  # DELETE /collabswfaculties/1.json
  def destroy
    @collabswfaculty.destroy
    respond_to do |format|
      format.html { redirect_to collabswfaculties_url, notice: 'Collabswfaculty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collabswfaculty
      @collabswfaculty = Collabswfaculty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collabswfaculty_params
      params.require(:collabswfaculty).permit(:name, :explanation)
    end
end
