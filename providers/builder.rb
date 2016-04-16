###############################################################################
# Cookbook Name:: libsodium
# Copyright 2016, Joshua C. Burt
###############################################################################

action :compile do
  #############################################################################
  # Execute *nix still compile workflow
  #############################################################################
  execute 'libsodium compile and install' do
    environment('PATH' => '/usr/local/bin:/usr/bin:/bin')
    command './autogen.sh'
    cwd node['libsodium']['src']
    creates ::File.join(node['libsodium']['base'], 'lib', node['libsodium']['lib'])
  end

  execute 'libsodium compile and install' do
    environment('PATH' => '/usr/local/bin:/usr/bin:/bin')
    command "./configure --prefix=#{node['libsodium']['base']}"
    cwd node['libsodium']['src']
    creates ::File.join(node['libsodium']['base'], 'lib', node['libsodium']['lib'])
  end

  execute 'libsodium compile and install' do
    environment('PATH' => '/usr/local/bin:/usr/bin:/bin')
    command 'make'
    cwd node['libsodium']['src']
    creates ::File.join(node['libsodium']['base'], 'lib', node['libsodium']['lib'])
  end

  execute 'libsodium compile and install' do
    environment('PATH' => '/usr/local/bin:/usr/bin:/bin')
    command 'make check'
    cwd node['libsodium']['src']
    creates ::File.join(node['libsodium']['base'], 'lib', node['libsodium']['lib'])
  end

  execute 'libsodium compile and install' do
    environment('PATH' => '/usr/local/bin:/usr/bin:/bin')
    command 'make install'
    cwd node['libsodium']['src']
    creates ::File.join(node['libsodium']['base'], 'lib', node['libsodium']['lib'])
  end
end
