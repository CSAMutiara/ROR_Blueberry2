class RsactivitiesController < ApplicationController
    def create
        @report = Report.find(params[:report_id])
        @rsactivity = @report.rsactivities.create(params[:rsactivity].permit(:date, :name, :ta1, :ta2, :ta3, :ta4, :status))
        redirect_to report_path(@report)
    end
end
