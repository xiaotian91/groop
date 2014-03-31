class QuizzesController < ApplicationController
    def new
    @quiz = Quiz.new
  end

  def create 
    @params = params.require(:quiz).permit(:one, :two)
    @quiz = Quiz.new(@params)
    @quiz.save
    redirect_to(quizzes_url)
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
    redirect_to quizzes_url
  else
    render :action => "edit"
  end
  end
end
