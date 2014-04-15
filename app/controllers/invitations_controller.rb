class InvitationsController < ApplicationController

before_filter :get_logged_in_user, :only => [:new, :create]

  def new
    @id = params[:recipient_id]
    @invitation = Invitation.new
    
  end

  def create
    invite_params = params.require(:invitation).permit(:sender_id, :recipient_id, :groop_id)
    @invitation = Invitation.new invite_params
    @invitation.sender_id = @user1.id
    @invitation.recipient_id = params[:recipient_id] 
    if @invitation.save
      redirect_to :controller => 'users', :action => 'show', :id => @user1.id
    else
      render :action => "new"
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
