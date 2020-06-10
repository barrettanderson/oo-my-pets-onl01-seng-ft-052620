class Owner
  # code goes here
  attr_reader :name, :species

  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end

  def buy_cat
    # name = Cat.new(name)
  end
  #
  # def buy_dog(name)
  #   name = Dog.new(name)
  # end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
end
