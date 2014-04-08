class CoursesController < ApplicationController

before_filter :get_logged_in_user
  
  def new
   @course = Course.new 
  end

  def create
   course_params = params.require(:course).permit(:courseName, :courseNum, :instructorName, :courseDesc)
   @course = Course.create course_params
   if @course.save
      redirect_to courses_url
   end
  end

  def index
    @courses = Course.all
  end
  
  def show
    @course = Course.find(params[:id])
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
