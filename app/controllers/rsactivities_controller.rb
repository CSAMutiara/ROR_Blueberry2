class RsactivitiesController < ApplicationController
    before_action :find_rsactivity, only: [:show, :edit, :update, :destroy]
    before_action :find_report, only: [:new, :create, :edit, :index, :destroy, :show]
    
    def index
        @rsactivities = Rsactivity.all.order("created_at DESC")
    end
    
    def show
    end
    
    def new
        @rsactivity = Rsactivity.new
    end
    
    def create
        @rsactivity = @report.rsactivities.create(rsactivity_params)
        render 'rsactivities/show'
    end
    
    def edit
        @rsactivities = Rsactivity.all.order("created_at DESC")
    end
    
    def update
        if @rsactivity.update(rsactivity_params)
            redirect_to report_rsactivity_path
        else
            render 'edit'
        end
    end
    
    def destroy
        @rsactivity.destroy
        redirect_to report_rsactivities_path(@report)
    end
    
    private
    
    def rsactivity_params
        params.require(:rsactivity).permit(:date, :name, :ta1, :ta2, :ta3, :ta4, :status)
    end 
    
    def find_rsactivity
        @rsactivity = Rsactivity.find(params[:id])
    end
    
    def find_report
        @report = Report.find(params[:report_id])
    end
    
end
