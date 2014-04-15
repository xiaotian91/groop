class InvitationsController < ApplicationController

before_filter :get_logged_in_user

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


  #edit and update are called when current user accepts/denies groop invite
  def edit
    @invitation = Invitation.find(params[:id])
  end

  def update
    @invitation = Invitation.find(params[:id])
    invite_params = params.require(:invitation).permit(:sender_id, :recipient_id, :groop_id, :is_accepted)
    if @invitation.update_attributes(invite_params)
      #create a new registration if the invite is accepted
      if @invitation.is_accepted == 1
        @addGroop = @user1.groop_registrations.new
        @addGroop.grooping_id = @invitation.groop_id
        @addGroop.user_id = @user1.id
        @addGroop.save
        redirect_to grooping_url(@addGroop.grooping_id)
      else
        redirect_to @user1
      end
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
      @user1 = User.find id 
    end
  end

end
