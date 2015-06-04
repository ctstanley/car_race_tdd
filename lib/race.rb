require_relative 'car'

class Race
	attr_accessor :cars
	# Initialize with two cars
	def initialize
		@cars = Array.new(2) { |i| Car.new }
		@cars.each { |car| car.accelerate(rand(1..100)) }
	end
	def winner
		cars.first.speed > cars.last.speed ? cars.first : cars.last
	end
	def loser
		cars.first.speed < cars.last.speed ? cars.first : cars.last
	end
end

