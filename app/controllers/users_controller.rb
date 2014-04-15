class UsersController < ApplicationController

before_filter :get_logged_in_user, :except => [:new, :create]

  def new
    @user = User.new
  end
  
  def create
   user_params = params.require(:user).permit(:username, :password, :real_name, :password_confirmation)
    @user = User.new user_params
    if (@user.save)
      session[:user_id] = @user.id
      redirect_to edit_user_url(@user)
    else
      render action: 'new'
    end
  end
 
  def show
    @user = User.find(params[:id])
    @users = User.all
    @registration = @user.registrations.new
    @groop_registration = @user.groop_registrations.new
    @invites = Invitation.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  @user = User.find(params[:id])
  user_params = params.require(:user).permit(:real_name, :age, :gender, :major, :bio)
  if @user.update_attributes(user_params)
  unless @user.quiz.nil?
    redirect_to user_url(@user)
  else
    redirect_to new_quiz_url
  end
  else
    render :action => "edit"
  end
  end 

  def login
  end

  def logout
  end

private
  def get_logged_in_user
    id = session[:user_id]
    if id.nil?
      flash[:notice] = "You must log in first"
      redirect_to login_url
    else
      @user1 = User.find id
    end
  end

end
