class AttendancesController < ApplicationController
  
  def index
    if params[:roster_id]
      render json: Roster.find(params[:roster_id]).attendances.to_json
    else
      render nothing: true
    end
  end
  
end
