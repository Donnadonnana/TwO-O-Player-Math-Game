class Player

 attr_accessor :name, :lives
  
  def initialize(name)
    @name=name
    @lives=3
  end

  def lose_one_life
    @lives -=1
  end

  def to_s 
    @name.to_s
  end
end

