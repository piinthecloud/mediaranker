class MoviesController < ApplicationController


  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def show
    @movie = Movie.find(params[:id])

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



  def upvote
    @movie = Movie.find(params[:id])
    if @movie.votes == nil
      @movie.votes = 1
    else
      @movie.votes += 1
    end
    @movie.save
    redirect_to movies_index_path
  end





  private


  def movie_params
    params.require(:movie).permit(:name, :creator, :description)
  end

end
