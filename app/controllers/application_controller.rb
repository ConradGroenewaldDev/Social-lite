class ApplicationController < ActionController::Base
	#make helper for request_count method
	helper_method :request_count
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  #create method for requests counts/ use method partial from users_controller
  def request_count
  	current_user.pending_friend_requests_from.map(&:user).size
  	
  end
end
