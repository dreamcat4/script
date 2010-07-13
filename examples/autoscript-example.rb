require 'autoscript'

module M
  autoscript :SimpleScript, "scripts/simple-script.rb"
end

autoscript :SimpleScript, "scripts/simple-script.rb"


p M::SimpleScript::VALUE
p SimpleScript::VALUE

# This shows that the two arrays are different, because two scripts were loaded.
M::SimpleScript::VALUE << 4
SimpleScript::VALUE << 5

p M::SimpleScript::VALUE
p SimpleScript::VALUE
