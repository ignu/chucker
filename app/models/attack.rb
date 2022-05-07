class Attack < ApplicationRecord
  belongs_to :creature, foreign_key: :target_creature_id
end
