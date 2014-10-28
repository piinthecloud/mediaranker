class MoviesController < ApplicationController


  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def show

  end

  def edit

  end

  def update

  end

  def create
    @movie = Movie.new(movie_params)
  end

  def destroy

  end

  private

  def movie_params
    params.require(:movie).permit(:name, :creator, :description)
  end

end
