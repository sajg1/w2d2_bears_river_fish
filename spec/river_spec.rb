
require("minitest/autorun")
require("minitest/rg")
require_relative("../river")

class RiverTest < MiniTest::Test

  def setup
    @river_1 = River.new("Amazon")
  end

  def test_river_name
    assert_equal("Amazon", @river_1.river_name)
  end

  def test_fish_in_river
    assert_equal(0, @river_1.fish_in_river)
  end

  # def test_add_fish_to_river
  #   @river_1.add_fish_to_river(@fish_array)
  #   assert_equal()
  # end

end
