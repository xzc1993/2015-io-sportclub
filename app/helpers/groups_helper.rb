module GroupsHelper
	
	def is_current_user_member_of?(group)
		user = current_user
		is_user_member_of?( user, group)
	end

	def is_user_member_of?(user, group)
		user.group_ids.include? Group.find_by( name: group).id
	end
end
