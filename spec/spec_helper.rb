$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
puts "hey!"
require 'draper/cancan'
require 'draper'
require 'cancancan'
# Add support to load paths
$:.unshift File.expand_path('../support', __FILE__)
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
