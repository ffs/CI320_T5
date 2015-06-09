class RolesUsers < ActiveRecord::Base
	accepts_nested_attributes_for :roles
end
