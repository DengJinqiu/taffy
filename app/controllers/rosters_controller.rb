class RostersController < ApplicationController
  
  def index
    if params[:course_id] && params[:date]
      res = []
      for roster in Course.find(params[:course_id]).rosters
        cur = Date.parse(params[:date])
        if cur >= roster.start_date && cur <= roster.end_date
          attendance = Attendance.where(roster_id: roster.id, date: cur).first
          if attendance
            attendance_id = attendance.id
            attendance_marking_id = attendance.attendance_marking_id
            teacher_first_name = Teacher.find(attendance.teacher_id).first_name
            teacher_last_name = Teacher.find(attendance.teacher_id).last_name
          else 
            attendance_id = -1
            attendance_marking_id = nil
            teacher_first_name = nil
            teacher_last_name = nil
          end
          res.push({roster_id: roster.id,
                    attendance_id: attendance_id,
                    attendance_marking_id: attendance_marking_id,
                    student_first_name: Student.find(roster.student_id).first_name,
                    student_last_name: Student.find(roster.student_id).last_name,
                    teacher_first_name: teacher_first_name,
                    teacher_last_name: teacher_last_name})
        end
      end
      render json: res.to_json
    else
      render nothing: true
    end
  end
  
end
