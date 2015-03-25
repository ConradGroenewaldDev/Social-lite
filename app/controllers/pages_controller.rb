class PagesController < ApplicationController
  def home
  	#add condition so when logged in not to direct to landing page when clicking menu title
  	if current_user
  		redirect_to activities_path
  	end
  end
end
