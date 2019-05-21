require("minitest/autorun")
require("minitest/rg")
require_relative("../river")

class RiverTest < MiniTest::Test

  def setup
    @river_1 = River.new("Amazon")
  end

  def test_river_name
    assert_equal("Amazon", @river_1.name)
  end
  
end
