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
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to movies_index_path
    else
      render :edit
    end

  end


  def create
    @movie = Movie.new(movie_params)

  end

  def destroy
    @movie = Movie.find(params[:id])
    if @movie.destroy
      redirect_to movies_index_path
    end
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
