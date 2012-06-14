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
services = ["DHCP", "SNMP", "ICMP", "Telnet", "DNS", "FTP", "HTTP", "HTTPS", "IMAP", "LDAP", "NRPE", "POP3", "Radius", "SMTP", "SSH", "BGP_Session", "BSF", "CITRIX", "Cisco_IP_SLA", "Dell_OpenManageChassis", "DiskUsage", "DominoIIOP", "HOST-RESOURCES", "JBOSS", "JDBC", "JSR160", "LDAPS", "LOOP", "MSExchange", "MX4J", "Memcached", "NOTES", "NTP", "OMSAStorage", "PERC", "SMB", "SMS", "TrivialTime", "WEB", "WMI"]
services.each do |s|
  Service.create(name: s)
end