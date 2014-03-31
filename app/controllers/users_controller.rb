class UsersController < ApplicationController

  def new
    @user = User.new
  end
  
  def create
   user_params = params.require(:user).permit(:username, :password, :real_name, :password_confirmation)
    @user = User.new user_params
    if (@user.save)
      redirect_to user_url(@user)
    else
      render action: 'new'
    end
  end
 
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  @user = User.find(params[:id])
  user_params = params.require(:user).permit(:real_name, :age, :gender, :major, :bio)
  if @user.update_attributes(user_params)
    redirect_to user_url(@user)
  else
    render :action => "edit"
  end
  end 

  def login
  end

  def logout
  end

end
