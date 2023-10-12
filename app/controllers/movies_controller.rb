class MoviesController < ApplicationController
  before_action :set_movie_type, only: %i[ edit update destroy book_show ]

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    # params = params.with_indifferent_access
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @movie.update(movie_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    # byebug
    @movie.destroy
    redirect_to root_path
  end

  def book_show
    @shows = @movie.showtimes
  end

  def book_seat
    
  end



  private 

  # Use callbacks to share common setup or constraints between actions.
  def set_movie_type
    @movie = Movie.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def movie_params
    params.require(:movie).permit(:title, :description, :release_date, :genre, :image)
  end

end
