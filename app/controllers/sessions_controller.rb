class SessionsController < Devise::SessionsController
	
	def create
    @resource = User.find_for_database_authentication(email: params[:user][:email])
    return invalid_login_attempt unless @resource

    if @resource.valid_password?(params[:user][:password])
     	if sign_in @resource
    		@resource
    	else
    		@error = @resource.errors.full_messages.to_sentence
    	end		
    else
      invalid_login_attempt
    end
  end

  protected 

  def invalid_login_attempt
  	@error = "Invalid email or password!"
  end
end
