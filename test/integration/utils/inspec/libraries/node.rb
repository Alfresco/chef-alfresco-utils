class NodeFile < Inspec.resource(1)
  name 'node'
  attr_reader :content
  def initialize
    @content = Hashie::Mash.new(inspec.json('/tmp/node.json').params)
  end
end
