require "test_helper"

class AttackTest < ActiveSupport::TestCase
  test "it can belong to a creature and save when valid" do
    attack = build(:attack)
    attack.creature = build(:creature)
    attack.save
    attack.reload
    assert attack.creature.id.positive?
  end
end
