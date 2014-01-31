class SchedulesController < ApplicationController
  
  def index
      teacher = Teacher.find(params[:teacher_id])
      if teacher
        render json: teacher.schedules.all.to_json
      end
  end
  
end
