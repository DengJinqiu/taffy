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
      sleep(2)
      render json: {attendance_id: params[:id]}.to_json
    else
      render nothing: true
    end
  end

  def create
    attendance = Attendance.new(attendance_params)
    if attendance.save
      sleep(2)
      render json: {attendance_id: attendance.id}.to_json
    else
      render nothing: true
    end
  end

  def destroy
    attendance = Attendance.find(params[:id])
    if attendance
      attendance.destroy
      sleep(2)
      render json: {status: 'success'}.to_json
    else
      render nothing: true
    end
  end

  private
  def attendance_params
    params.permit(:roster_id, :teacher_id, :attendance_marking_id, :date)
  end
  
end
