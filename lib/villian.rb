require "character"
class Villian < Character
	attr_accessor :name, :hp, :hit_chance
	def initialize
		@name = "beast"
		@hp = 6
		@hit_chance = 60
	end
end
