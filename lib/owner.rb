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
  
  def buy_fish
    
  end
  
end