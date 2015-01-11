### RPG GAME

puts "Welcome to the Real Life... Let's start with your name"

class User
  attr_accessor :name, :hp, :hit_chance
  def initialize(name)
    @name = name
    @hp = 10
    @hit_chance = 80
  end
end

gamer_name = gets.chomp.capitalize!

gamer = User.new(gamer_name) #username set to gamer

class Villian
  attr_accessor :name, :hp, :hit_chance
  def initialize
    @name = "beast"
    @hp = 6
    @hit_chance = 60
  end
end

cpu = Villian.new() #every bad guy is "beast"

#villians = ["semi-colon", "Justin Bieber", "Darth Vader", "Bizzaro #{gamer.name}"]

# *ask the fight question
def fight_question
  fighting = true
  while fighting #aslong as fightin = true
    puts "Fight the beast or flee?! (Type 'fight' or 'flee')"
    fight_flee = gets.chomp.downcase
    if fight_flee == "fight"
      fight(gamer, cpu)
      fighting = false
    elsif fight_flee == "flee"
      flee()
      fighting = false
    else
      puts "Unable to read command"
    end
  end
end

#when fight is called
def fight(gamer, cpu)
keep_fighting = true
  while gamer.hp > 0 && cpu.hp > 0
    gamer_chance = rand(0..100)
    cpu_chance = rand(0..100)
    if gamer.hp < 0
      if gamer_chance > 81
        damage = rand(1..6)
        if damage == 6
          puts "Fatal blow!"
          cpu.hp = 0
          keep_fighting = false
        else
          puts "You did #{damage}"
          cpu.hp -= damage
          puts "The beast lost #{damage} hp"
        end
      end
    else
        puts "You missed the attack, looks like cake not only adds to the waistline but also to the arms..."
    end
    if cpu.hp < 0
      if cpu_chance > 61
        damage = rand (2..4)
        if damage == 4
          puts "Critical hit! The beast did #{damage}!"
          gamer.hp -= damage
        else
          puts "The foul beast did #{damage}"
          gamer.hp -= damage
        end
      end
    else
      puts "The beast missed their attack! Quickly send this foul beast back to the abyss!"
    end
  end
end

def flee

  puts "You lost control of their bowels and fled"

end

puts "Welcome to your life #{gamer.name}, Let's start your life!"

puts "You encounter your first problem of the day,brush your teeth or eat breakfast?(Type 'first' or 'second')"

first_answer = gets.chomp.downcase
if first_answer == "first"
  puts "You go to the bathroom BUT SUDDENLY AN ALLIGATOR APPEARS FROM THE TOILET!"
  fight_question()
elsif
  fist_answer == "second"
  puts "You go make breakfast BUT SUDDENLY A Racoon HAS YOUR BREAKFAST!"
  fight_question()
end


puts "Second problem now arises, what is for lunch? (Type in 'chicken' or 'fish')"

second_answer = gets.chomp.downcase
if second_answer == "chicken"
  puts "The chicken is still alive and challenges you to a duel!"
  fight_question()
elsif seond_answer == "second"
  puts "The fish throws it's scales at your like a ninja star!"
  fight_question()
end

puts "Seriously #{gamer.name}! You've wasted a good amount of your time on a terminal game about real life..."
