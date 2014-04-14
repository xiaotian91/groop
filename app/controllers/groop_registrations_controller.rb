class GroopRegistrationsController < ApplicationController

  def create
    groop_registration_params = params.require(:groop_registration).permit(:user_id, :grooping_id)
    @groop_registration = GroopRegistration.new groop_registration_params
    @groop_registration.save
    redirect_to user_url(@groop_registration.user)
  end
 
end
