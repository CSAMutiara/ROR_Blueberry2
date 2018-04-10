class RfactivitiesController < ApplicationController
    before_action :find_rfactivity, only: [:show]
    
    def index
        @rfactivities = Rfactivity.all.order("created_at DESC")
    end
    
    def show
    end
    
    def new
        @rfactivity = Rfactivity.new
    end
    
    def create
        @report = Report.find(params[:report_id])
        @rfactivity = @report.rfactivities.create(params[:rfactivity].permit(:date, :name, :ta1, :ta2, :status))
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
        @rfactivity = Rfactivity.find(params[:id])
    end
end
