class Owner
  # code goes here
  attr_reader :name

  def initialize(name, species = human)
    @name = name
  end

end
