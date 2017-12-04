class MoviesController < ApplicationController

  def home
    @most_reviewed = Movie.most_reviews
    @usa_made = Movie.made_in_usa
    @recent_movies = Movie.recently_added
  end

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      flash[:notice] = "Movie has been added!"
      redirect_to movies_path
    else
      render:new
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      flash[:notice] = "Movie Updated"
      redirect_to movie_path(@movie)
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie Deleted"
    redirect_to movies_path
  end

private
  def movie_params
    params.require(:movie).permit(:name, :release, :description)
  end
end
