if defined?(ChefSpec)
  ChefSpec::Runner.define_runner_method :maven_setup
  ChefSpec::Runner.define_runner_method :artifact
  # ChefSpec::Runner.define_runner_method :apache_tomcat

  def create_maven_setup(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:maven_setup, :create, resource_name)
  end

  def create_artifact(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:artifact, :create, resource_name)
  end

  # def create_apache_tomcat(resource_name)
  #   ChefSpec::Matchers::ResourceMatcher.new(:apache_tomcat, :create, resource_name)
  # end

end
