require 'chefspec'
require 'chefspec/policyfile'
require 'chefspec/cacher'
require 'poise_boiler/spec_helper'
require_relative '../../../libraries/vault_service'

describe VaultCookbook::Resource::VaultService do
  step_into(:vault_service)
  recipe 'hashicorp-vault::default'

  let(:chefspec_options) { { platform: 'ubuntu', version: '14.04', log_level: :debug } }

  before do
    stub_command('getcap /opt/vault/0.9.1/vault|grep cap_ipc_lock+ep').and_return(false)

     # Create the /data directory to simulate the mount
     allow(File).to receive(:directory?).with('/data').and_return(true)
  end

  context 'with default properties' do
    it { is_expected.to run_execute 'setcap cap_ipc_lock=+ep /opt/vault/0.9.1/vault' }

    #Test for symlink creation
    it 'creates a symlink for /var/log/vault to /data/var/log/vault' do
      expect(chef_run).to create_link('/var/log/vault').with(to: '/data/var/log/vault')
  end
end
