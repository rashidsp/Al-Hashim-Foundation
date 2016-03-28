class UsersController < ApplicationController
  def validation_email
  	user = User.where(email: params[:email]).first
  	render json: {success: user.present? ? true : false} 		
  end
end
