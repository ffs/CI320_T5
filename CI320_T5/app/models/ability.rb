class Ability
	include CanCan::Ability

	def initialize(user)
		
		user ||= User.new # guest user

		if user.has_role?(:master) 
			can :manage, :all
		elsif user.has_role?(:reader)
			can :read, [Server, Environments, ISoftware, FSoftware, Db]
		elsif user.has_role?(:architect)
			can :manage, [Server, Environments, ISoftware, FSoftware, Db]
		end
	end
end