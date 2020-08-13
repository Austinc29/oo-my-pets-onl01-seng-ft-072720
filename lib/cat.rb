class Cat
  # code goes here

  attr_accessor :mood
  attr_reader :name, :owner 

    def initialize(name, owner)
      @name = name
      @mood = "nervous"
    end
    def self.all 
      self
    end 
end