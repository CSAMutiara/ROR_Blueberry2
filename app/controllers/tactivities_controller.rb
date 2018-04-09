class TactivitiesController < ApplicationController
    def create
        @report = Report.find(params[:report_id])
        @tactivity = @report.tactivities.create(params[:tactivity].permit(:date, :name, :ta1, :ta2, :ta3, :ta4))
        redirect_to report_path(@report)
    end
end
