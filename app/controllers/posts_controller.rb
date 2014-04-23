class PostsController < ApplicationController

before_filter :get_logged_in_user, :only => [:new, :create]
 
  def new
    @post = Post.new
  end

  def create
    post_params = params.require(:post).permit(:content)
    @post = Post.new post_params
    @post.posted = Time.now
    @post.user = @user1
    if @post.save
      redirect_to posts_url
        else
      render action: 'new'
    end
  end  

  def index 
 #   @post_list = Post.order(posted: :desc).all
  end

  def edit 
    @post = Post.find(params[id])
  end

  def update
    @post = Post.find(params[:id])
    post_params = params.require(:post).permit(:content)
    if @post.update_attributes(post_params)
       redirect_to grooping_url(@post.groop_id)
    end
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
