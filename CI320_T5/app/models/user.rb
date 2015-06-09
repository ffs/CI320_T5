class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

	devise :database_authenticatable, :recoverable, :registerable, :rememberable, :trackable, :validatable

	validates :first_name,  presence: true, length: { maximum: 25 }
	validates :last_name,  presence: true, length: { maximum: 25 }
	validates :password, presence: true, length: { minimum: 6 }

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :email, presence: true, length: { maximum: 255 },
	                format: { with: VALID_EMAIL_REGEX },
	                uniqueness: { case_sensitive: false }

	belongs_to :role
	# User::role
	# The available roles

	def role
		r = Role.find(@user.role_id)
		return r
	end

	def roleName
		r = Role.find(@user.role_id)
		return r.name
	end

end
