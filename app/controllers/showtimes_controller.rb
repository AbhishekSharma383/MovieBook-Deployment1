class ShowtimesController < ApplicationController

  def index

  end

  def new
    @showtime = Showtime.new
  end

  def create
    # params = params.with_indifferent_access
    @showtime = Showtime.new(movie_id: params[:showtime][:movie_id], venue_id: params[:showtime][:venue_id], showtime_at: params[:showtime][:showtime_at] )
  
    if @showtime.save
      redirect_to root_path, notice: 'ShowTime successfully created.'
    else
      render :new
    end
  end

  

  private 

  def showtime_params
    params.require(:showtime).permit(:movie_id, :venue_id, :showtime_at)
  end

end






