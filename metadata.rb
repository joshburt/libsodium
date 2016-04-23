name             'libsodium'
maintainer       'Joshua C. Burt'
maintainer_email 'joshburt@shapeandshare.com'
license          'Apache License'
description      'Installs/Configures libsodium'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.0'

issues_url 'https://github.com/joshburt/libsodium/issues'
source_url 'https://github.com/joshburt/libsodium'

depends 'build-essential'
depends 'seven_zip'
depends 'chef_handler'
depends 'windows'
