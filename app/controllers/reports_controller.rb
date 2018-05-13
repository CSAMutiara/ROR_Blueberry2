class ReportsController < ApplicationController
    before_action :find_report, only: [:show, :edit, :update, :destroy]
    
    def index
        @reports = Report.all.order("created_at DESC")
        respond_to do |format|
            format.html
            format.pdf do
                render template: '', pdf: 'Achievements Report' + Time.now.strftime('%v %H:%M:%S').to_s, javascript_delay: 10000,
                layout: 'pdf.html.haml', disposition: 'attachment'
            end
        end
    end

    
    def show
    end
    
    def new
        @report = Report.new
        #render 'new'
        #if @report.exist?(report_params[:year])
        #    flash[:notice] = "This year already exists. Please enter a different year or select the previously created year."
        #else
        render 'new'
        #end
        #if Report.exists?
        #    flash[:notice] = "This year already exists. Please enter a different year or select the previously created year."
        #else
        #    @report.save
            #redirect_to @report
        #    else
        #render 'new'
        #    end
        #end
    end
    
    def create
        @report = Report.new(report_params)
        if @report.save
            redirect_to @report
        else 
            render 'new'
        end
    end

    
    def edit
    end
    
    def update
        if @report.update(report_params)
            redirect_to @report
        else 
            render 'edit'
        end 
    end 
    
    def destroy
        @report = Report.find(params[:id])
        @report.tactivities.delete_all
        @report.sactivities.delete_all
        @report.rsactivities.delete_all
        @report.iactivities.delete_all
        @report.rfactivities.delete_all
        @report.destroy
        redirect_to root_path
    end 
    
    private
    
    def report_params
        params.require(:report).permit(:year)
    end 
    
    def find_report
        @report = Report.find(params[:id])
    end
end