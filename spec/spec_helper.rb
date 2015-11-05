$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'draper/cancancan'
require 'draper'
require 'cancancan'
# Add support to load paths
$:.unshift File.expand_path('../support', __FILE__)
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
