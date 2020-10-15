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
    @users= User.all
  end

  def signin
    # sign in
    @user = User.find_by(username: params.require(:user)[:username], password: params.require(:user)[:password])
    
    if @user

      session[:username] = @user.username
      flash[:notice] = ' user#{@user.username} logins in successfully!'

      # also did not redirect to the different page according to the user type
      redirect_to user_path(:id => @user.id) # haven't created yet
    else
      flash[:notice] = ' the username or password222222 is not correct'
      redirect_to signin_users_path
    end
  end

  def signup_show
    # signup homepage
    @users= User.all
  end

  def signup
    # sign up
    new_user = user_params.except(:security_code)
    if params[:security_code] == "rikka"
      new_user[:user_type] = 1
    else
      new_user[:user_type] = 0
    end
    
    @user = User.create!(new_user)
    flash[:notice] = "#{@user.username} was successfully created."
    redirect_to signin_users_path # "sign in does not work"
  end

  def forgot_show
    # forgot password homepage
    # @users = User.all
  end

  def forgot
    # forgot password
    # verify the email and verification code pair in (global varibale or database)
    # update password
    # redirect to signin_show
    redirect_to send_code_users_path
  end

  def send_code
    # send verfication code to the email
    @user = User.where("email = ?", params[:email]).first
   
    if @user # if the email exists
      # 1), trigger send_password_reset_email
      # @user.send_password_reset_email
      code = UserMailer.password_reset(@user).deliver_now
 #1.1): if sent is successful
      flash[:info] = "Email sent with password reset instructions" 
      # redirect_to signin_users_path
    else
      flash.now[:danger] = "Email address not found. Please register first!"
      redirect_to signup_users_path
    end
  end
  
  private 
  def user_params
     params.require(:user).permit(:email, :username, :password, :security_code, :lastname, :firstname, :phone)
  end

end
