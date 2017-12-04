class ReviewsController < ApplicationController

  def new
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.new
  end

  def edit
    @movie = Movie.find(params[:movie_id])
    @review = Review.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:movie_id])
    @review = Review.find(params[:id])
    if @review.update(review_params)
      flash[:notice] = "Review Updated"
      redirect_to movie_path(@product)
    else
      render :edit
    end
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.new(review_params)
    if @review.save
      redirect_to movie_path(@movie)
      flash[:notice] = "Review Created"
      # redirect_to movie_reviews_path(@movie)
    else
      render :new
    end
  end

private
  def review_params
    params.require(:review).permit(:author, :content_body, :rating, :movie_id)
  end
end
