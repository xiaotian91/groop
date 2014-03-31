class CoursesController < ApplicationController
  
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

end
