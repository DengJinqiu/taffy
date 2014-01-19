class CoursesController < ApplicationController
  
  def index
    if params[:teacher_id]
      render json: Teacher.find(params[:teacher_id]).courses.to_json
    else
      render nothing: true
    end
  end
  
end
