class CoursesController < ApplicationController
  
  def index
    if params[:teacher_id]
      courseIds = Teacher.find(params[:teacher_id]).courses.pluck(:id)
      res = []
      for id in courseIds
        res.push(info(Course.find(id)))
      end
      render json: res.to_json
    else
      render nothing: true
    end
  end

  def show
    course = Course.find(params[:id])
    if course
      render json: info(course).to_json
    else 
      render nothing: true
    end
  end

  private
  def info(course)
    {id: course.id,
     term_id: course.term_id,
     name: course.name, 
     school_name: course.school_name,
     instrument_name: course.instrument_name,
     program_type: course.program_type,
     course_type: course.course_type.name}
  end
  
end
