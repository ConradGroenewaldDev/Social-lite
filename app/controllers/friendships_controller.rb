class FriendshipsController < ApplicationController
before_action :authenticate_user!
before_action :set_user, only: [:create]
before_action :set_friendship, only: [:destroy, :accept]


	def create
		@friendships = current_user.request_friendship(@user)
		respond_to do |format|
			format.html {redirect_to users_path, notice: "Friendship Created"}
		end
	end

	def destroy
		@friendships.destroy
		respond_to do |format|
			format.html {redirect_to users_path, notice: "Friendship Deleted"}
		end
	end

	def accept
		@friendships.accept_friendship
		respond_to do |format|
			format.html {redirect_to users_path, notice: "Friendship Accepted"}
		end
	end

	private

	def set_user
		@users = User.find(params[:user_id])

	end

	def set_friendship
		@friendships = Friendship.find(params[:id])
	end	

end