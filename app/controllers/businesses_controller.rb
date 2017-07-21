class BusinessesController < ApplicationController

  def index
    @businesses = {"businesses": "TABLE"}
    json_response(@businesses)
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end
end
