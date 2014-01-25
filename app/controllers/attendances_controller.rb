class AttendancesController < ApplicationController
  
  def index
    if params[:roster_id]
      render json: Roster.find(params[:roster_id]).attendances.to_json
    else
      render nothing: true
    end
  end

  def update
    attendance = Attendance.find(params[:id])
    if attendance
      attendance.update_attributes(attendance_params)
      render json: {status: 'success'}.to_json
    else
      render json: nothing: true
    end
  end

  def create
    attendance = Attendance.new(attendance_params)
    if attendance.save
      render json: {id: attendance.id}.to_json
    else
      render json: nothing: true
    end
  end

  private
  def attendance_params
    params.permit(:roster_id, :teacher_id, :attendance_marking_id, :date)
  end
  
end
