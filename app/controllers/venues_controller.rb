class VenuesController < ApplicationController
  before_action :set_venue_type, only: %i[ edit update destroy ]

  def index
    @venues = Venue.all
  end

  def new
    @venue=Venue.new
  end


  def create
    # params = params.with_indifferent_access
    @venue = Venue.new(venue_params )
  
    if @venue.save
      redirect_to venues_path, notice: 'Venue was successfully created.'
    else
      render :new
    end
  end

  def edit

  end

  def update

    if @venue.update(venue_params)
      redirect_to venues_path, notice: "Venue was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    # byebug

    @venue.destroy
    redirect_to venues_path, notice: 'Venue was successfully deleted.'
  end

  private 

  # Use callbacks to share common setup or constraints between actions.
  def set_venue_type
    @venue = Venue.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def venue_params
    params.require(:venue).permit(:name, :address, :capacity, :image)
  end

end
