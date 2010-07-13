require File.dirname(__FILE__)+'/../lib/script'

script = Script.load("scripts/simple-script.rb")

p script::VALUE
