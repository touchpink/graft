#
# Cookbook Name:: graft
# Recipe:: phpmyadmin
#

script "phpmyadmin" do
  interpreter "bash"
  user "vagrant"
  group "www-data"
  cwd "/tmp"
  code <<-EOH
    if [ ! -d /srv/www/default/phpmyadmin ]; then
      composer create-project phpmyadmin/phpmyadmin /srv/www/default/phpmyadmin
    fi
  EOH
end
