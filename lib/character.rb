class Character # Superclass of User and Villain
	attr_reader :name
	attr_accessor :hp, :hit_chance
	def initialize(name, hp, hit_chance)
		@name, @hp, @hit_chance = name, hp, hit_chance
	end
end