module ApplicationHelper

	def resource_name
		:user
	end

	def resource
		@resource ||= User.new
	end

	def devise_mapping
		@devise_mapping ||= Devise.mappings[:user]
	end
	
	def inline_error(obj, attr)
		"<span class='error #{attr}'>#{obj.errors[attr].to_sentence}&nbsp;</span>"
	end

	def setup_obj(obj, association)
		obj.send(association.to_s).blank? ? obj.send(association.to_s).build : obj.send(association.to_s)
	end

end
