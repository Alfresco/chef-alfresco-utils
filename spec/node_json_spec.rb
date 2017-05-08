require 'spec_helper'

RSpec.describe 'alfresco-utils::node_json' do
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

  it 'should create a /tmp/node.json file' do
    expect(chef_run).to create_file('/tmp/node.json')
  end
end
