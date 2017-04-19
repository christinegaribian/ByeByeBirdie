class BirdsController < ApplicationController
  def index
    @birds = Bird.all
  end

  def create

    @bird = Bird.new(bird_params)

    if @bird.save
      redirect_to bird_url(@bird)
    else
      render :new
    end
  end

  def new
    @bird = Bird.new
    #
    # render :new
  end

  def edit
    @bird = Bird.find(params[:id])
  end

  def show
    @bird = Bird.find(params[:id])
  end

  def update
    @bird = Bird.find(params[:id])

    if @bird.update_attributes(bird_params)
      redirect_to bird_url(@bird)
    else
      render :new
    end
  end

  def destroy

  end

  private
  def bird_params
    params.require(:bird).permit(:birth_date, :color, :name, :sex, :description)
  end
end
