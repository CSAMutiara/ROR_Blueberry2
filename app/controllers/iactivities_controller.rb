class IactivitiesController < ApplicationController
    before_action :find_iactivity, only: [:show]
    
    def index
        @iactivities = Iactivity.all.order("created_at DESC")
    end
    
    def show
    end
    
    def new
        @iactivity = Iactivity.new
    end
    
    
    def create
        @report = Report.find(params[:report_id])
        @iactivity = @report.iactivities.create(params[:iactivity].permit(:date, :name, :ta1, :ta2, :ta3, :ta4, :ta5, :ta6, :status))
        redirect_to report_path(@report)
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
    
    private
    
    def find_iactivity
        @iactivity = Iactivity.find(params[:id])
    end
end
