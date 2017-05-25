actions :run
default_action :run

resource_name :transient_variable

property :variable_name, String, name_property: true
property :variable_value

action :run do

  r = new_resource
  node.run_state[r.variable_name] = r.variable_value

end
