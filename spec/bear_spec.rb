require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class BearTest < MiniTest::Test
  def setup

    @bear_1 = Bear.new("Yogi", "Grizzly")
    @bear_2 = Bear.new("Burt", "Black")
    @bear_3 = Bear.new("Harley", "Polar")
    @fish_1 = Fish.new("trout_1")
    @fish_2 = Fish.new("trout_2")
    @fish_3 = Fish.new("trout_3")
    @fish_4 = Fish.new("trout_4")
    @fish_5 = Fish.new("trout_5")
    @river_1 = River.new("Amazon")
  end

  def test_bear_name
    assert_equal("Yogi", @bear_1.bear_name)
  end

  def test_fish_in_stomach
    assert_equal(0, @bear_1.fish_in_stomach)
  end

  def test_eat_fish()
    @river_1.add_fish_to_river(@fish_1)
    @bear_1.eat_fish(@river_1, @fish_1)
    assert_equal(1, @bear_1.fish_in_stomach)
  end

end
