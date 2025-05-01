require_relative 'lib/airport'
require_relative 'lib/flight'
require_relative 'lib/hotel'
#Here we are using require_relative to incluede my classes, if we had dependecy files we would use require.

Airport.new.introduce

Flight.new.introduce

Hotel.new.introduce