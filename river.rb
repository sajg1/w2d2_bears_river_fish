
class River

  attr_reader :river_name

  def initialize(river_name)
    @river_name = river_name
    @fish = []
  end

  def fish_in_river()
    return @fish.count
  end

  def add_fish_to_river(fish)
    @fish << fish
  end

  def remove_fish(fish)
    index = @fish.index(fish)
    @fish.slice!(index, 1)
  end

end
