class ReviewsController < ApplicationController
  before_action :set_review, only:[:edit,:update,:destroy]
  before_action :set_movie

	def new
     @review=Review.new
	end

	def create
      @review=Review.new(review_params)
      @review.movie_id=@movie.id
      @review.user_id=User.find(1)
      if @review.save
      redirect_to movie_path
      else
      	render 'new'
      end
	end

  def edit
  end

  def update
    @review=Review.find(params[:id])

    if @review.update(review_params)
      redirect_to movie_path(@movie)
    else
      render :edit
    end

  end

  def destroy
    @review.destroy
    redirect_to movie_path(@movie)
  end
	private
	def review_params
      params.require(:review).permit(:rating,:comment)
	end

  def set_review
   @review=Review.find(params[:id])
  end
  def set_movie
   @movie=Movie.find(params[:movie_id])
  end
end
