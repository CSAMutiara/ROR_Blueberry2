class VideosController < ApplicationController
    
    
    # GET /videos
    def index
        @videos = Video.all
    end
    
    # GET /videos/1
    def show
    end
    
    # GET /videos/new
    def new
        @reference = Reference.find(params[:id])
        @video = @reference.video.new
    end
    
    # POST /videos
    def create
        @reference = Reference.find(params[:id])
        @video = @reference.video.new(video_params)
        
        respond_to do |format|
            if @video.save
                format.html { redirect_to @videos, notice: 'Video was successfully created.' }
                format.json { render :show, status: :created, location: @video }
             else
                format.html { render :new }
                format.json { render json: @video.errors, status: :unprocessable_entity }
            end
        end
    end
    
    # GET /videos/1/edit
    def edit
    end
    
    # PATCH/PUT /videos/1
    # PATCH/PUT /videos/1.json
    def update
        respond_to do |format|
            if @video.update(video_params)
                format.html { redirect_to @video, notice: 'Video was successfully updated.' }
                format.json { render :show, status: :ok, location: @video }
            else
                format.html { render :edit }
                format.json { render json: @video.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /videos/1
    # DELETE /videos/1.json
    def destroy
        @video.destroy
        respond_to do |format|
            format.html { redirect_to videos_url, notice: 'Video was successfully destroyed.' }
            format.json { head :no_content }
        end
    end
    
    private
    def set_video
      @video = Video.find(params[:id])
    end
    
    def video_params
        params.require(:video).permit(:title, :url, :date, :contributors, :publisher, :location)
    end
end
