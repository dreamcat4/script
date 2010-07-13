require 'script'

script = Script.load("scripts/script.rb") { |script| script::INPUT = 3 }

raise if defined?(INPUT)

p script::OUTPUT
p script::MORE_OUTPUT

script.run

puts "script.x = #{script.x}"
