require "rails_helper"

describe Attack do
  describe "#create" do
    it "can create" do
      attack = build(:attack)
      attack.creature = build(:creature, name: "Kobold")
      attack.save
      attack.reload
      expect(attack.creature.name).to eq "Kobold"
    end
  end

  describe "#target" do
    it "returns true when attack is over ac" do
      attack = build(:attack)
      target_creature = build(:creature, ac: 10)
      expect(attack).to receive(:roll_to_hit).and_return(12)
      expect(attack).to receive(:roll_damage).and_return(2234)

      attack_result = attack.target(target_creature)

      expect(attack_result[:success]).to be true
      expect(attack_result[:damage]).to be 2234
    end
  end
end
