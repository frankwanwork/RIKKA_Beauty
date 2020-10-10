class MoviesController < ApplicationController

  def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
  end

  def show
    id = params[:id] # retrieve movie ID from URI route
    @movie = Movie.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end

  def index
    @movies = Movie.all

    # part 3
    @sort_by = params[:sort_by] || session[:sort_by]
    session[:sort_by] = @sort_by

    @ratings_selected = params[:ratings] || session[:ratings]

    
    @ratings_all = ['G', 'PG', 'PG-13', 'R']
    if @ratings_selected == nil
      @ratings_selected = {}
      @ratings_all.each do |rating|
        @ratings_selected[rating] = true
      end
    end

    if !params[:sort_by] && !params[:ratings]
      flash.keep
      redirect_to movies_path(:ratings => @ratings_selected, :sort_by => @sort_by) and return
    end

    if(params[:ratings] != nil)
      @movies = @movies.where(:rating => params[:ratings].keys)
      session[:ratings] = params[:ratings]
    end

    if @sort_by == nil
      return @movies 
    end
 
    if @sort_by == 'title'
      @movies.order!("title")
      @sort='title' 
    elsif @sort_by == 'release_date'
      @movies.order!("release_date")
      @sort='r_date' 
    end
end

  def new
    # default: render 'new' template
  end

  def create
    @movie = Movie.create!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end

end
