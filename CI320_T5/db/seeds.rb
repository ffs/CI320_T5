# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


	roleAdmin = Role.create(name: 'Admin', description: 'Administrator things.')
	roleReader = Role.create(name: 'Reader', description: 'Only show actions.')
	adminUser = User.create! :first_name => 'Ned', :last_name => 'Stark', :email => 'admin@admin.com', :password => 'password', :password_confirmation => 'password', :role_id => '1'
	readerUser = User.create! :first_name => 'John', :last_name => 'Snow', :email => 'reader@reader.com', :password => 'password', :password_confirmation => 'password', :role_id => '2'	
	server1 = Server.create! :server_name => 'SERVER1', :cpu => '4 vCPU', :memory => '8 GB', :storage => '700 GB', :ip_address => '10.41.130.1', :oper_sys => 'Windows 2012 R2'
	server2 = Server.create! :server_name => 'SERVER2', :cpu => '4 vCPU', :memory => '8 GB', :storage => '500 GB', :ip_address => '10.41.130.2', :oper_sys => 'Windows 2012 R2'
	server3 = Server.create! :server_name => 'SERVER3', :cpu => '8 vCPU', :memory => '32 GB', :storage => '3 TB', :ip_address => '10.41.130.3', :oper_sys => 'Windows 2012 R2'
	server4 = Server.create! :server_name => 'SERVER4', :cpu => '8 vCPU', :memory => '16 GB', :storage => '2 TB', :ip_address => '10.41.130.4', :oper_sys => 'Windows 2012 R2'
	server5 = Server.create! :server_name => 'SERVER5', :cpu => '2 vCPU', :memory => '4 GB', :storage => '100 GB', :ip_address => '10.41.130.5', :oper_sys => 'Windows 2012 R2'
	server6 = Server.create! :server_name => 'SERVER6', :cpu => '4 vCPU', :memory => '8 GB', :storage => '700 GB', :ip_address => '10.41.130.6', :oper_sys => 'Linux Red Hat 5.8'
	server7 = Server.create! :server_name => 'SERVER7', :cpu => '4 vCPU', :memory => '8 GB', :storage => '500 GB', :ip_address => '10.41.130.7', :oper_sys => 'Linux Red Hat 5.8'
	server8 = Server.create! :server_name => 'SERVER8', :cpu => '8 vCPU', :memory => '32 GB', :storage => '3 TB', :ip_address => '10.41.130.8', :oper_sys => 'Linux Red Hat 5.8'
	server9 = Server.create! :server_name => 'SERVER9', :cpu => '8 vCPU', :memory => '16 GB', :storage => '2 TB', :ip_address => '10.41.130.9', :oper_sys => 'Linux Red Hat 5.8'
	server10 = Server.create! :server_name => 'SERVER10', :cpu => '2 vCPU', :memory => '4 GB', :storage => '100 GB', :ip_address => '10.41.130.10', :oper_sys => 'Linux Red Hat 5.8'
	fsoftware1 = FSoftware.create! :f_software_name => 'NOTA FISCAL', :cpu => '8 vCPU', :memory => '32 GB', :storage => '2 TB', :version => '5.1'
	fsoftware2 = FSoftware.create! :f_software_name => 'RHU', :cpu => '4 vCPU', :memory => '16 GB', :storage => '500 GB', :version => '5.1'
	fsoftware3 = FSoftware.create! :f_software_name => 'JURIDICO', :cpu => '2 vCPU', :memory => '4 GB', :storage => '1 TB', :version => '2.0'
	fsoftware4 = FSoftware.create! :f_software_name => 'COMERCIAL', :cpu => '4 vCPU', :memory => '8 GB', :storage => '500 GB', :version => '7.5'
	fsoftware5 = FSoftware.create! :f_software_name => 'FINANCEIRO', :cpu => '4 vCPU', :memory => '8 GB', :storage => '100 GB', :version => '1.6'
	isoftware1 = ISoftware.create! :i_software_name => 'APACHE', :version => '6.1'
	isoftware2 = ISoftware.create! :i_software_name => 'IIS', :version => '5'
	isoftware3 = ISoftware.create! :i_software_name => 'NGINX', :version => '1.2'
	isoftware4 = ISoftware.create! :i_software_name => 'TOMCAT', :version => '6.5'
	isoftware5 = ISoftware.create! :i_software_name => 'REMOTEAPP', :version => '4'
