name             "haproxy_latest"
description      'Installs and configures haproxy'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
maintainer       "AWS OpsWorks"
license          "Apache 2.0"
version          "1.0.0"

recipe 'haproxy_v6', 'Install and configure a haproxy-v6 instance'
recipe 'haproxy_v6::configure', 'reconfigure and restart haproxy_v6'


attribute 'haproxy_v6/backend',
  :display_name => 'Backend',
  :description => 'List of backend services to load balance',
  :required => true,
  :type => 'array'

depends 'opsworks_commons'
