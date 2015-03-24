#Controller for the timeline activity
class ActivitiesController < ApplicationController
	#user must be logged in before being able to view timeline
	before_action :authenticate_user!, only: [:index]


 	def index
 		#get all active friends to show activity of timeline
 		@users = current_user.active_friends
 		#insert into above global array so we can view all timeline activities by using PUSH command
 		@users.push(current_user)
 		#distinguish between which posts are to be displayed everything or just posts
 		case params[:content] when 'posts'
 			#create global var/fetch all activities belonging to active friends and ourself and order DESC
 			@activities = PublicActivity::Activity.where(owner_id: @users, trackable_type: "Post").order('created_at DESC')
 		#if not posts render eveything and order by DESC order	
 		else
 			@activities = PublicActivity::Activity.where(owner_id: @users).order('created_at DESC')
 		end
 	end


end