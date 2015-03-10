module UsersHelper
	def action_buttons(user)

		case current_user.friendship_status(user) when "friends"
			"Remove Friendship"
		when "pending"
			"Cancel Request"
		when "requested"
			"Accept or Deny"
		when "not friends"
			"Add as friend"
		end
	end
end
