FactoryBot.define do
  factory :creature do
    title { "Kobold" }
    ac { 11 }
    hp { 3 }
  end

  factory :attack do
    dice_roll { "1d20 + 3" }
    damage_roll { "1d4 + 3" }
    name { "spear" }
  end
end
