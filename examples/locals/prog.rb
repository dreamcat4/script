require 'script'

script = Script.load("my-script.rb")

p eval("x", script.__script_scope)
p script.__local_variable_get(:x)
p script.__local_variables
p script.instance_variables
