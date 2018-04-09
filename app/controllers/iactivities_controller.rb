class IactivitiesController < ApplicationController
    def create
        @report = Report.find(params[:report_id])
        @iactivity = @report.iactivities.create(params[:iactivity].permit(:date, :name, :ta1, :ta2, :ta3, :ta4, :ta5, :ta6, :status))
        redirect_to report_path(@report)
    end
end
