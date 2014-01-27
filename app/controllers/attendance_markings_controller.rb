class AttendanceMarkingsController < ApplicationController
  
  def index
    render json: AttendanceMarking.all.to_json
  end

end
