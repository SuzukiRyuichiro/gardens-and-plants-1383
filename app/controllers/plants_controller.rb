class PlantsController < ApplicationController
  def create
    # make a new instance of Plant with the given params
    @plant = Plant.new(plant_params)
    # assign the garden of the plant
    @garden = Garden.find(params[:garden_id])
    @plant.garden = @garden
    # attempt to save the plant
    if @plant.save
      # if the save is successful redirect the user to the current garden show
      redirect_to garden_path(@garden) # -> /gardens/4
    else
      render 'gardens/show', status: :unprocessable_entity
    end
    # if not, render the show page, but with an error status
  end

  def destroy
    # find the plant to delete using the id from the params
    @plant = Plant.find(params[:id])
    # delete from the DB
    @plant.destroy
    # redirect the user to garden show
    redirect_to garden_path(@plant.garden), status: :see_other
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
