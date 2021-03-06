require "character"
class User < Character
	def initialize(name)
		super name, 10, 80
	end
	def flee
		puts "You lost control of your bowels and fled"
		sleep 1
	end
	def fight(cpu)
		keep_fighting = true
		while gamer.hp > 0 && cpu.hp > 0
			gamer_chance, cpu_chance = rand(0..100), rand(0..100)
			if gamer.hp < 0
				if gamer_chance > 81
					damage = rand(1..6)
					if damage == 6
						puts "Fatal blow!"
						cpu.hp, keep_fighting = 0, false
					else
						puts "You did #{damage}"
						sleep 1
						cpu.hp -= damage
						puts "The beast lost #{damage} hp"
						sleep 1
					end
				end
			else
				puts "You missed the attack, looks like cake not only adds to the waistline but also to the arms..."
				sleep 1 # Delay 1 second
			end
			if cpu.hp < 0
				if cpu_chance > 61
					damage = rand (2..4)
					if damage == 4
						puts "Critical hit! The beast did #{damage}!"
						gamer.hp -= damage
						sleep 1
					else
						puts "The foul beast did #{damage}"
						gamer.hp -= damage
						sleep 1
					end
				end
			else
				puts "The beast missed their attack! Quickly send this foul beast back to the abyss!"
				sleep 1
			end
		end
	end
end
