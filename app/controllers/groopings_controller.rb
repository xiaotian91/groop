class GroopingsController < ApplicationController

  def new
    @groop = Grooping.new
  end
  
  def create 
    @params = params.require(:grooping).permit(:groop_name)
    @groop = Grooping.new(@params)
    if @groop.save
      redirect_to groopings_url
    else
      render action: "new"
    end
  end

  def index
    @groops = Grooping.all
  end
  
  def show
    @groop = Grooping.find params[:id]
  end

end
