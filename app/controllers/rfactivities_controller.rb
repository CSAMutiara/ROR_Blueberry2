class RfactivitiesController < ApplicationController
    before_action :find_rfactivity, only: [:show, :edit, :update, :destroy]
    before_action :find_report, only: [:new, :create, :edit, :index, :destroy, :show]
    
    def index
        @rfactivities = Rfactivity.all.order("created_at DESC")
    end
    
    def generate 
        @rfactivities = Rfactivity.all.order("created_at DESC")
        respond_to do |format|
            format.html
            format.pdf do
                render pdf: 'References_PDF.pdf', :template => "./views/layouts/pdf.html.haml" + Time.now.strftime('%v %H:%M:%S').to_s, javascript_delay: 10000,
                layout: 'pdf.html.haml', disposition: 'attachment'
            end
        end
    end
    
    def show
    end
    
    def new
        @rfactivity = Rfactivity.new
    end
    
    def create
        @rfactivity = @report.rfactivities.create(params[:rfactivity].permit(:date, :name, :ta1, :ta2, :status))
        render 'rfactivities/show'
    end
    
    def edit
        @rfactivities = Rfactivity.all.order("created_at DESC")
    end
    
    def update
        if @rfactivity.update(rfactivity_params)
            redirect_to report_rfactivity_path
        else
            render 'edit'
        end
    end
    
    def destroy
        @rfactivity.destroy
        redirect_to report_rfactivities_path(@report)
    end
    
    private
    
    def rfactivity_params
        params.require(:rfactivity).permit(:date, :name, :ta1, :ta2, :status)
    end 
    
    def find_rfactivity
        @rfactivity = Rfactivity.find(params[:id])
    end
    
    def find_report
        @report = Report.find(params[:report_id])
    end
    
end
