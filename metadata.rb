name 'hashicorp-vault'
maintainer 'John Bellone'
maintainer_email 'jbellone@bloomberg.net'
license 'Apache 2.0'
description 'Application cookbook for installing and configuring Vault.'
long_description 'Application cookbook for installing and configuring Vault.'
issues_url 'https://github.com/johnbellone/vault-cookbook/issues'
source_url 'https://github.com/johnbellone/vault-cookbook/'
version '1002.7.13'

supports 'ubuntu', '>= 12.04'
supports 'redhat', '>= 6.4'
supports 'centos', '>= 6.4'
supports 'windows'
supports 'freebsd'

depends 'build-essential'
depends 'golang', '~> 4.1.0'
depends 'poise', '~> 2.6'
depends 'poise-service', '~> 1.1'
depends 'rubyzip', '~> 1.0'
depends 'mingw', '= 2.1.1'
