require "test_helper"

class CreatureTest < ActiveSupport::TestCase
  test "attack" do
    creature = Creature.new
    assert creature
  end
end
