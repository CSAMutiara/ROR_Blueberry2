class TactivitiesController < ApplicationController
    before_action :find_tactivity, only: [:show]
    
    def index
        @tactivities = Tactivity.all.order("created_at DESC")
    end
    
    def show
    end
    
    def new
        @tactivity = Tactivity.new
    end
    
    def create
        @report = Report.find(params[:report_id])
        @tactivity = @report.tactivities.create(params[:tactivity].permit(:date, :name, :ta1, :ta2, :ta3, :ta4, :status))
        redirect_to report_path(@report)
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
    
    private
    
    def find_tactivity
        @tactivity = Tactivity.find(params[:id])
    end
    
end
