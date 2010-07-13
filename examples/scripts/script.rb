puts "in #{__FILE__}, line #{__LINE__}"

load "sub-script.rb"

OUTPUT = ["input was #{INPUT}"]

require 'lib/x-accessor'
require 'lib/x-accessor' # only loaded once

# Falls back to Kernel.load, since "benchmark.rb" isn't in the current dir.
load "benchmark.rb" unless $LOADED_FEATURES.include?("benchmark.rb")

# Falls back to Kernel.require.
require 'yaml'

MORE_OUTPUT[:buzz] = 3

OUTPUT << foo((1..10).to_a) # foo is defined in sub-script.rb

def self.run
  puts "#{self} is running!"
end
