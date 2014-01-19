class TermsController < ApplicationController

  def current
    render json: Term.where(:current => true).first.to_json
  end
  
end
