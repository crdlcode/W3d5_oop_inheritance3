require_relative 'system.rb'

class Body < System
	def intialize(name, mass)
		@name = name
		@mass = mass
	end

	def name
		@name
	end

	def mass
		@mass
	end
end