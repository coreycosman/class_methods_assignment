class Zombie

@@horde = []
@@plague_level = 10
@@max_speed = 5
@@max_strength = 8
@@default_speed = 1
@@default_strength = 3


#class methods
#_____________________________________________
#create a zombie
def self.create(speed, strength)
zombie = Zombie.new(speed, strength)
@@horde << zombie
return zombie
end
# read horde
def self.horde_reader
  @@horde.count
end
#spawn random number of zombies - with random speed and strength, shovel to horde output how many zombies were spawned
def self.spawn
  rand(1..@@plague_level).times do
    create(rand(1..@@max_speed), rand(1..@@max_strength))
  end
end
# kills random number of zombies
def self.some_die_off
  rand(10).times do
    @@horde.delete(@@horde.sample)
  end
end
#increase plague level by random number

# plague level writer
def self.plague_level_writer(str)
    @@plague_level += str
end

def self.plague_level_reader
  @@plague_level
end

def self.increase_plague_level
    plague_level_writer(rand(3))
    plague_level_reader
end

def self.new_day
  rand(1..5).times do spawn end
  some_die_off
  increase_plague_level
  horde_reader
end





#instance methods
#___________________________________
def initialize(speed, strength)
  if speed > @@default_speed
     @speed = @@default_speed
  else
    @speed = speed
  end
  if strength > @@default_strength
    @strenth = @@default_strength
  else @strenth = strength
  end
end

def encounter
  outrun_zombie?
  survive_attack?
end
# checks if a person's randomly assigned speed is less than zombie instance speed
def outrun_zombie?
  person = rand(@@max_speed)
  if person > @speed
    puts "you escaped!"
  else
    puts "zombified!"
    Zombie.create(@@default_speed, @@default_strength)
  end
end
# determines whether person or zombie wins based on higher strength value
def survive_attack?
  person = rand(@@max_strength)
    if person < @speed
      puts "death by zombie!"
    end
end



end
