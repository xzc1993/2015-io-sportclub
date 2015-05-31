module SessionHelper

	def log_in(user)
	    session[:user_id] = user.id
	end

	def current_user
		if session.has_key?(:user_id)
			@current_user ||= User.find_by(id: session[:user_id])
		else
			@current_user = nil
		end
	end

	def logged_in?
	  !current_user.nil?
	end

	def log_out
		session.delete(:user_id)
	end

	
	def is_current_user_member_of?(group)
		if not current_user
			false
		else
			is_user_member_of?( current_user, group)
		end
	end

	def is_user_member_of?(user, group)
		begin
			user.group_ids.include? Group.find_by( name: group).id
		rescue Mongoid::Errors::DocumentNotFound
			false
		end
	end


end
