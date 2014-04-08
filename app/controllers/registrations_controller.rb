class RegistrationsController < ApplicationController
 def create
    registration_params = params.require(:registration).permit(:user_id, :course_id)
    @registration = Registration.new registration_params
    @registration.save
    redirect_to user_url(@registration.user)
  end



end
