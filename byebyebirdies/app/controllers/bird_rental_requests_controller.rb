class BirdRentalRequestsController < ApplicationController

  def index
     @requests = BirdRentalRequest.all
  end

  def show
    @request = BirdRentalRequest.find(params[:id])
  end

  def new
    @request = BirdRentalRequest.new
  end

  def create
    @request = BirdRentalRequest.new(bird_rental_request_params)

    if @request.save
      redirect_to bird_rental_requests_url(@request)
    else
      render :new
    end
  end

  private
  def bird_rental_request_params
    params.require(:bird_rental_requests).permit(:start_date, :end_date, :bird_id)
  end
end
