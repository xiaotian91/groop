class UsersController < ApplicationController

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


def computeCompat

 for user in @users
   compatScore = 100 

  if @user.quiz.one!=user.quiz.one 
     compatScore = compatScore - 5 
  end
  if @user.quiz.two!=user.quiz.two
    compatScore = compatScore - 5
  end
  if @user.quiz.three!=user.quiz.three
    compatScore = compatScore - 5 
  end
  if @user.quiz.three!=user.quiz.three
    compatScore = compatScore - 5 
  end
  if @user.quiz.four!=user.quiz.four
    compatScore = compatScore - 5 
  end
  if @user.quiz.five!=user.quiz.five
   compatScore = compatScore - 5 
  end
  if @user.quiz.six!=user.quiz.six 
    compatScore = compatScore - 5 
  end
  if @user.quiz.seven!=user.quiz.seven 
    compatScore = compatScore - 5 
  end
  if @user.quiz.eight!=user.quiz.eight 
    compatScore = compatScore - 5 
  end
 end
end


end
