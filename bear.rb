class Bear

  attr_reader :bear_name, :bear_type

  def initialize(bear_name, bear_type)
    @bear_name = bear_name
    @bear_type = bear_type
    @fish_in_stomach = []
  end

  def fish_in_stomach
    return @fish_in_stomach.count
  end

  def eat_fish(river, fish)
    if river.fish_in_river >= 1
      @fish_in_stomach << fish
    end
  end

end
