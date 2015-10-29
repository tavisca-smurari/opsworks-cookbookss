
bash 'GetUpdatedHaproxyextract_module' do
  cwd ::File.dirname(src_filepath)
  code <<-EOH
    sudo add-apt-repository ppa:vbernat/haproxy-1.6
    sudo apt-get update
    sudo apt-get install haproxy
    EOH
end

file '/var/www/customers/public_html/index.php' do
  content '<html>This is a placeholder for the home page.</html>'
  mode '0755'
  owner 'web_admin'
  group 'web_admin'
end
