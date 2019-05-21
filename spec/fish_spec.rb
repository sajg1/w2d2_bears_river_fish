require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")

class FishTest < MiniTest::Test
  def setup
    @fish_1 = Fish.new("trout_1")
  end

  def test_fish_name
    assert_equal("trout_1", @fish_1.fish_name)
  end

end
