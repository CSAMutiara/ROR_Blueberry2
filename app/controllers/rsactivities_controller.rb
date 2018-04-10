class RsactivitiesController < ApplicationController
    before_action :find_rsactivity, only: [:show]
    
    def index
        @rsactivities = Rsactivity.all.order("created_at DESC")
    end
    
    def show
    end
    
    def new
        @rsactivity = Rsactivity.new
    end
    
    
    def create
        @report = Report.find(params[:report_id])
        @rsactivity = @report.rsactivities.create(params[:rsactivity].permit(:date, :name, :ta1, :ta2, :ta3, :ta4, :status))
        redirect_to report_path(@report)
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
    
    private
    
    def find_rsactivity
        @rsactivity = Rsactivity.find(params[:id])
    end
    
end
