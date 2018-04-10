class SactivitiesController < ApplicationController
    before_action :find_sactivity, only: [:show]
    
    def index
        @sactivities = Sactivity.all.order("created_at DESC")
    end
    
    def show
    end
    
    def new
        @sactivity = Sactivity.new
    end
    
    def create
        @report = Report.find(params[:report_id])
        @sactivity = @report.sactivities.create(params[:sactivity].permit(:date, :name, :ta1, :ta2, :ta3, :ta4, :ta5, :status))
        redirect_to report_path(@report)
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
    
    private
    
    def find_sactivity
        @sactivity = Sactivity.find(params[:id])
    end
    
end
