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

gamer = User.new gamer_name #username set to gamer

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
def fight_question(gamer, cpu)
  fighting = true
  while fighting #aslong as fightin = true
    puts "Fight the beast or flee?! (Type 'fight' or 'flee')"
    fight_flee = gets.chomp.downcase
    if fight_flee == "fight"
      fight(gamer, cpu)
      fighting = false
    elsif fight_flee == "flee"
      flee(gamer)
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
    #puts "1. checkpoint"
    #puts gamer_chance
    if gamer.hp > 0
      #puts gamer_chance
      #puts "2. checkpoint <<<<<<< THE IF STATEMENT IS BROKEN"
      if gamer_chance < 81
        puts gamer_chance
        damage = rand(1..6)
          if damage == 6
            puts "Fatal blow!"
            cpu.hp = 0
            keep_fighting = false
          else
            puts "You did #{damage} damage"
            cpu.hp -= damage
            sleep 1
            puts "The beast lost #{damage} hp"
          end
         #end
      elsif gamer_chance > 80
          puts "#{gamer.name} with #{gamer.hp} HP, you missed the attack, looks like cake not only adds to the waistline but also to the arms..."
          #puts gamer_chance
          sleep 1
      end
    elsif gamer.hp == 0
      puts "place holder"
    end
  #end
    if cpu.hp > 0
      if cpu_chance < 61
        damage = rand (2..4)
        if damage == 4
          puts "Critical hit! The beast did #{damage} damage!"
          gamer.hp -= damage
        else
          puts "The foul beast did #{damage} damage"
          gamer.hp -= damage
        end
      #end
      else
        puts "The beast missed their attack! Quickly send this foul beast back to the abyss!"
      end
    end
  end
end

def flee(gamer)

  gamer.hp -= 2
    puts "You lost control of your bowels and fled with #{gamer.hp} HP and a trail of feces to follow"

end

puts "Welcome to your life #{gamer.name}, Let's start your life!"

puts "You encounter your first problem of the day,brush your teeth or eat breakfast?(Type 'first' or 'second')"

first_answer = gets.chomp.downcase
if first_answer == "first"
  puts "You go to the bathroom BUT SUDDENLY AN ALLIGATOR APPEARS FROM THE TOILET!"
  fight_question(gamer, cpu)
elsif first_answer == "second"
  puts "You go make breakfast BUT SUDDENLY A Racoon HAS YOUR BREAKFAST!"
  fight_question(gamer, cpu)
end


puts "Second problem now arises, what is for lunch? (Type in 'chicken' or 'fish')"

second_answer = gets.chomp.downcase
if second_answer == "chicken"
  puts "The chicken is still alive and challenges you to a duel!"
  fight_question(gamer, cpu)
elsif seond_answer == "fish"
  puts "The fish throws it's scales at your like a ninja star!"
  fight_question(gamer, cpu)
end

puts "Seriously #{gamer.name}! You've wasted a good amount of your time on a terminal game about real life..."
