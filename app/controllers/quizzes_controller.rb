class QuizzesController < ApplicationController

before_filter :get_logged_in_user, :only => [:new, :create]

    def new
    @quiz = Quiz.new
  end

  def create 
    @params = params.require(:quiz).permit(:one, :two, :three, :four, :five, :six, :seven, :eight, :nine, :ten)
    @quiz = Quiz.new(@params)
    @quiz.id = @user.id
    @quiz.user = @user
    if  @quiz.save
      redirect_to user_url(@quiz.user)
    else
      render :action => "new"
    end
  end
 
  def index
    @quizzes = Quiz.all
  end

  def edit
   @quiz = Quiz.find(params[:id])
  end

  def update
    @quiz = Quiz.find(params[:id])
    quiz_params = params.require(:quiz).permit(:one, :two, :three, :four, :five, :six, :seven, :eight, :nine, :ten)
    if @quiz.update_attributes(quiz_params)
      redirect_to user_url(@quiz.user)
    else
      render :action => "edit"
    end
  end

private
  def get_logged_in_user
    id = session[:user_id]
    if id.nil?
      flash[:notice] = "You must log in first"
      redirect_to login_url
    else
      @user = User.find id
    end
  end

end



