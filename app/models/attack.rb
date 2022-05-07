class Attack < ApplicationRecord
  belongs_to :creature, foreign_key: :target_creature_id

  def roll_to_hit
    attack_dice.roll
  end

  def roll_damage
    damage_dice.roll
  end

  def target(creature)
    attack = roll_to_hit

    {
      success: attack >= creature.ac,
      damage: roll_damage
    }
  end

  private

  def attack_dice
    @attack_dice ||= GamesDice.create(dice_roll)
  end

  def damage_dice
    @damage_dice ||= GamesDice.create(dice_roll)
  end
end
