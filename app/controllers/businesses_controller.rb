class BusinessesController < ApplicationController

  def index
    if params[:get_random] === 'yes'
      @businesses = Business.get_random
    elsif params[:name]
      @businesses = Business.search(params[:name])
    else
      @businesses = Business.all.paginate(:page => params[:page], :per_page => 5)
    end
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
    if @business.destroy!
      render status: 200, json: {
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
