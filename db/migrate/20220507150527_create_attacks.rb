class CreateAttacks < ActiveRecord::Migration[7.0]
  def change
    create_table :attacks do |t|
      t.string :dice_roll
      t.string :damage_roll
      t.integer :target_creature_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
