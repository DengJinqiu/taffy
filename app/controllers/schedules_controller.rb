class SchedulesController < ApplicationController
  
  def index
      render json: Schedule.all.to_json
  end
  
end
