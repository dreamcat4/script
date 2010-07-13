puts "in #{__FILE__}, line #{__LINE__}"

load File.dirname(__FILE__)+"/sub-script.rb"

OUTPUT = ["input was #{INPUT}"]

module BaseModule
  class BaseClass
  end
end

require File.dirname(__FILE__)+'/lib/a-class'

require File.dirname(__FILE__)+'/lib/x-accessor'
require File.dirname(__FILE__)+'/lib/x-accessor' # only loaded once

# Falls back to Kernel.load, since "benchmark.rb" isn't in the current dir.
load "benchmark.rb" unless $LOADED_FEATURES.include?("benchmark.rb")

# Falls back to Kernel.require.
require 'yaml'

MORE_OUTPUT[:buzz] = 3

OUTPUT << foo((1..10).to_a) # foo is defined in sub-script.rb

def self.run
  puts "#{self} is running!"
end
