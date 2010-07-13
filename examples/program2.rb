#!/usr/bin/env ruby

require File.dirname(__FILE__)+'/../lib/script'

script = Script.load(File.dirname(__FILE__)+'/scripts/script.rb') { |script| script::INPUT = 3 }

raise if defined?(INPUT)

p script::OUTPUT
p script::MORE_OUTPUT

script.run

puts "script.x = #{script.x}"
