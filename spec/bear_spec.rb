require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")

class BearTest < MiniTest::Test
  def setup
    @bear_1 = Bear.new("Yogi", "Grizzly")
    @bear_2 = Bear.new("Burt", "Black")
    @bear_3 = Bear.new("Harley", "Polar")
  end

  def test_bear_name
    assert_equal("Yogi", @bear_1.bear_name)
  end

  def test_fish_in_stomach
    assert_equal(0, @bear_1.fish_in_stomach)
  end
end
