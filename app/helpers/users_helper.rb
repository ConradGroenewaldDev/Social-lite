module UsersHelper
	def action_buttons(user)

		case current_user.friendship_status(user) when "friends"
			link_to "Cancel Friendship", friendships_path(current_user.friendship_relative(user)), method: :delete
		when "pending"
			link_to "Cancel Request", friendships_path(current_user.friendship_relative(user)), method: :delete
		when "requested"
			link_to "Accept", accept_friendship_path(current_user.friendship_relative(user)), method: :put
		when "not friends"
			link_to "Add as Friend", friendships_path(user_id: user.id), method: :post
		end
	end
end
