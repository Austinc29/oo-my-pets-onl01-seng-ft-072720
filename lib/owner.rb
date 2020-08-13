class Owner

  attr_accessor :cats, :dogs
    attr_reader :species, :name	  attr_reader :species, :name


    @@all = []	  @@all = []


    def initialize(name)	  def initialize(name)
        @name = name	    @name = name
        @species = "human"	    @species = "human"
        @@all << self	    @@all << self
    end	    @cats = []

    @dogs = []
    def self.all 	  end
      @@all 	
    end	  def self.all

    @@all
    def self.count	  end
        self.all.length	
    end	  def self.count

    self.all.length
    def say_species	  end
        "I am a #{self.species}."	
    end	  def say_species

    "I am a #{self.species}."
    def buy_cat(name)	  end
        Cat.new(name, self)	
    end	  def buy_cat(name)

    Cat.new(name, self)
    def buy_dog(name)	  end
        Dog.new(name, self)	
  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
   self.dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    self.cats.each do |cat|
      self.cats.delete(cat)
      cat.owner = nil
      cat.mood = "nervous"
    end	    end

    self.dogs.each do |dog|
    def cats	      self.dogs.delete(dog)
        Cat.all.select do |cat|	      dog.owner = nil
            cat.owner == self	      dog.mood = "nervous"