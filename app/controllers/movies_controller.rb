class MoviesController < ApplicationController
 
 def index
  @movies=Movie.all
 end

 def show
  @movie=Movie.find(params[:id])
 end

 def new
   @movie=Movie.new
 end

def create
	@movie=Movie.new(movie_params)
   @movie.user=User.find(1)
   
    if @movie.save
    flash[:sucess]="Your Review was Created Successfully"
    redirect_to  movies_path
    else
   	render :new
  end
end

def edit
@movie=Movie.find(params[:id])
end

def update
@movie=Movie.find(params[:id])

if @movie.update(movie_params)

  redirect_to movie_path(@movie)
  else
    render :edit
  end
end

def destroy
@movie.destroy

redirect_to movies_path
end

private

def movie_params
	params.require(:movie).permit(:movie_name,:description,:movie_length,:director_name,:rating,:image)
end

end