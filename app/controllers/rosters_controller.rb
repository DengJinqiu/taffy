class RostersController < ApplicationController
  
  def index
    if params[:course_id] && params[:date]
      res = []
      for roster in Course.find(params[:course_id]).rosters
        cur = Date.parse(params[:date])
        if cur >= roster.start_date && cur <= roster.end_date
          attendance = Attendance.where(roster_id: roster.id, date: cur).first
          attendance_marking_id = attendance ? attendance.attendance_marking_id : nil
          res.push({id: roster.id,
                    first_name: Student.find(roster.student_id).first_name,
                    last_name: Student.find(roster.student_id).last_name,
                    attendance_marking_id: attendance_marking_id})
        end
      end
      render json: res.to_json
    else
      render nothing: true
    end
  end
  
end
