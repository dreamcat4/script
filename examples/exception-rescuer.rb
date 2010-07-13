require 'script'

begin
  script = Script.load("scripts/exception-raiser.rb")
rescue Exception => ex
  puts ex.message
end
