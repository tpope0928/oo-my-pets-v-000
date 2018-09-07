class Owner
  OWNERS = []
  
  attr_accessor :name, :pets
  attr_reader :species
  
  def initialize(species)
    @species = species
    OWNERS << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def self.all
    OWNERS
  end
  
  def self.reset_all
    OWNERS.clear
  end
  
  def self.count
    OWNERS.size
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def plays_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  
  def sell_pets
    
  end
  
  def list_pets
    
  end

end