class StudentsController < ApplicationController
  
  def index
    if params[:course_id]
      render json: Course.find(params[:course_id]).students.to_json
    else
      render nothing: true
    end
  end
  
end
