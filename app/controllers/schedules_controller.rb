class SchedulesController < ApplicationController
  
  def index
    if params[:course_id]
      render json: Course.find(params[:course_id]).schedules.to_json
    else
      render nothing: true
    end
  end
  
end
