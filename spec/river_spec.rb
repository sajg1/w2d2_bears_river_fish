
require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")

class RiverTest < MiniTest::Test

  def setup
    @fish_1 = Fish.new("trout_1")
    @fish_2 = Fish.new("trout_2")
    @fish_3 = Fish.new("trout_3")
    @fish_4 = Fish.new("trout_4")
    @fish_5 = Fish.new("trout_5")
    @river_1 = River.new("Amazon")
  end

  def test_river_name
    assert_equal("Amazon", @river_1.river_name)
  end

  def test_fish_in_river
    assert_equal(0, @river_1.fish_in_river)
  end

  def test_add_fish_to_river
    @river_1.add_fish_to_river(@fish_1)
    assert_equal(1, @river_1.fish_in_river)
  end

  def test_add_fish_to_river__add_5
    @river_1.add_fish_to_river(@fish_1)
    @river_1.add_fish_to_river(@fish_2)
    @river_1.add_fish_to_river(@fish_3)
    @river_1.add_fish_to_river(@fish_4)
    @river_1.add_fish_to_river(@fish_5)
    assert_equal(5, @river_1.fish_in_river)
  end

  def test_remove_fish
    @river_1.add_fish_to_river(@fish_1)
    @river_1.add_fish_to_river(@fish_2)
    @river_1.remove_fish(@fish_1)
    assert_equal(1, @river_1.fish_in_river)
  end


end
