###############################################################################
# Cookbook Name:: libsodium
# Attributes:: default
# Copyright 2016, Joshua C. Burt
###############################################################################

default['libsodium']['base'] = '/usr/local'
default['libsodium']['src'] = '/usr/local/src/libsodium'
default['libsodium']['install_method'] = 'source'
default['libsodium']['src_url'] = 'https://github.com/jedisct1/libsodium.git'
default['libsodium']['version'] = '1.0.10'
default['libsodium']['lib'] = 'libsodium.so'
