class Cat
  attr_accessor :mood
  attr_reader :name
  def initialize(name, owner, mood = "nervous")
    @owner = owner
    @name = name
    @mood = "nervous"
  end
end