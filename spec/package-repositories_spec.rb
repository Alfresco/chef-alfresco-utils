require 'spec_helper'

RSpec.describe 'alfresco-utils::package-repositories' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new(
      platform: 'centos',
      version: '7.2.1511',
      file_cache_path: '/var/chef/cache'
    ) do |node|
    end.converge(described_recipe)
  end

  before do
  end

  it 'should include yum-epel::default recipe' do
    chef_run.node.normal['platform_family'] = 'rhel'
    chef_run.converge(described_recipe)
    expect(chef_run).to include_recipe('yum-epel::default')
  end
end
