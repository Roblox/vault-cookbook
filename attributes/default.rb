#
# Cookbook: hashicorp-vault
# License: Apache 2.0
#
# Copyright 2015-2016, Bloomberg Finance L.P.
#
default['hashicorp-vault']['gems'] = {
  vault: '0.4.0',
}

default['hashicorp-vault']['service_name'] = 'vault'
default['hashicorp-vault']['service_user'] = 'vault'
default['hashicorp-vault']['service_group'] = 'vault'

default['hashicorp-vault']['version'] = '1.8.5'

default['hashicorp-vault']['archive_url_root'] = 'releases.hashicorp.com'

default['hashicorp-vault']['enterprise'] = false
default['hashicorp-vault']['use_internal_repos'] = false

default['hashicorp-vault']['config']['path'] = '/etc/vault/vault.json'
default['hashicorp-vault']['config']['license_path'] = '/etc/vault/vault_license.hclic'
default['hashicorp-vault']['config']['address'] = '127.0.0.1:8200'
default['hashicorp-vault']['config']['log_level'] = 'info'
default['hashicorp-vault']['config']['tls_cert_file'] = '/etc/vault/ssl/certs/vault.crt'
default['hashicorp-vault']['config']['tls_key_file'] = '/etc/vault/ssl/private/vault.key'
