class BirdRentalRequestsController < ApplicationController
  def new
    @request = BirdRentalRequest.new
  end

  def create
    @request = BirdRentalRequest.new(bird_rental_request_params)

    if @request.save
      redirect_to bird_url(@request.bird)
    else
      render :new
    end
  end

  private
  def bird_rental_request_params
    params.require(:request).permit(:start_date, :end_date, :bird_id)
  end
end
