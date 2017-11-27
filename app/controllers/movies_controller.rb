class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.update(subgenre_params)
      flash[:notice] = "Movie has been added!"
      redirect_to movies_path
    else
      render:new
    end
  end


  private
  def movie_params
    params.require(:subgenre).permit(:name)
  end
end
