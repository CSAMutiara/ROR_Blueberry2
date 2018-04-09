class RfactivitiesController < ApplicationController
    def create
        @report = Report.find(params[:report_id])
        @rfactivity = @report.rfactivities.create(params[:rfactivity].permit(:date, :name, :ta1, :ta2, :status))
        redirect_to report_path(@report)
    end
end
