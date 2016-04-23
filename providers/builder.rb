###############################################################################
# Cookbook Name:: libsodium
# Copyright 2016, Joshua C. Burt
###############################################################################

use_inline_resources

action :compile do
  #############################################################################
  # Execute *nix still compile workflow
  #############################################################################
  execute 'libsodium autogen' do
    environment('PATH' => '/usr/local/bin:/usr/bin:/bin')
    command './autogen.sh'
    cwd node['libsodium']['src']
    creates ::File.join(node['libsodium']['base'], 'lib', node['libsodium']['lib'])
  end

  execute 'libsodium configure' do
    environment('PATH' => '/usr/local/bin:/usr/bin:/bin')
    command "./configure --prefix=#{node['libsodium']['base']}"
    cwd node['libsodium']['src']
    creates ::File.join(node['libsodium']['base'], 'lib', node['libsodium']['lib'])
  end

  execute 'libsodium make' do
    environment('PATH' => '/usr/local/bin:/usr/bin:/bin')
    command 'make'
    cwd node['libsodium']['src']
    creates ::File.join(node['libsodium']['base'], 'lib', node['libsodium']['lib'])
  end

  execute 'libsodium make check' do
    environment('PATH' => '/usr/local/bin:/usr/bin:/bin')
    command 'make check'
    cwd node['libsodium']['src']
    creates ::File.join(node['libsodium']['base'], 'lib', node['libsodium']['lib'])
  end

  execute 'libsodium make install' do
    environment('PATH' => '/usr/local/bin:/usr/bin:/bin')
    command 'make install'
    cwd node['libsodium']['src']
    creates ::File.join(node['libsodium']['base'], 'lib', node['libsodium']['lib'])
  end
end
