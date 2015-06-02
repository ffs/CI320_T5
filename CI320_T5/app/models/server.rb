class Server < ActiveRecord::Base
	has_many :i_sofware_inst
	has_many :f_sofware_inst
	has_many :db_inst
	
	validates :ip_address, :server_name, :memory, :presence => true
	validates :ip_address, :format => {:with => Resolv::IPv4::Regex}
end
