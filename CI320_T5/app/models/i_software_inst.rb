class ISoftwareInst < ActiveRecord::Base
	belongs_to :i_software
	belongs_to :server
end
