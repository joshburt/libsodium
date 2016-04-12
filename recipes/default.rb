include_recipe 'build-essential'

git node['libsodium']['src'] do
  repository node['libsodium']['src_url']
  revision node['libsodium']['version']
  action :sync
end

execute 'libsodium compile and install' do
  environment({'PATH' => '/usr/local/bin:/usr/bin:/bin'})
  command "./autogen.sh && ./configure --prefix=#{node['libsodium']['base']} && make && make check && make install"
  cwd node['libsodium']['src']
  creates File.join(node['libsodium']['base'], 'lib', node['libsodium']['lib'])
end

template '/etc/ld.so.conf.d/libsodium.conf' do
  group 'root'
  mode '0444'
  owner 'root'
end

execute 'ldconfig' do
  action :nothing
  command 'ldconfig'
  subscribes :run, 'template[/etc/ld.so.conf.d/libsodium.conf]', :immediately
end
