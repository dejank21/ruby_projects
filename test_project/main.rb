require_relative 'lib/airport'
require_relative 'lib/flight'
require_relative 'lib/hotel'
# Here we are using require_relative to include my classes, if we had dependecy files we would use require.
# If two classes use methods with the same name, rubt will default to the last one loaded.
# We avoid this using modules.
Airport.new.introduce

Flight.new.introduce

Hotel.new.introduce

require 'colorize'
# This is a simple example of how to use the colorize gem to add color to your output.
puts 'Red goes faster'.colorize(:red)

puts 'Green goes slower'.colorize(:green)