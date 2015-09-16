execute "yum update all package" do
  command "yum update -y"
  user "root"
end

#execute "create group 'www'" do
#  command "groupadd www"
#  user "root"
#end

execute "add group user 'vagrant' to 'wwww' " do
  command "usermod -a -G www vagrant"
  user "root"
end

execute "change ower 'vagrant' for /var/www" do
  command "chown -R root:www /var/www"
  user "root"
end

execute "change permision /var/www" do
  command "chmod 2775 /var/www"
  user "root"
end

execute "setting group permision" do
  command "find /var/www -type d -exec sudo chmod 2775 {} +"
  user "root"
end

execute "setting file permision" do
  command "find /var/www -type f -exec sudo chmod 0664 {} +"
end

execute "update timezone UTC->JST" do
  command "cp /usr/share/zoneinfo/Japan /etc/localtime"
  user "root"
end
