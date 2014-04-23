class GroopingsController < ApplicationController

before_filter :get_logged_in_user

  def new
    @groop = Grooping.new
  end
  
  def create 
    @params = params.require(:grooping).permit(:groop_name)
    @groop = Grooping.new(@params)
    if @groop.save
      @addGroop = @user1.groop_registrations.new
      @addGroop.grooping_id =  @groop.id
      @addGroop.user_id = @user1.id
      @addGroop.save
      redirect_to @user1
    else
      render action: "new"
    end
  end

  def index
    @groops = Grooping.all
  end
  
  def show
    @groop = Grooping.find params[:id]
    @post_list = Post.order(posted: :desc).all

    @post = Post.new
    @post.posted = Time.now
    @post.user = @user1
    @post.groop_id = @groop.id
    @post.save
    
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
