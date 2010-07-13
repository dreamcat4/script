require 'script'

plugins = Dir.glob("plugins/*.rb").map do |file|
  Script.load file
end

p plugins

plugins.each do |plugin|
  puts "plugin #{plugin} defines these constants:"
  plugin.constants.each do |const_name|
    val = plugin.const_get(const_name)
    puts "  %20s = %s" % [const_name, val.inspect] 
  end
  puts
end
