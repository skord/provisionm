# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

NodeCategory.create(name: 'Development')
NodeCategory.create(name: 'Production')
NodeCategory.create(name: 'Test')
NodeCategory.create(name: 'Servers')
NodeCategory.create(name: 'Switches')
NodeCategory.create(name: 'Routers')
Service.create(name: 'DHCP')
Service.create(name: 'SNMP')
Service.create(name: 'ICMP')
Service.create(name: 'Telnet')