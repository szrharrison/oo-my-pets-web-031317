class Owner
  # code goes here
  def initialize( name )
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    @@all << self
    @name = name
    @species = 'human'
  end
  attr_accessor :name, :pets
  attr_reader :species
  ###################################################
  @@all = []

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.length
  end
  ###################################################
  def say_species
    puts "I am a #{self.species}."
    "I am a #{self.species}."
  end

  def buy_fish( name )
    fish = Fish.new( name )
    self.pets[:fishes] << fish
    fish
  end

  def buy_dog( name )
    dog = Dog.new( name )
    self.pets[:dogs] << dog
    dog
  end

  def buy_cat( name )
    cat = Cat.new( name )
    self.pets[:cats] << cat
    cat
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end

  def list_pets
    cats = self.pets[:cats].length
    dogs = self.pets[:dogs].length
    fish = self.pets[:fishes].length
    puts "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
    "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

  def sell_pets
    self.pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = 'nervous'
      end
      pets.clear
    end
  end
end
