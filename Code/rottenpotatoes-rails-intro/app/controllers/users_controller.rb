class UsersController < ApplicationController

  # def movie_params
  #   params.require(:movie).permit(:title, :rating, :description, :release_date)
  # end

  def show
    id = params[:id] # retrieve movie ID from URI route
    @movie = Movie.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end

  def new
    # create user
    # Note: should check the security code
  end

  def signin_show
    # signin homepage
    @movies = Movie.all
  end

  def signin
    # sign in
    @movie = Movie.create!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end

  def signup_show
    # signup homepage
    @movies = Movie.all
  end

  def signup
    # sign up
    @movie = Movie.create!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end

  def forgot_show
    # forgot password homepage
    @movies = Movie.all
  end

  def forgot
    # forgot password
    @movie = Movie.create!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end

  def send_code
    # send verfication code to the email
  end

end
