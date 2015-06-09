class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

	enum role: [:master, :reader, :architect]
	after_initialize :set_default_role, :if => :new_record?

	def set_default_role
		self.role ||= :reader
	end

	devise :database_authenticatable, :recoverable, :registerable, :rememberable, :trackable, :validatable

	validates :first_name,  presence: true, length: { maximum: 25 }
	validates :last_name,  presence: true, length: { maximum: 25 }
	validates :password, presence: true, length: { minimum: 6 }

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :email, presence: true, length: { maximum: 255 },
	                format: { with: VALID_EMAIL_REGEX },
	                uniqueness: { case_sensitive: false }

	has_many :users_roles
	has_many :roles, :through => :users_roles, :foreign_key => :role_id

	# User::role
	# The available roles

	# in models/user.rb
	def has_role?(role)
		r = RolesUsers.find(user.id)
		r.include?(role)
	end

	def roles=(user)
		r = RolesUsers.find(user.id)
		return r
	end

end
