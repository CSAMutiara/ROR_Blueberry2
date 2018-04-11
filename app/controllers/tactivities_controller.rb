class TactivitiesController < ApplicationController
    before_action :find_tactivity, only: [:show, :edit, :update, :destroy]
    before_action :find_report, only: [:create, :edit, :index, :destroy]
    
    def index
        @tactivities = Tactivity.all.order("created_at DESC")
    end
    
    def show
    end
    
    def new
        @tactivity = Tactivity.new
    end
    
    def create
        @tactivity = @report.tactivities.create(tactivity_params)
        render 'tactivities/show'
    end
    
    def edit
        @tactivities = Tactivity.all.order("created_at DESC")
    end
    
    def update
        if @tactivity.update(tactivity_params)
            redirect_to report_tactivity_path
        else
            render 'edit'
        end
    end
    
    def destroy
        @tactivity.destroy
        redirect_to report_path(@report)
    end
    
    private
    
    def tactivity_params
        params.require(:tactivity).permit(:date, :name, :ta1, :ta2, :ta3, :ta4, :status)
    end 
    
    def find_tactivity
        @tactivity = Tactivity.find(params[:id])
    end
    
    def find_report
        @report = Report.find(params[:report_id])
    end
    
end
