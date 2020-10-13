class UsersController < ApplicationController


  def show
    #id = params[:id] # retrieve movie ID from URI route
    #@movie = Movie.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end

  def new
    # create user instance
    # Note: should check the security code
    @user = User.new
  end

  def signin_show
    # signin homepage
    #@movies = Movie.all
  end

  def signin
    # sign in
    @user = User.find_by(username: params[:username], password: params[:password])
    
    if @user
      session[:user_name] = @user.username
      flash[:notice] = ' user#{@user.username} logins in successfully!'
      # also did not redirect to the different page according to the user type
      redirect_to root1_path # haven't created yet
    else
      flash[:notice] = ' the username or password is not correct'
      redirect_to signin_users_path
    end
  end

  def signup_show
    # signup homepage
    @movies = Movie.all
    
  end

  def signup
    # sign up
    if params[:magicCode] == "rikka"
      params[:type] = 1
    else
      params[:type] = 0
    end
    
    @user = User.create!(user_params)
    flash[:notice] = "#{@user.username} was successfully created."
    redirect_to signin_users_path
  end

  def forgot_show
    # forgot password homepage
    @movies = Movie.all
  end

  def forgot
    # forgot password
    @user = User.find params[:username]
    @user.update_attributes!(user_params[:password])
    flash[:notice] = "#{@user.username} was successfully updated."
    redirect_to signin_users_path
  end

  def send_code
    # send verfication code to the email
  end
  
  private 
  def user_params
     params.require(:user).permit(:email, :username, :password, :type, :lastname, :firstname, :phone)
  end
end