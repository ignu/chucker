class Attack < ApplicationRecord
  belongs_to :creature, foreign_key: :target_creature_id

  def roll_to_hit
    attack_dice.roll
  end

  def attack_dice
    @attack_dice ||= GamesDice.create(dice_roll)
  end

  def target(creatue)
    attack = roll_to_hit
  end
end
