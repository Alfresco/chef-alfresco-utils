require 'spec_helper'

RSpec.describe 'alfresco-utils::java' do
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

  it 'should include java::default recipe' do
    expect(chef_run).to include_recipe('java::default')
  end
end
