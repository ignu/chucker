require "test_helper"

class AttackTest < ActiveSupport::TestCase
  test "it can belong to a creature and save when valid" do
    attack = build(:attack)
    attack.creature = build(:creature)
    attack.save
    attack.reload
    assert attack.creature.id.positive?
  end

  test "#roll_to_hit" do
    attack = build(:attack)
    assert attack.roll_to_hit.positive?
  end

  test "#target" do
    attack = build(:attack)
    attack.stub(:roll_to_hit, 12)
    attack.creature = build(:creature, ac: 11)
    # attack.target(creature)
  end
end
