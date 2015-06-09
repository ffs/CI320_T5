class Role < ActiveRecord::Base
	has_many :users_roles
	has_many :users, :through => :users_roles, :foreign_key => :user_id
	accepts_nested_attributes_for :users
  	attr_accessible :name, :description
end
