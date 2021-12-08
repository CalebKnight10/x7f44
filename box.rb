class Box

  attr_reader :shut_tiles, :number_of_tiles

  def initialize(number_of_tiles)
    @number_of_tiles = number_of_tiles
    @tiles = []
    @number_of_tiles.times do |i|
      @tiles << i + 1
    end
    @shut_tiles = []
  end

  def shut?
    @tiles.empty? && @shut_tiles.length == number_of_tiles
  end

  def can_flip_for?(value)
    false
  end

  def getTiles
    @tiles
  end

  def to_s
    "Box"
  end
  
end
