class BusinessesController < ApplicationController

  def index
    name = params[:name]
    @businesses = Business.search(params[:name])
    json_response(@businesses)
  end

  def show
    @business = Business.find(params[:id])
    json_response(@business)
  end

  def create
    @business = Business.create!(business_params)
    json_response(@business)
  end

  def update
    @business = Business.find(params[:id])
    if @business.update!(business_params)
      render status: :ok, json: {
        message: "Business Updated!"
      }
    end
  end

  def destroy
    @business = Business.find(params[:id])
    if @business.destroy!(business_params)
      render status: :ok, json: {
        message: "Business removed"
      }
    end
  end

  private

  def json_response(object, status = :ok)
    render json: object, status: status
  end


  def business_params
    params.permit(:name)
  end
end
