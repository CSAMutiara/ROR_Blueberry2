class IactivitiesController < ApplicationController
    before_action :find_iactivity, only: [:show, :edit, :update, :destroy]
    before_action :find_report, only: [:new, :create, :edit, :index, :destroy, :show]
    
    def index
        @iactivities = Iactivity.all.order("created_at DESC")
    end
    
    def show
    end
    
    def new
        @iactivity = Iactivity.new
    end
    
    
    def create
        @iactivity = @report.iactivities.create(params[:iactivity].permit(:date, :name, :ta1, :ta2, :ta3, :ta4, :ta5, :ta6, :status))
        render 'iactivities/show'
    end
    
    def edit
        @iactivities = Iactivity.all.order("created_at DESC")
    end
    
    def update
        if @iactivity.update(iactivity_params)
            redirect_to report_iactivity_path
        else
            render 'edit'
        end
    end
    
    def destroy
        @iactivity.destroy
        redirect_to report_iactivities_path(@report)
    end
    
    private
    
    def iactivity_params
        params.require(:iactivity).permit(:date, :name, :ta1, :ta2, :ta3, :ta4, :ta5, :ta6, :status)
    end 
    
    def find_iactivity
        @iactivity = Iactivity.find(params[:id])
    end
    
    def find_report
        @report = Report.find(params[:report_id])
    end
end
