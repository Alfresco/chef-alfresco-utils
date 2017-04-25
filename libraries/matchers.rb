if defined?(ChefSpec)
  ChefSpec.define_matcher :maven_setup
  ChefSpec.define_matcher :artifact

  def create_maven_setup(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:maven_setup, :create, resource_name)
  end

  def create_artifact(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:artifact, :create, resource_name)
  end

end
