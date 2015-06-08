class FSoftwareInst < ActiveRecord::Base
	belongs_to :f_software
	belongs_to :server
end
