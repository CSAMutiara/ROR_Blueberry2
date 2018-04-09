class SactivitiesController < ApplicationController
    def create
        @report = Report.find(params[:report_id])
        @sactivity = @report.sactivities.create(params[:sactivity].permit(:date, :name, :ta1, :ta2, :ta3, :ta4, :ta5, :status))
        redirect_to report_path(@report)
    end
end
