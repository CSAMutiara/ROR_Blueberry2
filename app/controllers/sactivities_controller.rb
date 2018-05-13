class SactivitiesController < ApplicationController
    before_action :find_sactivity, only: [:show, :edit, :update, :destroy]
    before_action :find_report, only: [:new, :create, :edit, :index, :destroy, :show]
    
    def index
        @sactivities = Sactivity.all.order("created_at DESC")
    end
    
    def show
    end
    
    def new
        @sactivity = Sactivity.new
    end
    
    def create
        @sactivity = @report.sactivities.create(sactivity_params)
        render 'sactivities/show'
    end
    
    def edit
        @sactivities = Sactivity.all.order("created_at DESC")
    end
    
    def update
        if @sactivity.update(sactivity_params)
            redirect_to report_sactivity_path
        else
            render 'edit'
        end
    end
    
    def destroy
        @sactivity.destroy
        redirect_to report_sactivities_path(@report)
    end
    
    private
    
    def sactivity_params
        params.require(:sactivity).permit(:date, :name, :ta1, :ta2, :ta3, :ta4, :ta5, :status)
    end 
    
    def find_sactivity
        @sactivity = Sactivity.find(params[:id])
    end
    
    def find_report
        @report = Report.find(params[:report_id])
    end
    
end
